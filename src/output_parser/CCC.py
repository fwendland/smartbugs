from sarif_om import *

from src.output_parser.Parser import Parser
from src.output_parser.SarifHolder import isNotDuplicateRule, parseRule, parseResult, \
    parseArtifact, parseLogicalLocation, isNotDuplicateLogicalLocation


class CCC(Parser):
    def __init__(self):
        pass

    def parse(self, str_output):
        output = []
        current_contract = None
        current_error = None
        lines = str_output.splitlines()
        for line in lines:
            # TODO should contain:
            #   - name of contract
            #   - problem
            #   - location
            print(line)
        return output

    # TODO implement conversion from stdout to sarif
    def parseSarif(self, output_results, file_path_in_repo):
        resultsList = []
        logicalLocationsList = []
        rulesList = []

        for analysis in output_results["analysis"]:
            for result in analysis["errors"]:
                rule = parseRule(tool="osiris", vulnerability=result["message"])
                result = parseResult(tool="osiris", vulnerability=result["message"], level="warning",
                                     uri=file_path_in_repo, line=result["line"], column=result["column"])

                resultsList.append(result)

                if isNotDuplicateRule(rule, rulesList):
                    rulesList.append(rule)

            logicalLocation = parseLogicalLocation(name=analysis["name"])

            if isNotDuplicateLogicalLocation(logicalLocation, logicalLocationsList):
                logicalLocationsList.append(logicalLocation)

        artifact = parseArtifact(uri=file_path_in_repo)

        tool = Tool(driver=ToolComponent(name="CCC", version="1.0", rules=rulesList,
                                         information_uri="https://github.com/",
                                         full_description=MultiformatMessageString(
                                             text="CPG Contract Checker. Developed by Fraunhofer AISEC & Université du Luxembourg.")))

        run = Run(tool=tool, artifacts=[artifact], logical_locations=logicalLocationsList, results=resultsList)

        return run
