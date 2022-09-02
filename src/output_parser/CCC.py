from sarif_om import *

from src.output_parser.Parser import Parser
from src.output_parser.SarifHolder import isNotDuplicateRule, parseRule, parseResult, \
    parseArtifact, parseLogicalLocation, isNotDuplicateLogicalLocation


class CCC(Parser):
    def __init__(self):
        pass

    def parse_location(self, coded_location):
        index = coded_location.rfind(' ')

        #print(f"coded_location: {coded_location}")

        file = coded_location[:index].strip()
        region = coded_location[index:].strip()

        #print(f"Region: {region}")

        start,end = region.split('-')
        start_line,start_column = start.strip().split(':')
        end_line,end_column = end.strip().split(':')

        return {
            'file': file,
            'region': {
                'start_line': start_line,
                'start_column': start_column,
                'end_line': end_line,
                'end_column': end_column
            }
        }

    """
    Sample output:

    Nr. Files: 1
    File: Empty translation
    File: ../../../../../cpg-solidity/src/test/resources/examples/
    - Reentrancy Vulnerability, example3.sol 21:31-21:48
    - Reentrancy Vulnerability, DoWhileStatement.sol 21:9-21:23
    - Reentrancy Vulnerability, WhileStatement.sol 22:9-22:23
    - Reentrancy Vulnerability, Reentrancy.sol 43:25-43:56
    - Reentrancy Vulnerability, Reentrancy2.sol 18:10-18:42
    - Missing Access Control to Selfdestruct, SelfDestruct.sol 16:3-16:24
    - Missing Check of Return Value from external Call, Revert.sol 21:9-21:62
    """
    def parse(self, str_output):
        output = []
        current_contract = None

        lines = str_output.splitlines()
        for line in lines:
            if line.startswith("File:"):
                if current_contract is not None:
                    output.append(current_contract)
                
                current_contract = {
                    'file': line[5:].strip(), # removes "File:"
                    'errors': []
                }
            elif current_contract is not None:
                if line.startswith('- '):
                    # parse each line
                    msg = line[2:].strip() # removes "- "
                    #print(f"msg: {msg}")
                    vulnerability, coded_location = msg.split(", ", 1)
                    vulnerability = vulnerability.lower().replace(' ', '_').strip()

                    location = self.parse_location(coded_location.strip())

                    current_contract["errors"].append({
                        'vulnerability': vulnerability,
                        'location': location
                    })
        
        if current_contract is not None:
            output.append(current_contract)

        return output

    # TODO implement conversion from stdout to sarif
    def parseSarif(self, output_results, file_path_in_repo):
        resultsList = []
        rulesList = []

        print("parseSarif")

        for analysis in output_results["analysis"]:
            for result in analysis["errors"]:
                rule = parseRule(tool="ccc", vulnerability=result["vulnerability"])
                result = parseResult(tool="ccc", 
                                    vulnerability=result["vulnerability"], 
                                    level="warning", 
                                    uri=file_path_in_repo, 
                                    line=result["location"]["region"]["start_line"], 
                                    column=result["location"]["region"]["start_column"], 
                                    end_line=result["location"]["region"]["end_line"])

                resultsList.append(result)

                if isNotDuplicateRule(rule, rulesList):
                    rulesList.append(rule)
            """
            logicalLocation = parseLogicalLocation(name=analysis["name"])

            if isNotDuplicateLogicalLocation(logicalLocation, logicalLocationsList):
                logicalLocationsList.append(logicalLocation)
            """
        artifact = parseArtifact(uri=file_path_in_repo)

        tool = Tool(driver=ToolComponent(name="ccc", version="1.0", rules=rulesList,
                                         information_uri="https://github.com/",
                                         full_description=MultiformatMessageString(
                                             text="CPG Contract Checker. Developed by Fraunhofer AISEC & Université du Luxembourg.")))

        #run = Run(tool=tool, artifacts=[artifact], logical_locations=logicalLocationsList, results=resultsList)
        run = Run(tool=tool, artifacts=[artifact], results=resultsList)

        return run
