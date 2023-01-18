# Clear DB
```sh
$ rm -rf /usr/local/var/keri/*
```

# Temp
```sh
# Check used port
$ lsof -i -P -n | grep LISTEN
```

# Generate password
```sh
$ kli passcode generate   # Encrypt the keystore
$ kli salt                # Creates deterministic key chain for the keys, to recover keys
```


# kli init
> CREATE DATABASE AND KEYSTORE
```sh
kli init 
  --name <name-of-the-keystore>     # name-of-the-keystore
  --base "${KERI_TEMP_DIR}" 
  --nopasscode                      # For No password
  --salt <salt>                     # Salt to generate same type of ID
  --config-dir <config dir path>    # ./scripts   : ref to: ./scripts/keri/cf
  --config-file <config file name>  #  file name inside ./scripts/keri/cf
```

### Output:
```
KERI Keystore created at: /usr/local/var/keri/ks/testing   
KERI Database created at: /usr/local/var/keri/db/testing
KERI Credential Store created at: /usr/local/var/keri/reg/testing
```


# kli incept

> Create identifier
```sh
kli incept 
  --name <name-of-the-keystore>       # name-of-the-keystore
  --base "${KERI_TEMP_DIR}" 
  --passcode <passcode>               # If password is used while creating DB
  --alias <Name of the alias>         # ex: non-trans, trans
  --file ${KERI_DEMO_SCRIPT_DIR}/data/non-transferable-sample.json
```

### Output:

```sh
# non-transferable-sample.json (AID/Prefix & Public key are same)
Prefix  BBv-0OhjCYTfGwIvbpBlcH9hio9F0fmxcG8vBP_VCfYY
        Public key 1:  BBv-0OhjCYTfGwIvbpBlcH9hio9F0fmxcG8vBP_VCfYY

# transferable-sample.json (AID/Prefix & Public key are different)
Prefix  EFf-BcPK_WSb0dQkIa0399l8GJtbe-rmxoBo4HBATTbA
        Public key 1:  DJ9wl2F_hFa48Y92OUW5COeM80E__STufsmNswVQZF1K
```


# kli rotate
> Only transferable event can be rotated
```sh
kli rotate 
  --name <name-of-the-keystore> 
  --base "${KERI_TEMP_DIR}" 
  --alias <trans> 
  --next-count <keys-count>             # Next pub key count
  --nsith <signing-threshold>            # signing-threshold (No of time can be rotated | need at least N signature to make anything valid for this identifier in this current state)
  --data @./anchor.json      # If need to anchor data
  --witness-cut <witness-id>    # To remove specific witness/oobi
  --witness-add <witness-id>    # To Add witness
  --toad <count>                # Withess threshold count 
```


# kli interact
> Transfer anchor without changing keypair
```sh
kli interact 
  --name <name-of-the-keystore> 
  --base "${KERI_TEMP_DIR}" 
  --alias <Name of the alias> 
  --data @${KERI_DEMO_SCRIPT_DIR}/data/anchor.json
```

# kli status
```sh
kli status 
  --name <name-of-the-keystore> 
  --base "${KERI_TEMP_DIR}"  
  --alias <Name of the alias>
  --verbose                       # For detailed view
```

### Output
```
Alias:  non-trans-2
Identifier: BBv-0OhjCYTfGwIvbpBlcH9hio9F0fmxcG8vBP_VCfYY
Seq No: 0

Witnesses:
Count:          0
Receipts:       0
Threshold:      0

Public Keys:
        1. BBv-0OhjCYTfGwIvbpBlcH9hio9F0fmxcG8vBP_VCfYY


Witnesses:

{
 "v": "KERI10JSON0000fd_",
 "t": "icp",
 "d": "ELpjDlm7N3fTKR4jtdPaSYdtdP6gsOzutLrydTJ8oALp",
 "i": "BBv-0OhjCYTfGwIvbpBlcH9hio9F0fmxcG8vBP_VCfYY",
 "s": "0",
 "kt": "1",
 "k": [
  "BBv-0OhjCYTfGwIvbpBlcH9hio9F0fmxcG8vBP_VCfYY"
 ],
 "nt": "0",
 "n": [],
 "bt": "0",
 "b": [],
 "c": [],
 "a": []
}
```

# kli oobi
```
# RESOLVE WITNESS OOBIs
kli oobi resolve --name <name-of-the-keystore> --base "${KERI_TEMP_DIR}" --oobi-alias <wan or wil or wes> --oobi <oobi-url>
```

# kli sign
> Sign something with the public key
```sh
kli sign 
  --name <name-of-the-keystore>  
  --base "${KERI_TEMP_DIR}" 
  --alias <Name of the alias> 
  --text @${KERI_DEMO_SCRIPT_DIR}/data/anchor.json  # Data that need to be signed
```

