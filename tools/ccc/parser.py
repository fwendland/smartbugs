import sb.parse_utils # for sb.parse_utils.init(...)
import io, tarfile    # if the output parameter is used

VERSION: str = ""
"""identify the version of the parser, e.g. '2022/08/15'"""

FINDINGS: set[str]  = {
    "Reentrancy Vulnerability",
    "No whitelisting of calls proxied to another contract",
    "Non constructor function insufficiently restricts writes to to access control variables",
    "Missing Access Control to Selfdestruct",
    "Missing Check of Return Value from external Call",
    "Message padding vulnerability found at ether transfer.",
    "Access control enforcement through transactions origin is vulnerable to phishing attacks",
    "Result of expression can be over- or under-flown by external entity",
    "Write to uninitialized variable might unintentionally write to storage.",
    "Operation may lead to a denial of essential contract function.",
    "Miners can manipulate program execution by selecting when to include the timestamp",
    "A miner can use others input to gain a benefit himself.",
    "A deterministic or predictable value may be used as bad random number."
}
"""set of strings: all possible findings, of which 'findings' below will be a subset"""


def parse(exit_code, log, output):
    """
    Analyse the result of the tool tun.

    :param exit_code: int|None, exit code of Docker run (None=timeout)
    :param log: list[str], stdout/stderr of Docker run
    :param output: bytes, tar archive of files generated by the tool (if specified in config.yaml)

    :return: tuple[findings: list[dict], infos: set[str], errors: set[str], fails: set[str]]
      findings identifies the major observations of the tool,
      infos contains any messages generated by the tool that might be of interest,
      errors lists the error messages deliberately generated by the tool,
      fails lists exceptions and other events not expected by the tool,
      analysis contains any analysis results worth reporting
    """

    findings, infos = [], set()
    errors, fails = sb.parse_utils.errors_fails(exit_code, log)
    # Parses the output for common Python/Java/shell exceptions (returned in 'fails')

    current_contract = None

    for line in log:
        # analyse stdout/stderr of the Docker run
        if line.startswith("File:"):
            current_contract = line[5:].strip()
        elif current_contract is not None:
            if line.startswith('- '):
                # parse each line
                msg = line[2:].strip() # removes "- "
                vulnerability, coded_location = msg.split(", ", 1)
                location = parse_location(coded_location.strip())

                finding = {
                    'name': vulnerability,
                    'filename': current_contract,
                    'line': location['region']['start_line'],
                    'line_end': location['region']['end_line'],
                    'column': location['region']['start_column'],
                    'column_end': location['region']['end_column'],
                }

                findings.append(finding)

    return findings, infos, errors, fails
    """
    findings is a list of issues. Each issue is a dict with the following fields.
    name: str
        mandatory. Identifies the type of issue
    filename: str
        optional. Path of file processed. As this is the path within
        the docker image, it will be replaced by the external filename,
        after parsing.
    contract: str
        optional. Name of contract within the file (for source code)
    function: str
        optional. Name/header/signature of function containing the issue
    line: int
        optional. Line number of issue in source code, starting with 1
    column: int
        optional. Column of issue in source code, starting with 1
    line_end: int
        optional. Last line of the source code, where issue occurs.
    column_end: int
        optional. Last column of the source code, where issue occurs.
    address: int
        optional. Address of instruction in the bytecode, where issue occurs, starting with 0
    address_end: int
        optional. Address of last instruction in the bytecode, where issue occurs, starting with 0
    exploit: Any
        optional. Information on a potential exploit, e.g. a list of transactions
    level: str
        optional. type of issue, e.g. recommendation, warning, error
    severity: str
        optional. Severity of issue, e.g. low, medium, high
    message: str
        optional. Description of the issue

    If missing, the fields severity, classification, method, descr_short,
    descr_long will be taken from the file issues.yaml in the tools
    directory (if it exists), with "name" serving as the key.
    """


def parse_location(coded_location):
    index = coded_location.rfind(' ')

    file = coded_location[:index].strip()
    region = coded_location[index:].strip()

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
