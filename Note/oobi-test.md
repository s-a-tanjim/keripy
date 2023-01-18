# Terminal 1
```sh
$ kli witness demo

# Output
Witness wan : BBilc4-L3tFUnfM_wJr4S4OJanAv_VmF_dJNN6vkf2Ha
Witness wil : BLskRTInXnMxWaGqcpSyMgo0nYbalW99cGZESrz3zapM
Witness wes : BIKKuvBwpmDVA4Ds-EpL5bt9OqPzWPja2LigFYZN2YfX
Witness wit : BM35JN8XeJSEfpxopjn5jr7tAHCE5749f0OobhMLCorE
Witness wub : BIj15u5V11bkbtAxMA7gcNJZcax-7TgaBMLsQnMHpYHP
Witness wyz : BF2rZTW79z4IXocYRQnjjsOuvFUQv-ptCf8Yltd7PfsM
```


# Terminal 2
```sh
$ rm -rf /usr/local/var/keri/*

$ kli init --name witness-test --nopasscode

# Output
KERI Keystore created at: /usr/local/var/keri/ks/witness-test
KERI Database created at: /usr/local/var/keri/db/witness-test
KERI Credential Store created at: /usr/local/var/keri/reg/witness-test

$ kli oobi resolve --name witness-test --oobi-alias wan --oobi http://127.0.0.1:5643/oobi/BLskRTInXnMxWaGqcpSyMgo0nYbalW99cGZESrz3zapM/controller

# Output
http://127.0.0.1:5643/oobi/BLskRTInXnMxWaGqcpSyMgo0nYbalW99cGZESrz3zapM/controller resolved

$ kli oobi resolve --name witness-test --oobi-alias wil --oobi http://127.0.0.1:5642/oobi/BBilc4-L3tFUnfM_wJr4S4OJanAv_VmF_dJNN6vkf2Ha/controller

# Output
http://127.0.0.1:5642/oobi/BBilc4-L3tFUnfM_wJr4S4OJanAv_VmF_dJNN6vkf2Ha/controller resolved

$ kli oobi resolve --name witness-test --oobi-alias wes --oobi http://127.0.0.1:5644/oobi/BIKKuvBwpmDVA4Ds-EpL5bt9OqPzWPja2LigFYZN2YfX/controller

# Output
http://127.0.0.1:5644/oobi/BIKKuvBwpmDVA4Ds-EpL5bt9OqPzWPja2LigFYZN2YfX/controller resolved


$ kli incept --name witness-test --alias trans --file ./scripts/demo/data/trans-wits-sample.json

# Output
Waiting for witness receipts...
Prefix  EJvPmPIefz6QmIn7oXBp1kqPibK_4SN3LH0sr3FC3Vdb
        Public key 1:  DM8k83zVx3AliP-VXOHHWMS27A-qQgGdrpCBexxybapt

$ OOBI_PASS=$(kli passcode generate)

$ kli oobi generate --name witness-test --role witness # --passcode "${OOBI_PASS}"

# Output
http://127.0.0.1:5642/oobi/EJvPmPIefz6QmIn7oXBp1kqPibK_4SN3LH0sr3FC3Vdb/witness
http://127.0.0.1:5643/oobi/EJvPmPIefz6QmIn7oXBp1kqPibK_4SN3LH0sr3FC3Vdb/witness
http://127.0.0.1:5644/oobi/EJvPmPIefz6QmIn7oXBp1kqPibK_4SN3LH0sr3FC3Vdb/witness

```

# Test
```sh
$ curl http://127.0.0.1:5644/oobi/EJvPmPIefz6QmIn7oXBp1kqPibK_4SN3LH0sr3FC3Vdb/witness
```

