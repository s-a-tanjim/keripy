# kli witness demo
> kli witness demo
```
Witness wan : BBilc4-L3tFUnfM_wJr4S4OJanAv_VmF_dJNN6vkf2Ha
Witness wil : BLskRTInXnMxWaGqcpSyMgo0nYbalW99cGZESrz3zapM
Witness wes : BIKKuvBwpmDVA4Ds-EpL5bt9OqPzWPja2LigFYZN2YfX
Witness wit : BM35JN8XeJSEfpxopjn5jr7tAHCE5749f0OobhMLCorE
Witness wub : BIj15u5V11bkbtAxMA7gcNJZcax-7TgaBMLsQnMHpYHP
Witness wyz : BF2rZTW79z4IXocYRQnjjsOuvFUQv-ptCf8Yltd7PfsM
```

> OOBI allows people to discover full key event logs, witness key event logs, service endpoints for any other identifier .

http://127.0.0.1:5643:oobi/identifier-of-whome-the-oobi-is-referencing/role-the-oobi-is-playing


# -----------------

# Terminal 1

> kli witness demo

# Terminal 2

> kli init --name witness-test --nopasscode

> kli oobi resolve --name witness-test --oobi-alias wan --oobi http://127.0.0.1:5643/oobi/BLskRTInXnMxWaGqcpSyMgo0nYbalW99cGZESrz3zapM/controller

http://127.0.0.1:5643/oobi/BLskRTInXnMxWaGqcpSyMgo0nYbalW99cGZESrz3zapM/controller resolved

> kli oobi resolve --name witness-test --oobi-alias wil --oobi http://127.0.0.1:5642/oobi/BBilc4-L3tFUnfM_wJr4S4OJanAv_VmF_dJNN6vkf2Ha/controller

http://127.0.0.1:5642/oobi/BBilc4-L3tFUnfM_wJr4S4OJanAv_VmF_dJNN6vkf2Ha/controller resolved

> kli oobi resolve --name witness-test --oobi-alias wes --oobi http://127.0.0.1:5644/oobi/BIKKuvBwpmDVA4Ds-EpL5bt9OqPzWPja2LigFYZN2YfX/controller

http://127.0.0.1:5644/oobi/BIKKuvBwpmDVA4Ds-EpL5bt9OqPzWPja2LigFYZN2YfX/controller resolved


> kli incept --name witness-test --alias trans --file ./scripts/demo/data/trans-wits-sample.json
```sh
Waiting for witness receipts...                 # Takes the identifier & propagate to all the witnesses & waits for receipts to the witnesses, & collect all the receipts & passes them to all the other witnesses
Prefix  EDe7VWIDeGWodPimnAvyu16KWMma21aeznLV2xynGxiN
        Public key 1:  DIXwwQm0HmmmMAcoDS1CrHy8q7YXyyPg9mx4OmG77EGi
```

> kli rotate --name witness-test --alias trans
```sh
Prefix  EDe7VWIDeGWodPimnAvyu16KWMma21aeznLV2xynGxiN
New Sequence No.  1
        Public key 1:  DDeBYn32Y_Kx6dRNJFP5jKH9TUgU_r5d8vqGKnAfRxJ2
```

> kli status --name witness-test --alias trans
```sh
Alias:  trans
Identifier: EDe7VWIDeGWodPimnAvyu16KWMma21aeznLV2xynGxiN
Seq No: 1

Witnesses:
Count:          3
Receipts:       3
Threshold:      3

Public Keys:
        1. DDeBYn32Y_Kx6dRNJFP5jKH9TUgU_r5d8vqGKnAfRxJ2
```

