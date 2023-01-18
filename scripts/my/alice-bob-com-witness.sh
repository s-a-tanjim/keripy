#!/bin/bash

# Environment Variables
export KERI_SCRIPT_DIR="$(pwd)/scripts/"
export KERI_DEMO_SCRIPT_DIR="$(pwd)/scripts/demo"
export KERI_MY_SCRIPT_DIR="$(pwd)/scripts/my"

# Clear DB
rm -rf /usr/local/var/keri/*


# Create Witness
kli init --name witness --nopasscode --config-dir ${KERI_SCRIPT_DIR} --config-file witness --salt 0ADp9FO-6dwMZucGwfK57hlB
kli incept --name witness --alias witness --config ${KERI_SCRIPT_DIR} --file ${KERI_DEMO_SCRIPT_DIR}/data/wil-witness-sample.json
# Prefix  BBqXhZMv0CqoTY-TRZoqntDMRoe9PAG-g5FSEruvfYys
#        Public key 1:  BBqXhZMv0CqoTY-TRZoqntDMRoe9PAG-g5FSEruvfYys
kli witness start --name witness --alias witness &
# Witness witness : BBqXhZMv0CqoTY-TRZoqntDMRoe9PAG-g5FSEruvfYys


# Create Alice
kli init --name alice --nopasscode --salt 0ADQgshGQWlfM-JpMuMa3jpF
kli oobi resolve --name alice --oobi-alias wan --oobi http://127.0.0.1:5631/oobi/BBqXhZMv0CqoTY-TRZoqntDMRoe9PAG-g5FSEruvfYys/controller
kli incept --name alice --alias trans --file ${KERI_MY_SCRIPT_DIR}/transferable-sample.json 
# Prefix  EFxANU_EI9wAUVPJRFz8qXUm9ub34vFxmSqY6OEuiI_T
#        Public key 1:  DOkWIpXxTUkVwzqmMi0CG_hqJAIFV0Ma6D7h-xyIE138
# kli rotate --name alice --alias trans --witness-add BBqXhZMv0CqoTY-TRZoqntDMRoe9PAG-g5FSEruvfYys



# Create Bob
kli init --name bob --nopasscode --salt 0AA3bLIpGOX9Iu8NtzjzwrTr
kli oobi resolve --name bob --oobi-alias wan --oobi http://127.0.0.1:5631/oobi/BBqXhZMv0CqoTY-TRZoqntDMRoe9PAG-g5FSEruvfYys/controller
kli incept --name bob --alias trans --file ${KERI_MY_SCRIPT_DIR}/transferable-sample.json 
# Prefix  EHvmfCeNAEdF8JJvtA_7eg-xYPd1ehtlkn1dvOK5KIYW
#        Public key 1:  DKk78_2oB9gSenvPyqGpVENrmIoXOAzLxMSkgNXchkzF


# Generate OOBI for Alice
kli oobi generate --name alice --role witness
# http://127.0.0.1:5631/oobi/EFxANU_EI9wAUVPJRFz8qXUm9ub34vFxmSqY6OEuiI_T/witness


# Generate OOBI for Bob
kli oobi generate --name bob --role witness
# http://127.0.0.1:5631/oobi/EHvmfCeNAEdF8JJvtA_7eg-xYPd1ehtlkn1dvOK5KIYW/witness

# Resolve OOBI
kli oobi resolve --name alice --oobi-alias bob --oobi http://127.0.0.1:5631/oobi/EHvmfCeNAEdF8JJvtA_7eg-xYPd1ehtlkn1dvOK5KIYW/witness

kli oobi resolve --name bob --oobi-alias alice --oobi http://127.0.0.1:5631/oobi/EFxANU_EI9wAUVPJRFz8qXUm9ub34vFxmSqY6OEuiI_T/witness

# kli contacts list --name alice



# Challenge from Alice to Bob (Bob will accept the challenge & Bob will be authenticated in Alice's contacts)
export WORDS_BY_ALICE=$(kli challenge generate --out json)

# kli challenge verify --generate --out string --name alice --alias trans --signer bob
kli challenge verify --words "${WORDS_BY_ALICE}" --name alice --alias trans --signer bob

kli challenge respond --name bob --alias trans --words "${WORDS_BY_ALICE}" --recipient alice

kli contacts list --name alice | jq '"Alias: "+.alias+"\n\rAID:   "+.id+"\n\rAuthenticated: "+ if .challenges | length > 0 then "True" else "False" end +"\n\r"' --raw-output


# Change Bob keypair
kli rotate --name bob --alias trans # But still bob will be authenticated to alice


# Signing data by bob and verify from alice

kli sign --name bob --alias trans --text @./scripts/my/data.json 
# 1. AAA3R-4t19nNNvdRTzR8EvS3LXYsKouFaHAaFZC92uk1O5Cmzi351ZOgKR9ez-wHyxx_ltQObd6-BRlJCCJM7P4G

# kli verify --name alice --alias trans --prefix EHvmfCeNAEdF8JJvtA_7eg-xYPd1ehtlkn1dvOK5KIYW --text @./scripts/my/data.json --signature AAA3R-4t19nNNvdRTzR8EvS3LXYsKouFaHAaFZC92uk1O5Cmzi351ZOgKR9ez-wHyxx_ltQObd6-BRlJCCJM7P4G

kli verify --name bob --alias trans --prefix EHvmfCeNAEdF8JJvtA_7eg-xYPd1ehtlkn1dvOK5KIYW --text @./scripts/my/data.json --signature AAA3R-4t19nNNvdRTzR8EvS3LXYsKouFaHAaFZC92uk1O5Cmzi351ZOgKR9ez-wHyxx_ltQObd6-BRlJCCJM7P4G