```json
{
   "v":"KERI10JSON0000fa_",
   "t":"rpy",
   "d":"EGYcTBTLcSCMct6j2noKw-1lUgHt30KkiiyfztNO6qh7",
   "dt":"2023-01-16T07:52:31.534522+00:00",
   "r":"/loc/scheme",
   "a":{
      "eid":"BBilc4-L3tFUnfM_wJr4S4OJanAv_VmF_dJNN6vkf2Ha",
      "scheme":"http",
      "url":"http://127.0.0.1:5642/"
   }
}-VAi-CABBBilc4-L3tFUnfM_wJr4S4OJanAv_VmF_dJNN6vkf2Ha0BATVOWNFN1RpVLseeT5CZnSJ5mnmIxGQoH4VbI1lAuJZPQkEbj9V6qoC3nSENcxhrNBMCUZ8ncIjW8TgRLFzfEE{
   "v":"KERI10JSON0000f8_",
   "t":"rpy",
   "d":"EGlX8RzJl4bw7Nv2PTC22T9FvWn6DeGiMrfkc74t5Hvx",
   "dt":"2023-01-16T07:52:31.536064+00:00",
   "r":"/loc/scheme",
   "a":{
      "eid":"BBilc4-L3tFUnfM_wJr4S4OJanAv_VmF_dJNN6vkf2Ha",
      "scheme":"tcp",
      "url":"tcp://127.0.0.1:5632/"
   }
}-VAi-CABBBilc4-L3tFUnfM_wJr4S4OJanAv_VmF_dJNN6vkf2Ha0BA1CMJnXdZt4-ZnCE6Z1RbhSjUgpdfcck9Ax0l4YjAgOI7Fl4OHrXPAR4H9O97GMsay1rbtR8VbqT8vziKGPRMG{
   "v":"KERI10JSON0000fa_",
   "t":"rpy",
   "d":"EPw-fjKazlZ1_woUImpHv53k-YA-ekt_HscujTiO3qN2",
   "dt":"2023-01-16T07:52:27.630416+00:00",
   "r":"/loc/scheme",
   "a":{
      "eid":"BLskRTInXnMxWaGqcpSyMgo0nYbalW99cGZESrz3zapM",
      "scheme":"http",
      "url":"http://127.0.0.1:5643/"
   }
}-VAi-CABBLskRTInXnMxWaGqcpSyMgo0nYbalW99cGZESrz3zapM0BBbCN-c96jp_BqbmFJBLH3IwjtyWjNY3djoqlAiHipUr8l8s16udMiIv-k66EhEWn_vk5JmN4RlrD7JdhoYZG0M{
   "v":"KERI10JSON0000f8_",
   "t":"rpy",
   "d":"EMh2DkDZm2pf53UihfRvfeN1FVSuKXoS8j_4JYnW8ueM",
   "dt":"2023-01-16T07:52:27.632022+00:00",
   "r":"/loc/scheme",
   "a":{
      "eid":"BLskRTInXnMxWaGqcpSyMgo0nYbalW99cGZESrz3zapM",
      "scheme":"tcp",
      "url":"tcp://127.0.0.1:5633/"
   }
}-VAi-CABBLskRTInXnMxWaGqcpSyMgo0nYbalW99cGZESrz3zapM0BAZRljPQxEjSsWbaxm9kstFvR2sku84qRUBeUCUJSgWiOGXquNZ3mmXpp6dSLJLgPq5vIvfbITnLP6Z6wsteWwC{
   "v":"KERI10JSON0000fa_",
   "t":"rpy",
   "d":"EBFXD4a16B8F_p_ITyV5XHi6RtsVMetxB7Bp_wVD3BId",
   "dt":"2023-01-16T07:53:14.472897+00:00",
   "r":"/loc/scheme",
   "a":{
      "eid":"BIKKuvBwpmDVA4Ds-EpL5bt9OqPzWPja2LigFYZN2YfX",
      "scheme":"http",
      "url":"http://127.0.0.1:5644/"
   }
}-VAi-CABBIKKuvBwpmDVA4Ds-EpL5bt9OqPzWPja2LigFYZN2YfX0BDao2PTomOI6vVz6RpAYyPCaNW0WckjJTPDaNv9Ftr5Z3EOo4JFftflQdzcQ-iq-OiKhlx9YNYtMuFGKNmtproG{
   "v":"KERI10JSON0000f8_",
   "t":"rpy",
   "d":"EAGZeCQPvi6kc_OKcnfYdyB0sKIb1-t5a9FGZ5yYmntD",
   "dt":"2023-01-16T07:53:14.474400+00:00",
   "r":"/loc/scheme",
   "a":{
      "eid":"BIKKuvBwpmDVA4Ds-EpL5bt9OqPzWPja2LigFYZN2YfX",
      "scheme":"tcp",
      "url":"tcp://127.0.0.1:5634/"
   }
}-VAi-CABBIKKuvBwpmDVA4Ds-EpL5bt9OqPzWPja2LigFYZN2YfX0BDA_x_6wTniGrWNFrLIFAnNvAbpVxi3tSIfBXVh9znykL_XQK7GhzRyGDXF5DvmrL0LIoUAOxN6OB16scljarAJ{
   "v":"KERI10JSON0001b7_",
   "t":"icp",
   "d":"EJvPmPIefz6QmIn7oXBp1kqPibK_4SN3LH0sr3FC3Vdb",
   "i":"EJvPmPIefz6QmIn7oXBp1kqPibK_4SN3LH0sr3FC3Vdb",
   "s":"0",
   "kt":"1",
   "k":[
      "DM8k83zVx3AliP-VXOHHWMS27A-qQgGdrpCBexxybapt"
   ],
   "nt":"1",
   "n":[
      "EGuXaB1EflHLjZiJeW2mJp1fV9iTS-xja5G4Zh5xYh7W"
   ],
   "bt":"2",
   "b":[
      "BBilc4-L3tFUnfM_wJr4S4OJanAv_VmF_dJNN6vkf2Ha",
      "BLskRTInXnMxWaGqcpSyMgo0nYbalW99cGZESrz3zapM",
      "BIKKuvBwpmDVA4Ds-EpL5bt9OqPzWPja2LigFYZN2YfX"
   ],
   "c":[
      
   ],
   "a":[
      
   ]
}-VBq-AABAADnSecrfg_3-M1msNlp24UqZwBaN-agbfXOXjjJuK-zMh2-HRwaOQm_VnLbDYY0RpjsWNR5iEhvF_g2PSVLZscF-BADAAAyXyJrA-5mNyl9_EcWIeBHVI5ADBUCDvrQ5FwVZeqJlesSF3wZr2iu8P6S0YNuZMJCUYX5VBCOK_xX6KQhiNAPABAAzuYmt56UvXMxMoNEJyYPQAwGGSBjVc3_3sn4phxB4md2Y6klfeCDyG7BFkU0oS65e4QyGskUdIHnHBRYwTYNACCqZJbK9-aUzuymA1ddjnLJjJSLL6jdWq58aIbIf3AruZ1mHSlKfczH0NauZs8ebmI5e3GCyq_8-2UKeu2A9WsM-EAB0AAAAAAAAAAAAAAAAAAAAAAA1AAG2023-01-16T07c52c40d119257p00c00

```

