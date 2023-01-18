import subprocess
import sys
import logging

logging.basicConfig(level=logging.DEBUG)

KEYSTORE_NAME = "temp_user_for_witness_check"
ALIAS = "trans"
WITNESS_OOBI = "http://127.0.0.1:5643/oobi/BLskRTInXnMxWaGqcpSyMgo0nYbalW99cGZESrz3zapM/controller"
COMMAND_TIMEOUT = 10 # Sec



def run_command(command):
  try:
    logging.debug(f"Running Command: {command}")
    res = subprocess.run(command, capture_output=True,timeout=COMMAND_TIMEOUT)
    logging.debug(f">>{res}\n\n")
    
    if res.returncode != 0 and res.returncode!=255:
      raise Exception(command)
    
    st = res.stdout.decode("utf-8")

    logging.info(f"{st}\n----------------------------------------------\n\n")
    return st
  except subprocess.TimeoutExpired as err:
    # logging.critical(f"Timed Out while running command: '{command}'")
    logging.critical(err)
    sys.exit()
  except Exception as err:
    logging.critical(f"Failed while running command: '{err}'")
    sys.exit()



def create_keystore():

  # Check if keystore exist
  res = run_command(["kli", "list", "--name", KEYSTORE_NAME])

  if ALIAS not in res:
    run_command(["kli", "init", "--name", KEYSTORE_NAME, "--nopasscode"])

    run_command(["kli", "oobi", "resolve", "--name", KEYSTORE_NAME, "--oobi-alias", "wan", "--oobi", WITNESS_OOBI])

    run_command(["kli", "incept", "--name", KEYSTORE_NAME, "--alias", ALIAS, "--file", "/keripy/scripts/my/transferable-sample.json"])
    # /keripy/scripts/demo/data/trans-wits-sample.json
    # /keripy/scripts/my/transferable-sample.json



def rotate_key():
  res = run_command(["kli", "rotate", "--name", KEYSTORE_NAME, "--alias", ALIAS])



create_keystore()
rotate_key()