> kli status --name witness-test --alias trans --verbose
```sh
Alias:  trans
Identifier: EDe7VWIDeGWodPimnAvyu16KWMma21aeznLV2xynGxiN
Seq No: 1

Witnesses:
Count:          3
Receipts:       3
Threshold:      3

Public Keys:
        1. DDeBYn32Y_Kx6dRNJFP5jKH9TUgU_r5d8vqGKnAfRxJ2


Witnesses:
        1. BBilc4-L3tFUnfM_wJr4S4OJanAv_VmF_dJNN6vkf2Ha
        2. BLskRTInXnMxWaGqcpSyMgo0nYbalW99cGZESrz3zapM
        3. BIKKuvBwpmDVA4Ds-EpL5bt9OqPzWPja2LigFYZN2YfX

{
 "v": "KERI10JSON0001b7_",
 "t": "icp",
 "d": "EDe7VWIDeGWodPimnAvyu16KWMma21aeznLV2xynGxiN",
 "i": "EDe7VWIDeGWodPimnAvyu16KWMma21aeznLV2xynGxiN",
 "s": "0",
 "kt": "1",
 "k": [
  "DIXwwQm0HmmmMAcoDS1CrHy8q7YXyyPg9mx4OmG77EGi"
 ],
 "nt": "1",
 "n": [
  "EMOmT7X72Bf067NZNf72GXJtlGDL14L03sKSBLFnDjUX"
 ],
 "bt": "2",
 "b": [
  "BBilc4-L3tFUnfM_wJr4S4OJanAv_VmF_dJNN6vkf2Ha",
  "BLskRTInXnMxWaGqcpSyMgo0nYbalW99cGZESrz3zapM",
  "BIKKuvBwpmDVA4Ds-EpL5bt9OqPzWPja2LigFYZN2YfX"
 ],
 "c": [],
 "a": []
}

{
 "v": "KERI10JSON000160_",
 "t": "rot",
 "d": "EKwYrvN-Xt4of4Q8CnXSHaq3Qprix-q768mkmk0yfv6T",
 "i": "EDe7VWIDeGWodPimnAvyu16KWMma21aeznLV2xynGxiN",
 "s": "1",
 "p": "EDe7VWIDeGWodPimnAvyu16KWMma21aeznLV2xynGxiN",
 "kt": "1",
 "k": [
  "DDeBYn32Y_Kx6dRNJFP5jKH9TUgU_r5d8vqGKnAfRxJ2"
 ],
 "nt": "1",
 "n": [
  "EDcl8zke6gbOVumV_v_QZILpNS1TxPP4Tx9W3_EZT5-k"
 ],
 "bt": "3",
 "br": [],
 "ba": [],
 "a": []
}

```

> kli rotate --name witness-test --alias trans --witness-cut BIKKuvBwpmDVA4Ds-EpL5bt9OqPzWPja2LigFYZN2YfX
Prefix  EDe7VWIDeGWodPimnAvyu16KWMma21aeznLV2xynGxiN
New Sequence No.  2
        Public key 1:  DD44JikYH9vHr4BK8LhtcM3SQo0xI2lBQxQBjUvSPT_0

>  kli status --name witness-test --alias trans
Alias:  trans
Identifier: EDe7VWIDeGWodPimnAvyu16KWMma21aeznLV2xynGxiN
Seq No: 2

Witnesses:
Count:          2
Receipts:       2
Threshold:      2

Public Keys:
        1. DD44JikYH9vHr4BK8LhtcM3SQo0xI2lBQxQBjUvSPT_0


