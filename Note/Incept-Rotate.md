# Serial: 0
> $ kli incept --name testing --alias trans --file ./scripts/demo/data/transferable-sample.json 
```sh
# Output
Prefix  EFf-BcPK_WSb0dQkIa0399l8GJtbe-rmxoBo4HBATTbA
        Public key 1:  DJ9wl2F_hFa48Y92OUW5COeM80E__STufsmNswVQZF1K
```

> $ kli status --name testing --alias trans
```sh
# Output
Alias:  trans
Identifier: EFf-BcPK_WSb0dQkIa0399l8GJtbe-rmxoBo4HBATTbA
Seq No: 0

Witnesses:
Count:          0
Receipts:       0
Threshold:      0

Public Keys:
        1. DJ9wl2F_hFa48Y92OUW5COeM80E__STufsmNswVQZF1K
```

# Serial: 1 
> $ kli rotate --name testing --alias trans
```sh
# Output
Prefix  EFf-BcPK_WSb0dQkIa0399l8GJtbe-rmxoBo4HBATTbA
New Sequence No.  1
        Public key 1:  DFaVwgSjLbBgyeBNRTN998t5pdCKqh1dngaBspeAkFdQ
```

> $ kli status --name testing --alias trans
```sh
# Output
Alias:  trans
Identifier: EFf-BcPK_WSb0dQkIa0399l8GJtbe-rmxoBo4HBATTbA
Seq No: 1

Witnesses:
Count:          0
Receipts:       0
Threshold:      0

Public Keys:
        1. DFaVwgSjLbBgyeBNRTN998t5pdCKqh1dngaBspeAkFdQ

```

# Serial: 2
> $ kli rotate --name testing --alias trans
```sh
# Output
Prefix  EFf-BcPK_WSb0dQkIa0399l8GJtbe-rmxoBo4HBATTbA
New Sequence No.  2
        Public key 1:  DEzpQhoXkpInojKk66tw-z_KZby-5wl2CUKMK1ppZVJ2
```

> $ kli status --name testing --alias trans
```sh
# Output
Alias:  trans
Identifier: EFf-BcPK_WSb0dQkIa0399l8GJtbe-rmxoBo4HBATTbA
Seq No: 2

Witnesses:
Count:          0
Receipts:       0
Threshold:      0

Public Keys:
        1. DEzpQhoXkpInojKk66tw-z_KZby-5wl2CUKMK1ppZVJ2

```

# Serial: 3
> $ kli rotate --name testing --alias trans --data @./scripts/demo/data/anchor.json 

```sh
# Output
Prefix  EFf-BcPK_WSb0dQkIa0399l8GJtbe-rmxoBo4HBATTbA
New Sequence No.  3
        Public key 1:  DJ7RqVB0pc678SJHUFim5xGIBlz0yqHZwjzEaUDXhozs
```

> $ kli status --name testing --alias trans

```sh
# Output
Alias:  trans
Identifier: EFf-BcPK_WSb0dQkIa0399l8GJtbe-rmxoBo4HBATTbA
Seq No: 3

Witnesses:
Count:          0
Receipts:       0
Threshold:      0

Public Keys:
        1. DJ7RqVB0pc678SJHUFim5xGIBlz0yqHZwjzEaUDXhozs
```

# Verbose

> kli status --name testing --alias trans --verbose

