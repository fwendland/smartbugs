python3.8 smartBugs.py -d access_control -t honeybadger --skip-existing --execution-name curated --processes 112 --output-version v1
python3.8 smartBugs.py -d arithmetic -t honeybadger --skip-existing --execution-name curated --processes 112 --output-version v1
python3.8 smartBugs.py -d bad_randomness -t honeybadger --skip-existing --execution-name curated --processes 112 --output-version v1
python3.8 smartBugs.py -d denial_of_service -t honeybadger --skip-existing --execution-name curated --processes 112 --output-version v1
python3.8 smartBugs.py -d front_running -t honeybadger --skip-existing --execution-name curated --processes 112 --output-version v1
python3.8 smartBugs.py -d reentrancy -t honeybadger --skip-existing --execution-name curated --processes 112 --output-version v1
python3.8 smartBugs.py -d short_addresses -t honeybadger --skip-existing --execution-name curated --processes 112 --output-version v1
python3.8 smartBugs.py -d time_manipulation -t honeybadger --skip-existing --execution-name curated --processes 112 --output-version v1
python3.8 smartBugs.py -d unchecked_ll_calls -t honeybadger --skip-existing --execution-name curated --processes 112 --output-version v1
docker rmi -f christoftorres/honeybadger

python3.8 smartBugs.py -d access_control -t maian --skip-existing --execution-name curated --processes 112 --output-version v1
python3.8 smartBugs.py -d arithmetic -t maian --skip-existing --execution-name curated --processes 112 --output-version v1
python3.8 smartBugs.py -d bad_randomness -t maian --skip-existing --execution-name curated --processes 112 --output-version v1
python3.8 smartBugs.py -d denial_of_service -t maian --skip-existing --execution-name curated --processes 112 --output-version v1
python3.8 smartBugs.py -d front_running -t maian --skip-existing --execution-name curated --processes 112 --output-version v1
python3.8 smartBugs.py -d reentrancy -t maian --skip-existing --execution-name curated --processes 112 --output-version v1
python3.8 smartBugs.py -d short_addresses -t maian --skip-existing --execution-name curated --processes 112 --output-version v1
python3.8 smartBugs.py -d time_manipulation -t maian --skip-existing --execution-name curated --processes 112 --output-version v1
python3.8 smartBugs.py -d unchecked_ll_calls -t maian --skip-existing --execution-name curated --processes 112 --output-version v1
docker rmi -f smartbugs/maian:latest

python3.8 smartBugs.py -d access_control -t manticore --skip-existing --execution-name curated --processes 112 --output-version v1
python3.8 smartBugs.py -d arithmetic -t manticore --skip-existing --execution-name curated --processes 112 --output-version v1
python3.8 smartBugs.py -d bad_randomness -t manticore --skip-existing --execution-name curated --processes 112 --output-version v1
python3.8 smartBugs.py -d denial_of_service -t manticore --skip-existing --execution-name curated --processes 112 --output-version v1
python3.8 smartBugs.py -d front_running -t manticore --skip-existing --execution-name curated --processes 112 --output-version v1
python3.8 smartBugs.py -d reentrancy -t manticore --skip-existing --execution-name curated --processes 112 --output-version v1
python3.8 smartBugs.py -d short_addresses -t manticore --skip-existing --execution-name curated --processes 112 --output-version v1
python3.8 smartBugs.py -d time_manipulation -t manticore --skip-existing --execution-name curated --processes 112 --output-version v1
python3.8 smartBugs.py -d unchecked_ll_calls -t manticore --skip-existing --execution-name curated --processes 112 --output-version v1
docker rmi -f smartbugs/manticore:0.3.7

python3.8 smartBugs.py -d access_control -t mythril --skip-existing --execution-name curated --processes 112 --output-version v1
python3.8 smartBugs.py -d arithmetic -t mythril --skip-existing --execution-name curated --processes 112 --output-version v1
python3.8 smartBugs.py -d bad_randomness -t mythril --skip-existing --execution-name curated --processes 112 --output-version v1
python3.8 smartBugs.py -d denial_of_service -t mythril --skip-existing --execution-name curated --processes 112 --output-version v1
python3.8 smartBugs.py -d front_running -t mythril --skip-existing --execution-name curated --processes 112 --output-version v1
python3.8 smartBugs.py -d reentrancy -t mythril --skip-existing --execution-name curated --processes 112 --output-version v1
python3.8 smartBugs.py -d short_addresses -t mythril --skip-existing --execution-name curated --processes 112 --output-version v1
python3.8 smartBugs.py -d time_manipulation -t mythril --skip-existing --execution-name curated --processes 112 --output-version v1
python3.8 smartBugs.py -d unchecked_ll_calls -t mythril --skip-existing --execution-name curated --processes 112 --output-version v1
docker rmi -f qspprotocol/mythril-usolc