> kli status --name witness-test --alias trans --verbose
```sh
Alias:  trans
Identifier: EDe7VWIDeGWodPimnAvyu16KWMma21aeznLV2xynGxiN
Seq No: 2

Witnesses:
Count:          2
Receipts:       2
Threshold:      2

Public Keys:
        1. DD44JikYH9vHr4BK8LhtcM3SQo0xI2lBQxQBjUvSPT_0


Witnesses:
        1. BBilc4-L3tFUnfM_wJr4S4OJanAv_VmF_dJNN6vkf2Ha
        2. BLskRTInXnMxWaGqcpSyMgo0nYbalW99cGZESrz3zapM

{
 "v": "KERI10JSON0001b7_",
 "t": "icp",
 "d": "EDe7VWIDeGWodPimnAvyu16KWMma21aeznLV2xynGxiN",
 "i": "EDe7VWIDeGWodPimnAvyu16KWMma21aeznLV2xynGxiN",
 "s": "0",
 "kt": "1",
 "k": [
  "DIXwwQm0HmmmMAcoDS1CrHy8q7YXyyPg9mx4OmG77EGi"
 ],
 "nt": "1",
 "n": [
  "EMOmT7X72Bf067NZNf72GXJtlGDL14L03sKSBLFnDjUX"
 ],
 "bt": "2",
 "b": [
  "BBilc4-L3tFUnfM_wJr4S4OJanAv_VmF_dJNN6vkf2Ha",
  "BLskRTInXnMxWaGqcpSyMgo0nYbalW99cGZESrz3zapM",
  "BIKKuvBwpmDVA4Ds-EpL5bt9OqPzWPja2LigFYZN2YfX"
 ],
 "c": [],
 "a": []
}

{
 "v": "KERI10JSON000160_",
 "t": "rot",
 "d": "EKwYrvN-Xt4of4Q8CnXSHaq3Qprix-q768mkmk0yfv6T",
 "i": "EDe7VWIDeGWodPimnAvyu16KWMma21aeznLV2xynGxiN",
 "s": "1",
 "p": "EDe7VWIDeGWodPimnAvyu16KWMma21aeznLV2xynGxiN",
 "kt": "1",
 "k": [
  "DDeBYn32Y_Kx6dRNJFP5jKH9TUgU_r5d8vqGKnAfRxJ2"
 ],
 "nt": "1",
 "n": [
  "EDcl8zke6gbOVumV_v_QZILpNS1TxPP4Tx9W3_EZT5-k"
 ],
 "bt": "3",
 "br": [],
 "ba": [],
 "a": []
}

{
 "v": "KERI10JSON00018e_",
 "t": "rot",
 "d": "EMZZggjdSRMAWjetKRAEgnOGIC0-pGuWp9NI_Jrk1G00",
 "i": "EDe7VWIDeGWodPimnAvyu16KWMma21aeznLV2xynGxiN",
 "s": "2",
 "p": "EKwYrvN-Xt4of4Q8CnXSHaq3Qprix-q768mkmk0yfv6T",
 "kt": "1",
 "k": [
  "DD44JikYH9vHr4BK8LhtcM3SQo0xI2lBQxQBjUvSPT_0"
 ],
 "nt": "1",
 "n": [
  "EPcy-BHaiUpBt6ZEt_xtAkpJ-lmmAkivpCwRxXSMVoB0"
 ],
 "bt": "2",
 "br": [
  "BIKKuvBwpmDVA4Ds-EpL5bt9OqPzWPja2LigFYZN2YfX"
 ],
 "ba": [],
 "a": []
}

```