```sh
Alias:  trans
Identifier: EFf-BcPK_WSb0dQkIa0399l8GJtbe-rmxoBo4HBATTbA
Seq No: 3

Witnesses:
Count:          0
Receipts:       0
Threshold:      0

Public Keys:
        1. DJ7RqVB0pc678SJHUFim5xGIBlz0yqHZwjzEaUDXhozs


Witnesses:

{
 "v": "KERI10JSON00012b_",
 "t": "icp",
 "d": "EFf-BcPK_WSb0dQkIa0399l8GJtbe-rmxoBo4HBATTbA",
 "i": "EFf-BcPK_WSb0dQkIa0399l8GJtbe-rmxoBo4HBATTbA",
 "s": "0",
 "kt": "1",
 "k": [
  "DJ9wl2F_hFa48Y92OUW5COeM80E__STufsmNswVQZF1K"
 ],
 "nt": "1",
 "n": [
  "EFx32TayVW-F3esB1sNMEAxLmmz-E0FAaWNP8g88LMiY"
 ],
 "bt": "0",
 "b": [],
 "c": [],
 "a": []
}

{
 "v": "KERI10JSON000160_",
 "t": "rot",
 "d": "EC3KLmNgy7n28jygJEmr2N8H2ddcj-VkRP0IFMd96bmk",
 "i": "EFf-BcPK_WSb0dQkIa0399l8GJtbe-rmxoBo4HBATTbA",
 "s": "1",
 "p": "EFf-BcPK_WSb0dQkIa0399l8GJtbe-rmxoBo4HBATTbA",
 "kt": "1",
 "k": [
  "DFaVwgSjLbBgyeBNRTN998t5pdCKqh1dngaBspeAkFdQ"
 ],
 "nt": "1",
 "n": [
  "EALEALMa7qR-X_oy7Ht0OeW8bza_luphnsj3veZ5vxzi"
 ],
 "bt": "0",
 "br": [],
 "ba": [],
 "a": []
}

{
 "v": "KERI10JSON000160_",
 "t": "rot",
 "d": "EDOdnF1-KkfivOKNe3uaAxqY1PAPDCPAvSat4F4W6lzO",
 "i": "EFf-BcPK_WSb0dQkIa0399l8GJtbe-rmxoBo4HBATTbA",
 "s": "2",
 "p": "EC3KLmNgy7n28jygJEmr2N8H2ddcj-VkRP0IFMd96bmk",
 "kt": "1",
 "k": [
  "DEzpQhoXkpInojKk66tw-z_KZby-5wl2CUKMK1ppZVJ2"
 ],
 "nt": "1",
 "n": [
  "EIWwjr9g-sLQX1VysiI4GEgTlUQMuV9fFFmwtLSlxY5X"
 ],
 "bt": "0",
 "br": [],
 "ba": [],
 "a": []
}

{
 "v": "KERI10JSON0001cf_",
 "t": "rot",
 "d": "EP-WGlnvcxJKA9PdTWWh4rBN2x29xeXJtw8NYzsV4iG9",
 "i": "EFf-BcPK_WSb0dQkIa0399l8GJtbe-rmxoBo4HBATTbA",
 "s": "3",
 "p": "EDOdnF1-KkfivOKNe3uaAxqY1PAPDCPAvSat4F4W6lzO",
 "kt": "1",
 "k": [
  "DJ7RqVB0pc678SJHUFim5xGIBlz0yqHZwjzEaUDXhozs"
 ],
 "nt": "1",
 "n": [
  "EGfN4VpS8c4pknFSgsz5WZZqK5Ukn6-6g-Ob6I1MZ_hI"
 ],
 "bt": "0",
 "br": [],
 "ba": [],
 "a": [
  {
   "i": "EAXJtG-Ek349v43ztpFdRXozyP7YnALdB0DdCEanlHmg",
   "s": "0",
   "d": "EAR75fE1ZmuCSfDwKPfbLowUWLqqi0ZX4502DLIo857Q"
  }
 ]
}

```

# Serial: 4

> kli rotate --name testing --alias trans --data @./scripts/demo/data/anchor.json 

```sh
# Output
Prefix  EFf-BcPK_WSb0dQkIa0399l8GJtbe-rmxoBo4HBATTbA
New Sequence No.  4
        Public key 1:  DBPyRm5DBDtC-lqv2qCpfBfyG8gKfYZlUSi8UzelBekp
```

# Verbose

> kli status --name testing --alias trans --verbose

