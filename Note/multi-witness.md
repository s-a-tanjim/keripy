# Terminal 1 (Witness 1)
$ kli init --name witness1 --nopasscode --config-dir ./scripts/ --config-file witness

```
{                                                                  
  "witness": {                                                     
    "dt": "2022-01-20T12:57:59.823350+00:00",                      
    "curls": ["tcp://127.0.0.1:5632/", "http://127.0.0.1:5631/"]   
  },                                                               
  "dt": "2022-01-20T12:57:59.823350+00:00",                        
  "iurls": [                                                       
  ]                                                                
}                                                                  
```

KERI Keystore created at: /usr/local/var/keri/ks/witness1
KERI Database created at: /usr/local/var/keri/db/witness1
KERI Credential Store created at: /usr/local/var/keri/reg/witness1


$ kli incept --name witness1 --alias witness1 --config ./scripts/ --file ./scripts/demo/data/wil-witness-sample.json
Prefix  BCSCTBe-xgWU3L2cSpDqwHk1_GWtnMAXWVZsjnYZbCxD
        Public key 1:  BCSCTBe-xgWU3L2cSpDqwHk1_GWtnMAXWVZsjnYZbCxD


$ kli witness start --name witness1 --alias witness1

Witness witness1 : BCSCTBe-xgWU3L2cSpDqwHk1_GWtnMAXWVZsjnYZbCxD



# Terminal 2 (witness 2)

$ kli init --name witness2 --nopasscode --config-dir ./scripts/ --config-file witness2

```json
{           
  "witness2": {                               // Name of the witness
    "dt": "2022-01-20T12:57:59.823350+00:00",                   
    "curls": ["tcp://127.0.0.1:5633/", "http://127.0.0.1:5634/"]
  },                                                            
  "dt": "2022-01-20T12:57:59.823350+00:00",
  "iurls": [                                                       
    "http://127.0.0.1:5631/oobi/BCSCTBe-xgWU3L2cSpDqwHk1_GWtnMAXWVZsjnYZbCxD/controller"
  ]                                                                
}
```

$ kli oobi resolve --name witness2 --oobi-alias wit --oobi http://127.0.0.1:5631/oobi/BPjtScncK0KC6dYHLA-YbgnKSBWJ7PCMoBWgesoAFXvw/controller

$ kli incept --name witness2 --alias witness2 --config ./scripts/ --file ./scripts/demo/data/wil-witness-sample.json




$ kli witness start --name witness2 --alias witness2