```json
{
   "v":"KERI10JSON0000fa_",
   "t":"rpy",
   "d":"EGYcTBTLcSCMct6j2noKw-1lUgHt30KkiiyfztNO6qh7",
   "dt":"2023-01-16T07:52:31.534522+00:00",
   "r":"/loc/scheme",
   "a":{
      "eid":"BBilc4-L3tFUnfM_wJr4S4OJanAv_VmF_dJNN6vkf2Ha",
      "scheme":"http",
      "url":"http://127.0.0.1:5642/"
   }
}-VAi-CABBBilc4-L3tFUnfM_wJr4S4OJanAv_VmF_dJNN6vkf2Ha0BATVOWNFN1RpVLseeT5CZnSJ5mnmIxGQoH4VbI1lAuJZPQkEbj9V6qoC3nSENcxhrNBMCUZ8ncIjW8TgRLFzfEE{
   "v":"KERI10JSON0000f8_",
   "t":"rpy",
   "d":"EGlX8RzJl4bw7Nv2PTC22T9FvWn6DeGiMrfkc74t5Hvx",
   "dt":"2023-01-16T07:52:31.536064+00:00",
   "r":"/loc/scheme",
   "a":{
      "eid":"BBilc4-L3tFUnfM_wJr4S4OJanAv_VmF_dJNN6vkf2Ha",
      "scheme":"tcp",
      "url":"tcp://127.0.0.1:5632/"
   }
}-VAi-CABBBilc4-L3tFUnfM_wJr4S4OJanAv_VmF_dJNN6vkf2Ha0BA1CMJnXdZt4-ZnCE6Z1RbhSjUgpdfcck9Ax0l4YjAgOI7Fl4OHrXPAR4H9O97GMsay1rbtR8VbqT8vziKGPRMG{
   "v":"KERI10JSON0000fa_",
   "t":"rpy",
   "d":"EPw-fjKazlZ1_woUImpHv53k-YA-ekt_HscujTiO3qN2",
   "dt":"2023-01-16T07:52:27.630416+00:00",
   "r":"/loc/scheme",
   "a":{
      "eid":"BLskRTInXnMxWaGqcpSyMgo0nYbalW99cGZESrz3zapM",
      "scheme":"http",
      "url":"http://127.0.0.1:5643/"
   }
}-VAi-CABBLskRTInXnMxWaGqcpSyMgo0nYbalW99cGZESrz3zapM0BBbCN-c96jp_BqbmFJBLH3IwjtyWjNY3djoqlAiHipUr8l8s16udMiIv-k66EhEWn_vk5JmN4RlrD7JdhoYZG0M{
   "v":"KERI10JSON0000f8_",
   "t":"rpy",
   "d":"EMh2DkDZm2pf53UihfRvfeN1FVSuKXoS8j_4JYnW8ueM",
   "dt":"2023-01-16T07:52:27.632022+00:00",
   "r":"/loc/scheme",
   "a":{
      "eid":"BLskRTInXnMxWaGqcpSyMgo0nYbalW99cGZESrz3zapM",
      "scheme":"tcp",
      "url":"tcp://127.0.0.1:5633/"
   }
}-VAi-CABBLskRTInXnMxWaGqcpSyMgo0nYbalW99cGZESrz3zapM0BAZRljPQxEjSsWbaxm9kstFvR2sku84qRUBeUCUJSgWiOGXquNZ3mmXpp6dSLJLgPq5vIvfbITnLP6Z6wsteWwC{
   "v":"KERI10JSON0000fa_",
   "t":"rpy",
   "d":"EHB-skjAJpd9BuCYpZsCFMO0a6XzTMd2iM1ys6_aPzZc",
   "dt":"2023-01-16T07:55:13.847742+00:00",
   "r":"/loc/scheme",
   "a":{
      "eid":"BIKKuvBwpmDVA4Ds-EpL5bt9OqPzWPja2LigFYZN2YfX",
      "scheme":"http",
      "url":"http://127.0.0.1:5644/"
   }
}-VAi-CABBIKKuvBwpmDVA4Ds-EpL5bt9OqPzWPja2LigFYZN2YfX0BBl5umExC9vPi7OcbjLRissAbq3-a9xzv3sLiMuOsoNd2NG75DIB_Phc2CpoO3lDlZ7uUyTjsHWSAMzHeiX0lwA{
   "v":"KERI10JSON0000f8_",
   "t":"rpy",
   "d":"EHKnmtuSZpGAbJVPhlKSB-nblItz6vgeMkg9LI3HaTrN",
   "dt":"2023-01-16T07:55:13.849064+00:00",
   "r":"/loc/scheme",
   "a":{
      "eid":"BIKKuvBwpmDVA4Ds-EpL5bt9OqPzWPja2LigFYZN2YfX",
      "scheme":"tcp",
      "url":"tcp://127.0.0.1:5634/"
   }
}-VAi-CABBIKKuvBwpmDVA4Ds-EpL5bt9OqPzWPja2LigFYZN2YfX0BAM2wQsUYxKZJzw0Ci_joIZ8CnC79eHOBKYNgvWS7S9ShBFQuNSH6HXZJd1vTs5cGByjvjW4obahrHz00Sh2jwN{
   "v":"KERI10JSON0001b7_",
   "t":"icp",
   "d":"EJvPmPIefz6QmIn7oXBp1kqPibK_4SN3LH0sr3FC3Vdb",
   "i":"EJvPmPIefz6QmIn7oXBp1kqPibK_4SN3LH0sr3FC3Vdb",
   "s":"0",
   "kt":"1",
   "k":[
      "DM8k83zVx3AliP-VXOHHWMS27A-qQgGdrpCBexxybapt"
   ],
   "nt":"1",
   "n":[
      "EGuXaB1EflHLjZiJeW2mJp1fV9iTS-xja5G4Zh5xYh7W"
   ],
   "bt":"2",
   "b":[
      "BBilc4-L3tFUnfM_wJr4S4OJanAv_VmF_dJNN6vkf2Ha",
      "BLskRTInXnMxWaGqcpSyMgo0nYbalW99cGZESrz3zapM",
      "BIKKuvBwpmDVA4Ds-EpL5bt9OqPzWPja2LigFYZN2YfX"
   ],
   "c":[
      
   ],
   "a":[
      
   ]
}-VBq-AABAADnSecrfg_3-M1msNlp24UqZwBaN-agbfXOXjjJuK-zMh2-HRwaOQm_VnLbDYY0RpjsWNR5iEhvF_g2PSVLZscF-BADAAAyXyJrA-5mNyl9_EcWIeBHVI5ADBUCDvrQ5FwVZeqJlesSF3wZr2iu8P6S0YNuZMJCUYX5VBCOK_xX6KQhiNAPABAAzuYmt56UvXMxMoNEJyYPQAwGGSBjVc3_3sn4phxB4md2Y6klfeCDyG7BFkU0oS65e4QyGskUdIHnHBRYwTYNACCqZJbK9-aUzuymA1ddjnLJjJSLL6jdWq58aIbIf3AruZ1mHSlKfczH0NauZs8ebmI5e3GCyq_8-2UKeu2A9WsM-EAB0AAAAAAAAAAAAAAAAAAAAAAA1AAG2023-01-16T07c52c40d119257p00c00{
   "v":"KERI10JSON000160_",
   "t":"rot",
   "d":"EBYt501-Zu7zuq6bt8rJ770Uzxc8ztlE8UWI3Q7DCGxo",
   "i":"EJvPmPIefz6QmIn7oXBp1kqPibK_4SN3LH0sr3FC3Vdb",
   "s":"1",
   "p":"EJvPmPIefz6QmIn7oXBp1kqPibK_4SN3LH0sr3FC3Vdb",
   "kt":"1",
   "k":[
      "DDLgHuXsxOqJINrWL_rzdkRlYuaxGo7oQogIUzcA2AIZ"
   ],
   "nt":"1",
   "n":[
      "EA4nbaJlmGV34Xkx2IauAvLg2QPQInJx45z2BZZt05RR"
   ],
   "bt":"3",
   "br":[
      
   ],
   "ba":[
      
   ],
   "a":[
      
   ]
}-VBq-AABAAA3_MQMj1Ol7rM9iFWJGHP79nCfKyPynDMN6HMn-Uxyp5GJmZBWG4_l0zbITWW83LVIv2Kl_AAPjqEdlgA2KpwM-BADAABcpezMkL0ghXp-M0TlY0cZaYPfrQYzn6meQ-Bo02mwmIIeoaC3BbOeati9xDgrA7H4Vl-C6wkWbWsySmxZ5ngFABAF2kpni-x0mX2XVZGF1q8gPA3Z59vLNAO-82OcYnIrOKIs3S7u1wHuF6b92TPUsVrl93BVAuh8IZRGYfYcPwoOACBnn6H3dGqE3-5WIzv_B6tABxoaBNgyPmxuPtFCxj46lEFHQ2L2WF2daw7ZcP1hhw33iDLEprcxWNA0zUCkbsIB-EAB0AAAAAAAAAAAAAAAAAAAAAAB1AAG2023-01-16T07c55c04d895900p00c00

```


