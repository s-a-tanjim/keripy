## Demo Agent
```sh
# Terminal 1
$ kli witness demo
# Output:
# Witness wan : BBilc4-L3tFUnfM_wJr4S4OJanAv_VmF_dJNN6vkf2Ha
# Witness wil : BLskRTInXnMxWaGqcpSyMgo0nYbalW99cGZESrz3zapM
# Witness wes : BIKKuvBwpmDVA4Ds-EpL5bt9OqPzWPja2LigFYZN2YfX
# Witness wit : BM35JN8XeJSEfpxopjn5jr7tAHCE5749f0OobhMLCorE
# Witness wub : BIj15u5V11bkbtAxMA7gcNJZcax-7TgaBMLsQnMHpYHP
# Witness wyz : BF2rZTW79z4IXocYRQnjjsOuvFUQv-ptCf8Yltd7PfsM

# Terminal 2
$ kli agent demo --config-file demo-witness-oobis-schema
# Output:
# ******* Starting Multisig Delegation Agents on ports 5623, 5723, 5823, 5923 .****** 
# (This starts 4 agent)

# Terminal 3
$ cd /keripy/src/keri/app/cli/commands/agent/static
$ mv swaggerui/* ./

```

### Configs
```json
// demo-witness-oobis-schema.json
{
  "dt": "2022-01-20T12:57:59.823350+00:00",
  "iurls": [
    "http://127.0.0.1:5642/oobi/BBilc4-L3tFUnfM_wJr4S4OJanAv_VmF_dJNN6vkf2Ha/controller",
    "http://127.0.0.1:5644/oobi/BIKKuvBwpmDVA4Ds-EpL5bt9OqPzWPja2LigFYZN2YfX/controller",
    "http://127.0.0.1:5643/oobi/BLskRTInXnMxWaGqcpSyMgo0nYbalW99cGZESrz3zapM/controller"
  ],
  "durls": [
    "http://127.0.0.1:7723/oobi/EBNaNu-M9P5cgrnfl2Fvymy4E_jvxxyjb70PRtiANlJy",
    "http://127.0.0.1:7723/oobi/EMhvwOlyEJ9kN4PrwCpr9Jsv7TxPhiYveZ0oP3lJzdEi",
    "http://127.0.0.1:7723/oobi/EKA57bKBKxr_kN7iN5i7lMUxpMG-s19dRcmov1iDxz-E",
    "http://127.0.0.1:7723/oobi/EEy9PkikFcANV1l7EHukCeXqrzT1hNZjGlUk7wuMO5jw",
    "http://127.0.0.1:7723/oobi/ENPXp1vQzRF6JwIuS-mp2U8Uf1MoADoP_GqQ62VsDZWY",
    "http://127.0.0.1:7723/oobi/EH6ekLjSr8V32WyFbGe1zXjTzFs9PkTYmupJ9H65O14g",
    "http://127.0.0.1:7723/oobi/EBfdlu8R27Fbx-ehrqwImnK-8Cm79sqbAQ4MmvEAYqao"
  ]
}

```

# Logs
```s
bash-5.1# netstat -lntu
Active Internet connections (only servers)
Proto Recv-Q Send-Q Local Address           Foreign Address         State       
tcp        0      0 127.0.0.11:45465        0.0.0.0:*               LISTEN      
tcp        0      0 0.0.0.0:8000            0.0.0.0:*               LISTEN      
tcp        0      0 0.0.0.0:5623            0.0.0.0:*               LISTEN      
tcp        0      0 0.0.0.0:5823            0.0.0.0:*               LISTEN      
tcp        0      0 0.0.0.0:5642            0.0.0.0:*               LISTEN      
tcp        0      0 0.0.0.0:5643            0.0.0.0:*               LISTEN      
tcp        0      0 0.0.0.0:5644            0.0.0.0:*               LISTEN      
tcp        0      0 0.0.0.0:5645            0.0.0.0:*               LISTEN      
tcp        0      0 0.0.0.0:5646            0.0.0.0:*               LISTEN      
tcp        0      0 0.0.0.0:5647            0.0.0.0:*               LISTEN      
tcp        0      0 0.0.0.0:5632            0.0.0.0:*               LISTEN      
tcp        0      0 0.0.0.0:5633            0.0.0.0:*               LISTEN      
tcp        0      0 0.0.0.0:5634            0.0.0.0:*               LISTEN      
tcp        0      0 0.0.0.0:5635            0.0.0.0:*               LISTEN      
tcp        0      0 0.0.0.0:5636            0.0.0.0:*               LISTEN      
tcp        0      0 0.0.0.0:5637            0.0.0.0:*               LISTEN      
tcp        0      0 0.0.0.0:5723            0.0.0.0:*               LISTEN      
tcp        0      0 0.0.0.0:5923            0.0.0.0:*               LISTEN      
udp        0      0 127.0.0.11:33378        0.0.0.0:* 
```



# How Arsh Starts
```md
there are kli commands like `kli agent demo`, `kli agent vlei` to  run keripy agents for local use.
## Run DemoAgent Scripts:
Before running any script, Clean everything
$ rm -rf /usr/local/var/keri/*;
## Start a collection of 3 witnesses on known ports with known AIDs, from keripy root folder run
$ kli witness demo
## In a separate terminal window, start the agent
$ kli agent demo --config-file demo-witness-oobis
## Before running any of the demo scripts, need to source the file demo-scripts.sh into your current shell to set the environment variables used to locate additional files needed during the execution of some commands
## In a separate terminal window, navigate to scripts/demo directory:
$ cd scripts/demo
## source the file demo-scripts.sh into your current shell to set the environment variables
$ source demo-scripts.sh
## Navigate to directory of script that you wish to run, then run a flow script like  
$ cd basic
$ ./delegate-agent.sh
$ ./alice-bob-agent.sh
```