```sh
# Output
Alias:  trans
Identifier: EFf-BcPK_WSb0dQkIa0399l8GJtbe-rmxoBo4HBATTbA
Seq No: 4

Witnesses:
Count:          0
Receipts:       0
Threshold:      0

Public Keys:
        1. DBPyRm5DBDtC-lqv2qCpfBfyG8gKfYZlUSi8UzelBekp


Witnesses:

{
 "v": "KERI10JSON00012b_",
 "t": "icp",
 "d": "EFf-BcPK_WSb0dQkIa0399l8GJtbe-rmxoBo4HBATTbA",
 "i": "EFf-BcPK_WSb0dQkIa0399l8GJtbe-rmxoBo4HBATTbA",
 "s": "0",
 "kt": "1",
 "k": [
  "DJ9wl2F_hFa48Y92OUW5COeM80E__STufsmNswVQZF1K"
 ],
 "nt": "1",
 "n": [
  "EFx32TayVW-F3esB1sNMEAxLmmz-E0FAaWNP8g88LMiY"
 ],
 "bt": "0",
 "b": [],
 "c": [],
 "a": []
}

{
 "v": "KERI10JSON000160_",
 "t": "rot",
 "d": "EC3KLmNgy7n28jygJEmr2N8H2ddcj-VkRP0IFMd96bmk",
 "i": "EFf-BcPK_WSb0dQkIa0399l8GJtbe-rmxoBo4HBATTbA",
 "s": "1",
 "p": "EFf-BcPK_WSb0dQkIa0399l8GJtbe-rmxoBo4HBATTbA",
 "kt": "1",
 "k": [
  "DFaVwgSjLbBgyeBNRTN998t5pdCKqh1dngaBspeAkFdQ"
 ],
 "nt": "1",
 "n": [
  "EALEALMa7qR-X_oy7Ht0OeW8bza_luphnsj3veZ5vxzi"
 ],
 "bt": "0",
 "br": [],
 "ba": [],
 "a": []
}

{
 "v": "KERI10JSON000160_",
 "t": "rot",
 "d": "EDOdnF1-KkfivOKNe3uaAxqY1PAPDCPAvSat4F4W6lzO",
 "i": "EFf-BcPK_WSb0dQkIa0399l8GJtbe-rmxoBo4HBATTbA",
 "s": "2",
 "p": "EC3KLmNgy7n28jygJEmr2N8H2ddcj-VkRP0IFMd96bmk",
 "kt": "1",
 "k": [
  "DEzpQhoXkpInojKk66tw-z_KZby-5wl2CUKMK1ppZVJ2"
 ],
 "nt": "1",
 "n": [
  "EIWwjr9g-sLQX1VysiI4GEgTlUQMuV9fFFmwtLSlxY5X"
 ],
 "bt": "0",
 "br": [],
 "ba": [],
 "a": []
}

{
 "v": "KERI10JSON0001cf_",
 "t": "rot",
 "d": "EP-WGlnvcxJKA9PdTWWh4rBN2x29xeXJtw8NYzsV4iG9",
 "i": "EFf-BcPK_WSb0dQkIa0399l8GJtbe-rmxoBo4HBATTbA",
 "s": "3",
 "p": "EDOdnF1-KkfivOKNe3uaAxqY1PAPDCPAvSat4F4W6lzO",
 "kt": "1",
 "k": [
  "DJ7RqVB0pc678SJHUFim5xGIBlz0yqHZwjzEaUDXhozs"
 ],
 "nt": "1",
 "n": [
  "EGfN4VpS8c4pknFSgsz5WZZqK5Ukn6-6g-Ob6I1MZ_hI"
 ],
 "bt": "0",
 "br": [],
 "ba": [],
 "a": [
  {
   "i": "EAXJtG-Ek349v43ztpFdRXozyP7YnALdB0DdCEanlHmg",
   "s": "0",
   "d": "EAR75fE1ZmuCSfDwKPfbLowUWLqqi0ZX4502DLIo857Q"
  }
 ]
}

{
 "v": "KERI10JSON0001eb_",
 "t": "rot",
 "d": "ELMbJQcDFGij6mMw4GDLz8FlnjBHVlRHT0py0HCms86Z",
 "i": "EFf-BcPK_WSb0dQkIa0399l8GJtbe-rmxoBo4HBATTbA",
 "s": "4",
 "p": "EP-WGlnvcxJKA9PdTWWh4rBN2x29xeXJtw8NYzsV4iG9",
 "kt": "1",
 "k": [
  "DBPyRm5DBDtC-lqv2qCpfBfyG8gKfYZlUSi8UzelBekp"
 ],
 "nt": "1",
 "n": [
  "EHKg33atUf-7W0QtcUWHv8JZNjkBjliiXxzdTkfcUStu"
 ],
 "bt": "0",
 "br": [],
 "ba": [],
 "a": [
  {
   "i": "EAXJtG-Ek349v43ztpFdRXozyP7YnALdB0DdCEanlHmg",
   "s": "0",
   "d": "EAR75fE1ZmuCSfDwKPfbLowUWLqqi0ZX4502DLIo857Q",
   "test": "This Is Dummy Data"
  }
 ]
}

```


# Serial: 5

> kli rotate --name testing --alias trans --next-count 4 --nsith 2

```sh
# Output
Prefix  EFf-BcPK_WSb0dQkIa0399l8GJtbe-rmxoBo4HBATTbA
New Sequence No.  5
        Public key 1:  DAReDfK64XGtaiIIOgGKlX258Du26gm06os0sBEyE7H8
```

> kli status --name testing --alias trans

```sh
# Output
Alias:  trans
Identifier: EFf-BcPK_WSb0dQkIa0399l8GJtbe-rmxoBo4HBATTbA
Seq No: 5

Witnesses:
Count:          0
Receipts:       0
Threshold:      0

Public Keys:
        1. DAReDfK64XGtaiIIOgGKlX258Du26gm06os0sBEyE7H8
```

# Serial: 6

> kli rotate --name testing --alias trans --next-count 2 --nsith 2

```sh
# Output
Prefix  EFf-BcPK_WSb0dQkIa0399l8GJtbe-rmxoBo4HBATTbA
New Sequence No.  6
        Public key 1:  DHHg9yudeOCmqaJmF9WRKmZ2Gxcb98OXFfzaDfbpIHzH
        Public key 2:  DNjK0dvMfduOsDkLHtCB7ecqG8-xswFxKYXxfafqUUUV
        Public key 3:  DJVsQ_Tsl6Vb6Qcmdn5vIWH4kH_iUsDYGG0VnJ5LYGhw
        Public key 4:  DIXlR5txMV6TCcDjQaFyxDL8rzj7LwTChvb25TNWNevn
```
> kli status --name testing --alias trans