> kli status --name witness-test --alias trans --verbose
```json
Alias:  trans
Identifier: EJvPmPIefz6QmIn7oXBp1kqPibK_4SN3LH0sr3FC3Vdb
Seq No: 1

Witnesses:
Count:          3
Receipts:       3
Threshold:      3

Public Keys:
        1. DDLgHuXsxOqJINrWL_rzdkRlYuaxGo7oQogIUzcA2AIZ


Witnesses:
        1. BBilc4-L3tFUnfM_wJr4S4OJanAv_VmF_dJNN6vkf2Ha
        2. BLskRTInXnMxWaGqcpSyMgo0nYbalW99cGZESrz3zapM
        3. BIKKuvBwpmDVA4Ds-EpL5bt9OqPzWPja2LigFYZN2YfX

{
 "v": "KERI10JSON0001b7_",
 "t": "icp",
 "d": "EJvPmPIefz6QmIn7oXBp1kqPibK_4SN3LH0sr3FC3Vdb",
 "i": "EJvPmPIefz6QmIn7oXBp1kqPibK_4SN3LH0sr3FC3Vdb",
 "s": "0",
 "kt": "1",
 "k": [
  "DM8k83zVx3AliP-VXOHHWMS27A-qQgGdrpCBexxybapt"
 ],
 "nt": "1",
 "n": [
  "EGuXaB1EflHLjZiJeW2mJp1fV9iTS-xja5G4Zh5xYh7W"
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
 "d": "EBYt501-Zu7zuq6bt8rJ770Uzxc8ztlE8UWI3Q7DCGxo",
 "i": "EJvPmPIefz6QmIn7oXBp1kqPibK_4SN3LH0sr3FC3Vdb",
 "s": "1",
 "p": "EJvPmPIefz6QmIn7oXBp1kqPibK_4SN3LH0sr3FC3Vdb",
 "kt": "1",
 "k": [
  "DDLgHuXsxOqJINrWL_rzdkRlYuaxGo7oQogIUzcA2AIZ"
 ],
 "nt": "1",
 "n": [
  "EA4nbaJlmGV34Xkx2IauAvLg2QPQInJx45z2BZZt05RR"
 ],
 "bt": "3",
 "br": [],
 "ba": [],
 "a": []
}

```

# p5qiwP3aYnuamnt6InQqT