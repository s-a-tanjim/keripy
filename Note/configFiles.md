## Incept Config
```sh
$ kli incept --name <Name> --alias <Alias> --file config.json
```
### Non Transferable Identifier
```json
{
  "transferable": false,  // Cant rotate
  "wits": [],             // 
  "toad": 0,              // Witness threshold
  "icount": 1,            // Number of signing key to create
  "ncount": 1,            // Number of next keys
  "isith": "1",           // Current signing threshold
  "nsith": "1"            // Next signing threshold
}
```

### Transferable Identifier
```json
{
  "transferable": true,  // Can rotate
  "wits": [
    "BBilc4-L3tFUnfM_wJr4S4OJanAv_VmF_dJNN6vkf2Ha",
    "BLskRTInXnMxWaGqcpSyMgo0nYbalW99cGZESrz3zapM",
    "BIKKuvBwpmDVA4Ds-EpL5bt9OqPzWPja2LigFYZN2YfX"
  ],             // Witness AID
  "toad": 2,              // Witness threshold
  "icount": 1,            // Number of signing key to create
  "ncount": 1,            // Number of next keys
  "isith": "1",           // Current signing threshold
  "nsith": "1"            // Next signing threshold
}
```

## Witness Config
```json
{
  "dt": "2022-01-20T12:57:59.823350+00:00",
  "witness-alias-name": {
    "dt": "2022-01-20T12:57:59.823350+00:00",
    "curls": ["tcp://127.0.0.1:5632/", "http://127.0.0.1:5642/"]    // This endpoint will be exposed
  },
  "iurls": [
    "http://127.0.0.1:5643/oobi/{aid}/controller",    // Other witness to resolve
    "http://127.0.0.1:5644/oobi/{aid}/controller",    // Other witness to resolve
  ]
}

```


## Agent Config
```json
{
  "dt": "2022-01-20T12:57:59.823350+00:00",
  "wit": {
    "dt": "2022-01-20T12:57:59.823350+00:00",
    "curls": ["tcp://127.0.0.1:5632/", "http://127.0.0.1:5642/"]    // Agent endpoint
  },
  "iurls": [
    "http://127.0.0.1:5643/oobi/{aid}/controller",    // Other preconfigure witness
    "http://127.0.0.1:5644/oobi/{aid}/controller",    // Other preconfigure witness
  ]
}

```


## Delegatee config
```json
{
  "delpre": "EHpD0-CDWOdu5RJ8jHBSUkOqBZ3cXeDVHWNb_Ul89VI7",   // Any key event I do(inception/rotation) needs to be approved via an anchor by this AID. | Delegator will approve this event  
  "wits": ["BBilc4-L3tFUnfM_wJr4S4OJanAv_VmF_dJNN6vkf2Ha"],
  "toad": 1,
  "transferable": true,
  "icount": 1,
  "ncount": 1,
  "isith": "1",
  "nsith": "1"
}
```