```sh
# Output
Alias:  trans
Identifier: EFf-BcPK_WSb0dQkIa0399l8GJtbe-rmxoBo4HBATTbA
Seq No: 6

Witnesses:
Count:          0
Receipts:       0
Threshold:      0

Public Keys:
        1. DHHg9yudeOCmqaJmF9WRKmZ2Gxcb98OXFfzaDfbpIHzH
        2. DNjK0dvMfduOsDkLHtCB7ecqG8-xswFxKYXxfafqUUUV
        3. DJVsQ_Tsl6Vb6Qcmdn5vIWH4kH_iUsDYGG0VnJ5LYGhw
        4. DIXlR5txMV6TCcDjQaFyxDL8rzj7LwTChvb25TNWNevn
```

# sign

> kli sign --name testing --alias trans --text @./scripts/demo/data/anchor.json 

```sh
# Output
1. AACnNVgKDMH7i0KG8CgC4XW0OTNVkbh_0yVHUh6CTPu-kjiUq2oATeHrZdcpt_918UWJjXQGI1dgX2xljuxtvwoA
2. ABDvGmdj1JTpiDyo7VvLTV2G1uXcA_h9Ml1zPf3XgRVgkar3Y5a81jxRhIS6feMuWjNYCcn2lm89jGCeOHWVfNEK
3. ACArWv_ZctFp2oWKj9wFU1HvuFDAwFlmJ4nJZ_Aj138_fgldASDAWDsZxkEmRAhTBQIJhyUnJ-5tf1rDYKgyeP8F
4. ADAVr33rCQv85xV707IUsWNuXX7wMiBir9NU0GB20RoRxRWOPTrPqpG1Ut11eZiy9XO90hhAc8IE0o5favzGpYgB
```

# Verify
```sh
# Command
$ kli verify --name testing --alias trans --prefix EFf-BcPK_WSb0dQkIa0399l8GJtbe-rmxoBo4HBATTbA --text @./scripts/demo/data/anchor.json  --signature AACnNVgKDMH7i0KG8CgC4XW0OTNVkbh_0yVHUh6CTPu-kjiUq2oATeHrZdcpt_918UWJjXQGI1dgX2xljuxtvwoA

# Output
Signature 1 is valid.

# Command
$ kli verify --name testing --alias trans --prefix EFf-BcPK_WSb0dQkIa0399l8GJtbe-rmxoBo4HBATTbA --text @./scripts/demo/data/anchor.json  --signature ABDvGmdj1JTpiDyo7VvLTV2G1uXcA_h9Ml1zPf3XgRVgkar3Y5a81jxRhIS6feMuWjNYCcn2lm89jGCeOHWVfNEK

# Output
Signature 2 is valid.
```

# Serial: 7 

> kli interact --name testing --alias trans --data @./scripts/demo/data/anchor.json 

```sh
# Output
Prefix  EFf-BcPK_WSb0dQkIa0399l8GJtbe-rmxoBo4HBATTbA
New Sequence No.  7
        Public key 1:  DHHg9yudeOCmqaJmF9WRKmZ2Gxcb98OXFfzaDfbpIHzH
        Public key 2:  DNjK0dvMfduOsDkLHtCB7ecqG8-xswFxKYXxfafqUUUV
        Public key 3:  DJVsQ_Tsl6Vb6Qcmdn5vIWH4kH_iUsDYGG0VnJ5LYGhw
        Public key 4:  DIXlR5txMV6TCcDjQaFyxDL8rzj7LwTChvb25TNWNevn

```

## Non-Trans verbose

> kli status --name testing --alias non-trans --verbose

```sh
# Output
Alias:  non-trans
Identifier: BBkq6rB3kbQ7fqnFi09X1k2l5VbpnBZE47Ul4Vegg7e3
Seq No: 0

Witnesses:
Count:          0
Receipts:       0
Threshold:      0

Public Keys:
        1. BBkq6rB3kbQ7fqnFi09X1k2l5VbpnBZE47Ul4Vegg7e3


Witnesses:

{
 "v": "KERI10JSON0000fd_",
 "t": "icp",
 "d": "EM6ZCysEzNG5eBy1rhnlVifoj1IB5lG4xYNV6w2RNnEW",
 "i": "BBkq6rB3kbQ7fqnFi09X1k2l5VbpnBZE47Ul4Vegg7e3",
 "s": "0",
 "kt": "1",
 "k": [
  "BBkq6rB3kbQ7fqnFi09X1k2l5VbpnBZE47Ul4Vegg7e3"
 ],
 "nt": "0",
 "n": [],
 "bt": "0",
 "b": [],
 "c": [],
 "a": []
}

```