# kli verify
> After signing, `kli verify` verifies the signature
```sh
kli verify
  --name <name-of-the-keystore> 
  --base "${KERI_TEMP_DIR}"
  --alias <Name of the alias> 
  --prefix <prefix>      # AID/ Prefix
  --text @./scripts/demo/data/anchor.json   # Path of the data that need to verify
  --signature <sign>      # Sign, given from the `kli sign`
```

# kli list
> Listing all identifiers
```
kli list --name <name-of-the-keystore> 
```

## non-transferable-sample.json
```json
{
  "transferable": false,
  "wits": [], // 
  "toad": 0, // witness threshold
  "icount": 1, // no of signing key to create
  "ncount": 1, // number of next key
  "isith": "1", // current sign threshold
  "nsith": "1", // next sign threshold (1 for transferable)
  "estOnly": true // Establishment only (incept & rotate event only)
}

```

## anchor.json
```json
// In delegation, if im the delegator & someone requested a rotation event I will anchor this:
{
  "i": "EAXJtG-Ek349v43ztpFdRXozyP7YnALdB0DdCEanlHmg",  // The AID im approving
  "s": "0", // The sequence number of the event that im approving
  "d": "EAR75fE1ZmuCSfDwKPfbLowUWLqqi0ZX4502DLIo857Q" // digent of the event
}
```

-----------------------------------------------------

# Witness

# kli witness start
```sh
kli witness start 
  --name testing 
  --alias trans
  --http            # HTTP  Local port number the HTTP server listens on. Default is 5631.
  --tcp             # TCP Local port number the HTTP server listens on. Default is 5632.

## Output
Witness trans : BBZHkUNDc9Uo-5JOB-fbfVzk2fzOTjcB-rBqmTKyanjc

# Example:
$ kli init --name witness --nopasscode --config-dir ./scripts/ --config-file witness
$ kli incept --name witness --alias witness --config ./scripts/ --file $./scripts/demo/data/wil-witness-sample.json
$ kli witness start --name witness --alias witness
```

# kli oobi generate
```sh
kli oobi generate 
  --name testing          # keystore name and file location of KERI keystore
  --passcode <password>   # 22 character encryption passcode for keystore (is not saved)
  --role  <role-name>     # role of oobis to generate
```

# kli oobi resolve
> After `kli oobi resolve` the datastore will have the info of the witness. And it will use the witness whenever needed.
> For agent, config file will be used to set oobi url
```sh
kli oobi resolve 
  --name <name-of-the-keystore> 
  --base "${KERI_TEMP_DIR}" 
  --oobi-alias <Name of the OOBI alias. (From whome)>  
  --oobi <oobi-url>

# Example:
$ kli oobi resolve --name witness-test --base "${KERI_TEMP_DIR}" --oobi-alias wan --oobi http://127.0.0.1:5643/oobi/BLskRTInXnMxWaGqcpSyMgo0nYbalW99cGZESrz3zapM/controller

$ kli oobi resolve --name delegate --oobi-alias delegator --oobi http://127.0.0.1:5642/oobi/EHpD0-CDWOdu5RJ8jHBSUkOqBZ3cXeDVHWNb_Ul89VI7/witness/BBilc4-L3tFUnfM_wJr4S4OJanAv_VmF_dJNN6vkf2Ha
# witness oobi url: http://ip:port/oobi/<aid-of-delegator>/<role>/<aid-of-witness> 
# This OOBI is different. It's a witness OOBI. It generates an OOBI which tels anyone interested How to contact him through his witness. 
```


# kli contact
```sh
kli contact list
  --name
  --passcode
```

## OOBI JSON
```json
{
  "dt": "2022-01-20T12:57:59.823350+00:00",
  "wan": {
    "dt": "2022-01-20T12:57:59.823350+00:00",
    "curls": ["tcp://127.0.0.1:5632/", "http://127.0.0.1:5642/"]
  },
  "curls": ["tcp://127.0.0.1:5643/", "http://127.0.0.1:5642/"], // Specify endpoint that it will be exposing. When it generates oobi it can generate either of the endpoints. When generates oobi for controller, controller  basically saying this is where you can contact me. 
  "iurls": [
    "http://127.0.0.1:5643/oobi/BLskRTInXnMxWaGqcpSyMgo0nYbalW99cGZESrz3zapM/controller",
  ] // Resolve other witnesses oobi
}

```


# SwaggerUI | Agent
```sh
# Terminal 1
$ kli witness demo

# Terminal 2
$ cp -r static ./src/keri/app/cli/commands/agent/
$ mv ./src/keri/app/cli/commands/agent/swaggerui/* ./src/keri/app/cli/commands/agent/

$ kli agent demo --config-file ./scripts/keri/cf/demo-witness-oobis.json 

# Or
$ kli agent start --insecure --tcp 5921 --admin-http-port 5923
```


# Test
AID: EGPtuPB......tJ47j8
Pub: DHKBVI..... wMmJ4s
oobi: ip/oobi/AID/witness