# ----------------------------------------
# Manually
```sh
# Witness:
$ kli init --name witness --nopasscode --config-dir ./scripts/ --config-file witness

# -------------- CONFIG File
witness.json
{
  "witness": {
    "dt": "2022-01-20T12:57:59.823350+00:00",
    "curls": ["tcp://127.0.0.1:5632/", "http://127.0.0.1:5631/"]
  },
  "dt": "2022-01-20T12:57:59.823350+00:00",
  "iurls": [
  ]
}
# ----------------

$ kli incept --name witness --alias witness --config ./scripts/ --file ./scripts/demo/data/wil-witness-sample.json
Prefix  BF4IzLLq2hCIlqY0sQIX_m1DZhyOeWbcXsJqv0H6gCQq
        Public key 1:  BF4IzLLq2hCIlqY0sQIX_m1DZhyOeWbcXsJqv0H6gCQq

# -------------
{
  "transferable": false,        # witness will have to be non-transferable
  "wits": [],           # Non trans e wits = empty hobe & toad = 0
  "toad": 0,
  "icount": 1,
  "ncount": 1,
  "isith": "1",
  "nsith": "1"
}
# -------------

$ kli witness start --name witness --alias witness
Witness witness : BF4IzLLq2hCIlqY0sQIX_m1DZhyOeWbcXsJqv0H6gCQq



# Other terminal
$ kli init --name witness-test --nopasscode

$ kli oobi resolve --name witness-test --oobi-alias witness --oobi http://127.0.0.1:5631/oobi/BF4IzLLq2hCIlqY0sQIX_m1DZhyOeWbcXsJqv0H6gCQq/controller

> http://127.0.0.1:5631/oobi/BF4IzLLq2hCIlqY0sQIX_m1DZhyOeWbcXsJqv0H6gCQq/controller resolved


$ kli incept --name witness-test --alias trans --file ./scripts/demo/data/transferable-sample.json 
Waiting for witness receipts...
Prefix  EPsXRwkhVPFwLGq_EshLUfj_B7-l6g7qTgb6bZ-zO5hV
        Public key 1:  DB4yOcff57I5H8kR0KgCYdKAs77ltjjwlzDUqrpm7rqc

#
{
  "transferable": true,
  "wits": [
      "BF4IzLLq2hCIlqY0sQIX_m1DZhyOeWbcXsJqv0H6gCQq"
  ],
  "toad": 1,
  "icount": 1,
  "ncount": 1,
  "isith": "1",
  "nsith": "1"
}
#

$ kli status --name witness-test
Alias:  trans
Identifier: EPsXRwkhVPFwLGq_EshLUfj_B7-l6g7qTgb6bZ-zO5hV
Seq No: 0

Witnesses:
Count:          1
Receipts:       1
Threshold:      1

Public Keys:
        1. DB4yOcff57I5H8kR0KgCYdKAs77ltjjwlzDUqrpm7rqc



$ kli status --name witness-test --verbose
Alias:  trans
Identifier: EPsXRwkhVPFwLGq_EshLUfj_B7-l6g7qTgb6bZ-zO5hV
Seq No: 0

Witnesses:
Count:          1
Receipts:       1
Threshold:      1

Public Keys:
        1. DB4yOcff57I5H8kR0KgCYdKAs77ltjjwlzDUqrpm7rqc


Witnesses:
        1. BF4IzLLq2hCIlqY0sQIX_m1DZhyOeWbcXsJqv0H6gCQq

{
 "v": "KERI10JSON000159_",
 "t": "icp",
 "d": "EPsXRwkhVPFwLGq_EshLUfj_B7-l6g7qTgb6bZ-zO5hV",
 "i": "EPsXRwkhVPFwLGq_EshLUfj_B7-l6g7qTgb6bZ-zO5hV",
 "s": "0",
 "kt": "1",
 "k": [
  "DB4yOcff57I5H8kR0KgCYdKAs77ltjjwlzDUqrpm7rqc"
 ],
 "nt": "1",
 "n": [
  "EOiOIvGFKXq89Vr5mb3VwwhYu4uqOqcqhaBXlD-nienc"
 ],
 "bt": "1",
 "b": [
  "BF4IzLLq2hCIlqY0sQIX_m1DZhyOeWbcXsJqv0H6gCQq"
 ],
 "c": [],
 "a": []
}

```





# Dumbing

> kli witness demo
Witness wan : BBilc4-L3tFUnfM_wJr4S4OJanAv_VmF_dJNN6vkf2Ha -> will
Witness wil : BLskRTInXnMxWaGqcpSyMgo0nYbalW99cGZESrz3zapM -> wan
Witness wes : BIKKuvBwpmDVA4Ds-EpL5bt9OqPzWPja2LigFYZN2YfX -> wes
Witness wit : BM35JN8XeJSEfpxopjn5jr7tAHCE5749f0OobhMLCorE -> not found
Witness wub : BIj15u5V11bkbtAxMA7gcNJZcax-7TgaBMLsQnMHpYHP -> not found
Witness wyz : BF2rZTW79z4IXocYRQnjjsOuvFUQv-ptCf8Yltd7PfsM -> not found