python3.8 smartBugs.py -d access_control -t osiris --skip-existing --execution-name curated --processes 112 --output-version v1
python3.8 smartBugs.py -d arithmetic -t osiris --skip-existing --execution-name curated --processes 112 --output-version v1
python3.8 smartBugs.py -d bad_randomness -t osiris --skip-existing --execution-name curated --processes 112 --output-version v1
python3.8 smartBugs.py -d denial_of_service -t osiris --skip-existing --execution-name curated --processes 112 --output-version v1
python3.8 smartBugs.py -d front_running -t osiris --skip-existing --execution-name curated --processes 112 --output-version v1
python3.8 smartBugs.py -d reentrancy -t osiris --skip-existing --execution-name curated --processes 112 --output-version v1
python3.8 smartBugs.py -d short_addresses -t osiris --skip-existing --execution-name curated --processes 112 --output-version v1
python3.8 smartBugs.py -d time_manipulation -t osiris --skip-existing --execution-name curated --processes 112 --output-version v1
python3.8 smartBugs.py -d unchecked_ll_calls -t osiris --skip-existing --execution-name curated --processes 112 --output-version v1
docker rmi -f christoftorres/osiris

python3.8 smartBugs.py -d access_control -t oyente --skip-existing --execution-name curated --processes 112 --output-version v1
python3.8 smartBugs.py -d arithmetic -t oyente --skip-existing --execution-name curated --processes 112 --output-version v1
python3.8 smartBugs.py -d bad_randomness -t oyente --skip-existing --execution-name curated --processes 112 --output-version v1
python3.8 smartBugs.py -d denial_of_service -t oyente --skip-existing --execution-name curated --processes 112 --output-version v1
python3.8 smartBugs.py -d front_running -t oyente --skip-existing --execution-name curated --processes 112 --output-version v1
python3.8 smartBugs.py -d reentrancy -t oyente --skip-existing --execution-name curated --processes 112 --output-version v1
python3.8 smartBugs.py -d short_addresses -t oyente --skip-existing --execution-name curated --processes 112 --output-version v1
python3.8 smartBugs.py -d time_manipulation -t oyente --skip-existing --execution-name curated --processes 112 --output-version v1
python3.8 smartBugs.py -d unchecked_ll_calls -t oyente --skip-existing --execution-name curated --processes 112 --output-version v1
docker rmi -f qspprotocol/oyente-0.4.25

python3.8 smartBugs.py -d access_control -t securify --skip-existing --execution-name curated --processes 112 --output-version v1
python3.8 smartBugs.py -d arithmetic -t securify --skip-existing --execution-name curated --processes 112 --output-version v1
python3.8 smartBugs.py -d bad_randomness -t securify --skip-existing --execution-name curated --processes 112 --output-version v1
python3.8 smartBugs.py -d denial_of_service -t securify --skip-existing --execution-name curated --processes 112 --output-version v1
python3.8 smartBugs.py -d front_running -t securify --skip-existing --execution-name curated --processes 112 --output-version v1
python3.8 smartBugs.py -d reentrancy -t securify --skip-existing --execution-name curated --processes 112 --output-version v1
python3.8 smartBugs.py -d short_addresses -t securify --skip-existing --execution-name curated --processes 112 --output-version v1
python3.8 smartBugs.py -d time_manipulation -t securify --skip-existing --execution-name curated --processes 112 --output-version v1
python3.8 smartBugs.py -d unchecked_ll_calls -t securify --skip-existing --execution-name curated --processes 112 --output-version v1
docker rmi -f qspprotocol/securify-usolc

python3.8 smartBugs.py -d access_control -t slither --skip-existing --execution-name curated --processes 112 --output-version v1
python3.8 smartBugs.py -d arithmetic -t slither --skip-existing --execution-name curated --processes 112 --output-version v1
python3.8 smartBugs.py -d bad_randomness -t slither --skip-existing --execution-name curated --processes 112 --output-version v1
python3.8 smartBugs.py -d denial_of_service -t slither --skip-existing --execution-name curated --processes 112 --output-version v1
python3.8 smartBugs.py -d front_running -t slither --skip-existing --execution-name curated --processes 112 --output-version v1
python3.8 smartBugs.py -d reentrancy -t slither --skip-existing --execution-name curated --processes 112 --output-version v1
python3.8 smartBugs.py -d short_addresses -t slither --skip-existing --execution-name curated --processes 112 --output-version v1
python3.8 smartBugs.py -d time_manipulation -t slither --skip-existing --execution-name curated --processes 112 --output-version v1
python3.8 smartBugs.py -d unchecked_ll_calls -t slither --skip-existing --execution-name curated --processes 112 --output-version v1
docker rmi -f trailofbits/slither

python3.8 smartBugs.py -d access_control -t smartcheck --skip-existing --execution-name curated --processes 112 --output-version v1
python3.8 smartBugs.py -d arithmetic -t smartcheck --skip-existing --execution-name curated --processes 112 --output-version v1
python3.8 smartBugs.py -d bad_randomness -t smartcheck --skip-existing --execution-name curated --processes 112 --output-version v1
python3.8 smartBugs.py -d denial_of_service -t smartcheck --skip-existing --execution-name curated --processes 112 --output-version v1
python3.8 smartBugs.py -d front_running -t smartcheck --skip-existing --execution-name curated --processes 112 --output-version v1
python3.8 smartBugs.py -d reentrancy -t smartcheck --skip-existing --execution-name curated --processes 112 --output-version v1
python3.8 smartBugs.py -d short_addresses -t smartcheck --skip-existing --execution-name curated --processes 112 --output-version v1
python3.8 smartBugs.py -d time_manipulation -t smartcheck --skip-existing --execution-name curated --processes 112 --output-version v1
python3.8 smartBugs.py -d unchecked_ll_calls -t smartcheck --skip-existing --execution-name curated --processes 112 --output-version v1
docker rmi -f smartbugs/smartcheck

python3.8 smartBugs.py -d access_control -t solhint --skip-existing --execution-name curated --processes 112 --output-version v1
python3.8 smartBugs.py -d arithmetic -t solhint --skip-existing --execution-name curated --processes 112 --output-version v1
python3.8 smartBugs.py -d bad_randomness -t solhint --skip-existing --execution-name curated --processes 112 --output-version v1
python3.8 smartBugs.py -d denial_of_service -t solhint --skip-existing --execution-name curated --processes 112 --output-version v1
python3.8 smartBugs.py -d front_running -t solhint --skip-existing --execution-name curated --processes 112 --output-version v1
python3.8 smartBugs.py -d reentrancy -t solhint --skip-existing --execution-name curated --processes 112 --output-version v1
python3.8 smartBugs.py -d short_addresses -t solhint --skip-existing --execution-name curated --processes 112 --output-version v1
python3.8 smartBugs.py -d time_manipulation -t solhint --skip-existing --execution-name curated --processes 112 --output-version v1
python3.8 smartBugs.py -d unchecked_ll_calls -t solhint --skip-existing --execution-name curated --processes 112 --output-version v1
docker rmi -f smartbugs/solhint

python3.8 smartBugs.py -d access_control -t conkas --skip-existing --execution-name curated --processes 112 --output-version v1
python3.8 smartBugs.py -d arithmetic -t conkas --skip-existing --execution-name curated --processes 112 --output-version v1
python3.8 smartBugs.py -d bad_randomness -t conkas --skip-existing --execution-name curated --processes 112 --output-version v1
python3.8 smartBugs.py -d denial_of_service -t conkas --skip-existing --execution-name curated --processes 112 --output-version v1
python3.8 smartBugs.py -d front_running -t conkas --skip-existing --execution-name curated --processes 112 --output-version v1
python3.8 smartBugs.py -d reentrancy -t conkas --skip-existing --execution-name curated --processes 112 --output-version v1
python3.8 smartBugs.py -d short_addresses -t conkas --skip-existing --execution-name curated --processes 112 --output-version v1
python3.8 smartBugs.py -d time_manipulation -t conkas --skip-existing --execution-name curated --processes 112 --output-version v1
python3.8 smartBugs.py -d unchecked_ll_calls -t conkas --skip-existing --execution-name curated --processes 112 --output-version v1
docker rmi -f nveloso/conkas
