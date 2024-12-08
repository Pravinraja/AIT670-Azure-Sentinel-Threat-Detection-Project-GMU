# Replace with your Workspace ID
$CustomerId = "PUTIDHERE"

# Replace with your Primary Key
$SharedKey = "PUTKEYHERE"

# Specify the name of the record type that you'll be creating
$LogType = "gmu_blocked_vm_logs"

# Optional name of a field that includes the TimeGenerated for the data. If the time field is not specified, Azure Monitor assumes the time is the message ingestion time
$TimeGeneratedField = ""

# Create two records with the same set of properties to create
$json = @"
[
  [
  {
    "TimeGenerated": "2023-04-16",
    "ResourceId": "/subscriptions/0ef13098-0091-4f90-823b-df2c31308c8c/resourceGroups/GmuRg1/providers/Microsoft.Storage/storageAccounts/sentinelstorage32str",
    "SourceIP": "101.56.17.90",
    "DestinationIP": "10.0.0.40",
    "Protocol": "192.168.6.15",
    "FileName": "UDP",
    "FileHash": "adware.sys",
    "ThreatType": "2f1e0d9c8b7a6f5e4d3c2b1a9g8f7e6d",
    "Action": "Adware",
    "Justification": "Blocked",
    "": "Unauthorized",
    "__1": "advertising",
    "__2": "software",
    "__3": "",
    "__4": "",
    "__5": "",
    "__6": ""
  },
  {
    "TimeGenerated": "2023-04-15",
    "ResourceId": "/subscriptions/0ef13098-0091-4f90-823b-df2c31308c8c/resourceGroups/GmuRg1/providers/Microsoft.Storage/storageAccounts/sentinelstorage32str",
    "SourceIP": "101.56.17.91",
    "DestinationIP": "192.168.3.10",
    "Protocol": "10.0.0.18",
    "FileName": "UDP",
    "FileHash": "backdoor.sys",
    "ThreatType": "7e6d5c4b3a2f1e0d9c8b7a6f5e4d3c2b",
    "Action": "Backdoor",
    "Justification": "Blocked",
    "": "Unauthorized",
    "__1": "remote",
    "__2": "access",
    "__3": "attempt",
    "__4": "",
    "__5": "",
    "__6": ""
  },
  {
    "TimeGenerated": "2023-04-19",
    "ResourceId": "/subscriptions/0ef13098-0091-4f90-823b-df2c31308c8c/resourceGroups/GmuRg1/providers/Microsoft.Storage/storageAccounts/sentinelstorage32str",
    "SourceIP": "101.56.17.92",
    "DestinationIP": "192.168.16.5",
    "Protocol": "10.0.0.48",
    "FileName": "TCP",
    "FileHash": "banker.dll",
    "ThreatType": "7d8e9f0a1b2c3d4e5f6g7h8i9j0k1l2m",
    "Action": "Banker",
    "Justification": "Blocked",
    "": "Potential",
    "__1": "banking",
    "__2": "trojan",
    "__3": "",
    "__4": "",
    "__5": "",
    "__6": ""
  },
  {
    "TimeGenerated": "2023-04-17",
    "ResourceId": "/subscriptions/0ef13098-0091-4f90-823b-df2c31308c8c/resourceGroups/GmuRg1/providers/Microsoft.Storage/storageAccounts/sentinelstorage32str",
    "SourceIP": "101.56.17.93",
    "DestinationIP": "10.0.0.50",
    "Protocol": "192.168.10.12",
    "FileName": "TCP",
    "FileHash": "botnet.exe",
    "ThreatType": "1l2m3n4o5p6q7r8s9t0u1v2w3x4y5z6a",
    "Action": "Botnet",
    "Justification": "Blocked",
    "": "Potential",
    "__1": "botnet",
    "__2": "communication",
    "__3": "attempt",
    "__4": "",
    "__5": "",
    "__6": ""
  },
  {
    "TimeGenerated": "2023-04-20",
    "ResourceId": "/subscriptions/0ef13098-0091-4f90-823b-df2c31308c8c/resourceGroups/GmuRg1/providers/Microsoft.Storage/storageAccounts/sentinelstorage32str",
    "SourceIP": "101.56.17.94",
    "DestinationIP": "10.0.0.70",
    "Protocol": "192.168.21.12",
    "FileName": "UDP",
    "FileHash": "clickfraud.dll",
    "ThreatType": "7z8a9b0c1d2e3f4g5h6i7j8k9l0m1n2o",
    "Action": "ClickFraud",
    "Justification": "Blocked",
    "": "Potential",
    "__1": "click",
    "__2": "fraud",
    "__3": "attempt",
    "__4": "",
    "__5": "",
    "__6": ""
  },
  {
    "TimeGenerated": "2023-04-21",
    "ResourceId": "/subscriptions/0ef13098-0091-4f90-823b-df2c31308c8c/resourceGroups/GmuRg1/providers/Microsoft.Storage/storageAccounts/sentinelstorage32str",
    "SourceIP": "101.56.17.95",
    "DestinationIP": "192.168.22.5",
    "Protocol": "10.0.0.58",
    "FileName": "TCP",
    "FileHash": "coinminer.exe",
    "ThreatType": "3p4q5r6s7t8u9v0w1x2y3z4a5b6c7d8e",
    "Action": "Coinminer",
    "Justification": "Blocked",
    "": "Potential",
    "__1": "cryptocurrency",
    "__2": "mining",
    "__3": "attempt",
    "__4": "",
    "__5": "",
    "__6": ""
  },
  {
    "TimeGenerated": "2023-04-16",
    "ResourceId": "/subscriptions/0ef13098-0091-4f90-823b-df2c31308c8c/resourceGroups/GmuRg1/providers/Microsoft.Storage/storageAccounts/sentinelstorage32str",
    "SourceIP": "101.56.17.96",
    "DestinationIP": "172.16.5.25",
    "Protocol": "192.168.5.10",
    "FileName": "TCP",
    "FileHash": "cryptominer.exe",
    "ThreatType": "6f5e4d3c2b1a9g8f7e6d5c4b3a2f1e0d",
    "Action": "Cryptominer",
    "Justification": "Blocked",
    "": "Unauthorized",
    "__1": "resource",
    "__2": "consumption",
    "__3": "",
    "__4": "",
    "__5": "",
    "__6": ""
  },
  {
    "TimeGenerated": "2023-04-20",
    "ResourceId": "/subscriptions/0ef13098-0091-4f90-823b-df2c31308c8c/resourceGroups/GmuRg1/providers/Microsoft.Storage/storageAccounts/sentinelstorage32str",
    "SourceIP": "101.56.17.97",
    "DestinationIP": "10.0.0.65",
    "Protocol": "192.168.18.18",
    "FileName": "TCP",
    "FileHash": "dialer.exe",
    "ThreatType": "9d0e1f2g3h4i5j6k7l8m9n0o1p2q3r4s",
    "Action": "Dialer",
    "Justification": "Blocked",
    "": "Potential",
    "__1": "unauthorized",
    "__2": "dialer",
    "__3": "program",
    "__4": "",
    "__5": "",
    "__6": ""
  },
  {
    "TimeGenerated": "2023-04-21",
    "ResourceId": "/subscriptions/0ef13098-0091-4f90-823b-df2c31308c8c/resourceGroups/GmuRg1/providers/Microsoft.Storage/storageAccounts/sentinelstorage32str",
    "SourceIP": "101.56.17.98",
    "DestinationIP": "192.168.24.10",
    "Protocol": "10.0.0.62",
    "FileName": "TCP",
    "FileHash": "dnschanger.sys",
    "ThreatType": "5v6w7x8y9z0a1b2c3d4e5f6g7h8i9j0k",
    "Action": "DNSChanger",
    "Justification": "Blocked",
    "": "Potential",
    "__1": "DNS",
    "__2": "hijacking",
    "__3": "attempt",
    "__4": "",
    "__5": "",
    "__6": ""
  },
  {
    "TimeGenerated": "2023-04-17",
    "ResourceId": "/subscriptions/0ef13098-0091-4f90-823b-df2c31308c8c/resourceGroups/GmuRg1/providers/Microsoft.Storage/storageAccounts/sentinelstorage32str",
    "SourceIP": "101.56.17.99",
    "DestinationIP": "172.16.9.15",
    "Protocol": "192.168.9.8",
    "FileName": "UDP",
    "FileHash": "downloader.sys",
    "ThreatType": "5c6d7e8f9g0a1b2c3d4e5f6g7h8i9j0k",
    "Action": "Downloader",
    "Justification": "Blocked",
    "": "Unauthorized",
    "__1": "software",
    "__2": "download",
    "__3": "attempt",
    "__4": "",
    "__5": "",
    "__6": ""
  },
  {
    "TimeGenerated": "2023-04-22",
    "ResourceId": "/subscriptions/0ef13098-0091-4f90-823b-df2c31308c8c/resourceGroups/GmuRg1/providers/Microsoft.Storage/storageAccounts/sentinelstorage32str",
    "SourceIP": "101.56.17.100",
    "DestinationIP": "10.0.0.80",
    "Protocol": "192.168.26.12",
    "FileName": "TCP",
    "FileHash": "driveby.html",
    "ThreatType": "7b8c9d0e1f2g3h4i5j6k7l8m9n0o1p2q",
    "Action": "DriveBy",
    "Justification": "Blocked",
    "": "Potential",
    "__1": "drive-by",
    "__2": "download",
    "__3": "attack",
    "__4": "",
    "__5": "",
    "__6": ""
  },
  {
    "TimeGenerated": "2023-04-17",
    "ResourceId": "/subscriptions/0ef13098-0091-4f90-823b-df2c31308c8c/resourceGroups/GmuRg1/providers/Microsoft.Storage/storageAccounts/sentinelstorage32str",
    "SourceIP": "101.56.17.101",
    "DestinationIP": "192.168.8.10",
    "Protocol": "10.0.0.32",
    "FileName": "TCP",
    "FileHash": "dropper.exe",
    "ThreatType": "9m0n1o2p3q4r5s6t7u8v9w0x1y2z3a4b",
    "Action": "Dropper",
    "Justification": "Blocked",
    "": "Potential",
    "__1": "malware",
    "__2": "delivery",
    "__3": "attempt",
    "__4": "",
    "__5": "",
    "__6": ""
  },
  {
    "TimeGenerated": "2023-04-17",
    "ResourceId": "/subscriptions/0ef13098-0091-4f90-823b-df2c31308c8c/resourceGroups/GmuRg1/providers/Microsoft.Storage/storageAccounts/sentinelstorage32str",
    "SourceIP": "101.56.17.102",
    "DestinationIP": "192.168.7.5",
    "Protocol": "10.0.0.28",
    "FileName": "TCP",
    "FileHash": "exploit.exe",
    "ThreatType": "8h9i0j1k2l3m4n5o6p7q8r9s0t1u2v3w",
    "Action": "Exploit",
    "Justification": "Blocked",
    "": "Potential",
    "__1": "system",
    "__2": "vulnerability",
    "__3": "exploitation",
    "__4": "",
    "__5": "",
    "__6": ""
  },
  {
    "TimeGenerated": "2023-04-20",
    "ResourceId": "/subscriptions/0ef13098-0091-4f90-823b-df2c31308c8c/resourceGroups/GmuRg1/providers/Microsoft.Storage/storageAccounts/sentinelstorage32str",
    "SourceIP": "101.56.17.103",
    "DestinationIP": "172.16.20.15",
    "Protocol": "192.168.20.8",
    "FileName": "TCP",
    "FileHash": "fakebsod.sys",
    "ThreatType": "1j2k3l4m5n6o7p8q9r0s1t2u3v4w5x6y",
    "Action": "FakeBSOD",
    "Justification": "Blocked",
    "": "Potential",
    "__1": "fake",
    "__2": "blue",
    "__3": "screen",
    "__4": "of",
    "__5": "death",
    "__6": "attack"
  },
  {
    "TimeGenerated": "2023-04-21",
    "ResourceId": "/subscriptions/0ef13098-0091-4f90-823b-df2c31308c8c/resourceGroups/GmuRg1/providers/Microsoft.Storage/storageAccounts/sentinelstorage32str",
    "SourceIP": "101.56.17.104",
    "DestinationIP": "10.0.0.75",
    "Protocol": "172.16.23.20",
    "FileName": "UDP",
    "FileHash": "fakejavaupdate.jar",
    "ThreatType": "9f0g1h2i3j4k5l6m7n8o9p0q1r2s3t4u",
    "Action": "FakeUpdate",
    "Justification": "Blocked",
    "": "Potential",
    "__1": "fake",
    "__2": "software",
    "__3": "update",
    "__4": "",
    "__5": "",
    "__6": ""
  },
  {
    "TimeGenerated": "2023-04-22",
    "ResourceId": "/subscriptions/0ef13098-0091-4f90-823b-df2c31308c8c/resourceGroups/GmuRg1/providers/Microsoft.Storage/storageAccounts/sentinelstorage32str",
    "SourceIP": "101.56.17.105",
    "DestinationIP": "172.16.28.20",
    "Protocol": "192.168.28.10",
    "FileName": "TCP",
    "FileHash": "hacktools.zip",
    "ThreatType": "9h0i1j2k3l4m5n6o7p8q9r0s1t2u3v4w",
    "Action": "HackTools",
    "Justification": "Blocked",
    "": "Potential",
    "__1": "hacking",
    "__2": "tools/exploits",
    "__3": "",
    "__4": "",
    "__5": "",
    "__6": ""
  },
  {
    "TimeGenerated": "2023-04-19",
    "ResourceId": "/subscriptions/0ef13098-0091-4f90-823b-df2c31308c8c/resourceGroups/GmuRg1/providers/Microsoft.Storage/storageAccounts/sentinelstorage32str",
    "SourceIP": "101.56.17.106",
    "DestinationIP": "172.16.17.20",
    "Protocol": "192.168.17.12",
    "FileName": "UDP",
    "FileHash": "hijacker.sys",
    "ThreatType": "3n4o5p6q7r8s9t0u1v2w3x4y5z6a7b8c",
    "Action": "Hijacker",
    "Justification": "Blocked",
    "": "Potential",
    "__1": "system",
    "__2": "hijacking",
    "__3": "attempt",
    "__4": "",
    "__5": "",
    "__6": ""
  },
  {
    "TimeGenerated": "2023-04-17",
    "ResourceId": "/subscriptions/0ef13098-0091-4f90-823b-df2c31308c8c/resourceGroups/GmuRg1/providers/Microsoft.Storage/storageAccounts/sentinelstorage32str",
    "SourceIP": "101.56.17.107",
    "DestinationIP": "10.0.0.45",
    "Protocol": "172.16.8.20",
    "FileName": "UDP",
    "FileHash": "infostealer.dll",
    "ThreatType": "4x5y6z7a8b9c0d1e2f3g4h5i6j7k8l9m",
    "Action": "Infostealer",
    "Justification": "Blocked",
    "": "Unauthorized",
    "__1": "data",
    "__2": "theft",
    "__3": "attempt",
    "__4": "",
    "__5": "",
    "__6": ""
  },
  {
    "TimeGenerated": "2023-04-15",
    "ResourceId": "/subscriptions/0ef13098-0091-4f90-823b-df2c31308c8c/resourceGroups/GmuRg1/providers/Microsoft.Storage/storageAccounts/sentinelstorage32str",
    "SourceIP": "101.56.17.108",
    "DestinationIP": "172.16.2.15",
    "Protocol": "10.0.0.12",
    "FileName": "UDP",
    "FileHash": "keylogger.dll",
    "ThreatType": "2b9f5c1e6e4d7a5d3f7e9d8a9b6c7d5e",
    "Action": "Keylogger",
    "Justification": "Blocked",
    "": "Unauthorized",
    "__1": "data",
    "__2": "exfiltration",
    "__3": "attempt",
    "__4": "",
    "__5": "",
    "__6": ""
  },
  {
    "TimeGenerated": "2023-04-18",
    "ResourceId": "/subscriptions/0ef13098-0091-4f90-823b-df2c31308c8c/resourceGroups/GmuRg1/providers/Microsoft.Storage/storageAccounts/sentinelstorage32str",
    "SourceIP": "101.56.17.109",
    "DestinationIP": "10.0.0.55",
    "Protocol": "192.168.13.15",
    "FileName": "UDP",
    "FileHash": "phishing.html",
    "ThreatType": "9h0i1j2k3l4m5n6o7p8q9r0s1t2u3v4w",
    "Action": "Phishing",
    "Justification": "Blocked",
    "": "Potential",
    "__1": "phishing",
    "__2": "attack",
    "__3": "vector",
    "__4": "",
    "__5": "",
    "__6": ""
  },
  {
    "TimeGenerated": "2023-04-22",
    "ResourceId": "/subscriptions/0ef13098-0091-4f90-823b-df2c31308c8c/resourceGroups/GmuRg1/providers/Microsoft.Storage/storageAccounts/sentinelstorage32str",
    "SourceIP": "101.56.17.110",
    "DestinationIP": "192.168.27.5",
    "Protocol": "10.0.0.68",
    "FileName": "UDP",
    "FileHash": "pwstealer.dll",
    "ThreatType": "3r4s5t6u7v8w9x0y1z2a3b4c5d6e7f8g",
    "Action": "PwStealer",
    "Justification": "Blocked",
    "": "Potential",
    "__1": "password",
    "__2": "stealing",
    "__3": "attempt",
    "__4": "",
    "__5": "",
    "__6": ""
  },
  {
    "TimeGenerated": "2023-04-15",
    "ResourceId": "/subscriptions/0ef13098-0091-4f90-823b-df2c31308c8c/resourceGroups/GmuRg1/providers/Microsoft.Storage/storageAccounts/sentinelstorage32str",
    "SourceIP": "101.56.17.111",
    "DestinationIP": "10.0.0.25",
    "Protocol": "192.168.2.8",
    "FileName": "TCP",
    "FileHash": "ransomware.exe",
    "ThreatType": "1a2b3c4d5e6f7g8h9i0j1k2l3m4n5o6p",
    "Action": "Ransomware",
    "Justification": "Blocked",
    "": "Potential",
    "__1": "data",
    "__2": "encryption",
    "__3": "threat",
    "__4": "",
    "__5": "",
    "__6": ""
  },
  {
    "TimeGenerated": "2023-04-19",
    "ResourceId": "/subscriptions/0ef13098-0091-4f90-823b-df2c31308c8c/resourceGroups/GmuRg1/providers/Microsoft.Storage/storageAccounts/sentinelstorage32str",
    "SourceIP": "101.56.17.112",
    "DestinationIP": "10.0.0.60",
    "Protocol": "172.16.15.25",
    "FileName": "UDP",
    "FileHash": "rat.exe",
    "ThreatType": "1n2o3p4q5r6s7t8u9v0w1x2y3z4a5b6c",
    "Action": "RAT",
    "Justification": "Blocked",
    "": "Potential",
    "__1": "remote",
    "__2": "access",
    "__3": "trojan",
    "__4": "",
    "__5": "",
    "__6": ""
  },
  {
    "TimeGenerated": "2023-04-18",
    "ResourceId": "/subscriptions/0ef13098-0091-4f90-823b-df2c31308c8c/resourceGroups/GmuRg1/providers/Microsoft.Storage/storageAccounts/sentinelstorage32str",
    "SourceIP": "101.56.17.113",
    "DestinationIP": "172.16.12.20",
    "Protocol": "192.168.12.10",
    "FileName": "TCP",
    "FileHash": "remoteaccess.exe",
    "ThreatType": "3r4s5t6u7v8w9x0y1z2a3b4c5d6e7f8g",
    "Action": "RemoteAccess",
    "Justification": "Blocked",
    "": "Unauthorized",
    "__1": "remote",
    "__2": "access",
    "__3": "attempt",
    "__4": "",
    "__5": "",
    "__6": ""
  },
  {
    "TimeGenerated": "2023-04-20",
    "ResourceId": "/subscriptions/0ef13098-0091-4f90-823b-df2c31308c8c/resourceGroups/GmuRg1/providers/Microsoft.Storage/storageAccounts/sentinelstorage32str",
    "SourceIP": "101.56.17.114",
    "DestinationIP": "192.168.19.10",
    "Protocol": "10.0.0.52",
    "FileName": "UDP",
    "FileHash": "rogue_av.exe",
    "ThreatType": "5t6u7v8w9x0y1z2a3b4c5d6e7f8g9h0i",
    "Action": "RogueAV",
    "Justification": "Blocked",
    "": "Potential",
    "__1": "rogue",
    "__2": "antivirus",
    "__3": "software",
    "__4": "",
    "__5": "",
    "__6": ""
  },
  {
    "TimeGenerated": "2023-04-16",
    "ResourceId": "/subscriptions/0ef13098-0091-4f90-823b-df2c31308c8c/resourceGroups/GmuRg1/providers/Microsoft.Storage/storageAccounts/sentinelstorage32str",
    "SourceIP": "101.56.17.115",
    "DestinationIP": "10.0.0.35",
    "Protocol": "172.16.4.12",
    "FileName": "TCP",
    "FileHash": "rootkit.exe",
    "ThreatType": "9p8o7n6m5l4k3j2i1h0g9f8e7d6c5b4a",
    "Action": "Rootkit",
    "Justification": "Blocked",
    "": "Potential",
    "__1": "system",
    "__2": "compromise",
    "__3": "attempt",
    "__4": "",
    "__5": "",
    "__6": ""
  },
  {
    "TimeGenerated": "2023-04-21",
    "ResourceId": "/subscriptions/0ef13098-0091-4f90-823b-df2c31308c8c/resourceGroups/GmuRg1/providers/Microsoft.Storage/storageAccounts/sentinelstorage32str",
    "SourceIP": "101.56.17.116",
    "DestinationIP": "172.16.25.15",
    "Protocol": "192.168.25.8",
    "FileName": "UDP",
    "FileHash": "scareware.exe",
    "ThreatType": "1l2m3n4o5p6q7r8s9t0u1v2w3x4y5z6a",
    "Action": "Scareware",
    "Justification": "Blocked",
    "": "Potential",
    "__1": "scareware/rogue",
    "__2": "security",
    "__3": "software",
    "__4": "",
    "__5": "",
    "__6": ""
  },
  {
    "TimeGenerated": "2023-04-22",
    "ResourceId": "/subscriptions/0ef13098-0091-4f90-823b-df2c31308c8c/resourceGroups/GmuRg1/providers/Microsoft.Storage/storageAccounts/sentinelstorage32str",
    "SourceIP": "101.56.17.117",
    "DestinationIP": "10.0.0.85",
    "Protocol": "192.168.29.15",
    "FileName": "UDP",
    "FileHash": "spam_emails.txt",
    "ThreatType": "5x6y7z8a9b0c1d2e3f4g5h6i7j8k9l0m",
    "Action": "Spam",
    "Justification": "Blocked",
    "": "Potential",
    "__1": "spam",
    "__2": "email",
    "__3": "campaign",
    "__4": "",
    "__5": "",
    "__6": ""
  },
  {
    "TimeGenerated": "2023-04-16",
    "ResourceId": "/subscriptions/0ef13098-0091-4f90-823b-df2c31308c8c/resourceGroups/GmuRg1/providers/Microsoft.Storage/storageAccounts/sentinelstorage32str",
    "SourceIP": "101.56.17.118",
    "DestinationIP": "192.168.4.20",
    "Protocol": "10.0.0.22",
    "FileName": "UDP",
    "FileHash": "spyware.dll",
    "ThreatType": "3c2b1a9g8f7e6d5c4b3a2f1e0d9c8b7a",
    "Action": "Spyware",
    "Justification": "Blocked",
    "": "Unauthorized",
    "__1": "data",
    "__2": "collection",
    "__3": "attempt",
    "__4": "",
    "__5": "",
    "__6": ""
  },
  {
    "TimeGenerated": "2023-04-15",
    "ResourceId": "/subscriptions/0ef13098-0091-4f90-823b-df2c31308c8c/resourceGroups/GmuRg1/providers/Microsoft.Storage/storageAccounts/sentinelstorage32str",
    "SourceIP": "101.56.17.119",
    "DestinationIP": "192.168.1.5",
    "Protocol": "10.0.0.8",
    "FileName": "TCP",
    "FileHash": "malware.exe",
    "ThreatType": "4e08fee8f6d7c7e9b1e9846b9d3c7a9c",
    "Action": "Trojan",
    "Justification": "Blocked",
    "": "Known",
    "__1": "malware",
    "__2": "signature",
    "__3": "",
    "__4": "",
    "__5": "",
    "__6": ""
  },
  {
    "TimeGenerated": "2023-04-18",
    "ResourceId": "/subscriptions/0ef13098-0091-4f90-823b-df2c31308c8c/resourceGroups/GmuRg1/providers/Microsoft.Storage/storageAccounts/sentinelstorage32str",
    "SourceIP": "101.56.17.120",
    "DestinationIP": "192.168.14.10",
    "Protocol": "10.0.0.42",
    "FileName": "TCP",
    "FileHash": "webshell.php",
    "ThreatType": "5x6y7z8a9b0c1d2e3f4g5h6i7j8k9l0m",
    "Action": "WebShell",
    "Justification": "Blocked",
    "": "Potential",
    "__1": "web",
    "__2": "application",
    "__3": "compromise",
    "__4": "",
    "__5": "",
    "__6": ""
  },
  {
    "TimeGenerated": "2023-04-18",
    "ResourceId": "/subscriptions/0ef13098-0091-4f90-823b-df2c31308c8c/resourceGroups/GmuRg1/providers/Microsoft.Storage/storageAccounts/sentinelstorage32str",
    "SourceIP": "101.56.17.121",
    "DestinationIP": "192.168.11.5",
    "Protocol": "10.0.0.38",
    "FileName": "UDP",
    "FileHash": "worm.dll",
    "ThreatType": "7b8c9d0e1f2g3h4i5j6k7l8m9n0o1p2q",
    "Action": "Worm",
    "Justification": "Blocked",
    "": "Potential",
    "__1": "self-propagating",
    "__2": "malware",
    "__3": "",
    "__4": "",
    "__5": "",
    "__6": ""
  },
  {
    "TimeGenerated": "2023-04-23",
    "ResourceId": "/subscriptions/0ef13098-0091-4f90-823b-df2c31308c8c/resourceGroups/GmuRg1/providers/Microsoft.Storage/storageAccounts/sentinelstorage32str",
    "SourceIP": "101.56.17.122",
    "DestinationIP": "192.168.30.10",
    "Protocol": 10,
    "FileName": "",
    "FileHash": "",
    "ThreatType": "",
    "Action": "",
    "Justification": "",
    "": "",
    "__1": "",
    "__2": "",
    "__3": "",
    "__4": "",
    "__5": "",
    "__6": ""
  },
  {
    "TimeGenerated": "2023-04-18",
    "ResourceId": "/subscriptions/0ef13098-0091-4f90-823b-df2c31308c8c/resourceGroups/GmuRg1/providers/Microsoft.Storage/storageAccounts/sentinelstorage32str",
    "SourceIP": "101.56.17.123",
    "DestinationIP": "192.168.14.11",
    "Protocol": "10.0.0.42",
    "FileName": "TCP",
    "FileHash": "webshell.php",
    "ThreatType": "5x6y7z8a9b0c1d2e3f4g5h6i7j8k9l0m",
    "Action": "WebShell",
    "Justification": "Blocked",
    "": "Potential",
    "__1": "web",
    "__2": "application",
    "__3": "compromise",
    "__4": "",
    "__5": "",
    "__6": ""
  },
  {
    "TimeGenerated": "2023-04-18",
    "ResourceId": "/subscriptions/0ef13098-0091-4f90-823b-df2c31308c8c/resourceGroups/GmuRg1/providers/Microsoft.Storage/storageAccounts/sentinelstorage32str",
    "SourceIP": "101.56.17.124",
    "DestinationIP": "192.168.14.12",
    "Protocol": "10.0.0.42",
    "FileName": "TCP",
    "FileHash": "webshell.php",
    "ThreatType": "5x6y7z8a9b0c1d2e3f4g5h6i7j8k9l0m",
    "Action": "WebShell",
    "Justification": "Blocked",
    "": "Potential",
    "__1": "web",
    "__2": "application",
    "__3": "compromise",
    "__4": "",
    "__5": "",
    "__6": ""
  },
  {
    "TimeGenerated": "2023-04-18",
    "ResourceId": "/subscriptions/0ef13098-0091-4f90-823b-df2c31308c8c/resourceGroups/GmuRg1/providers/Microsoft.Storage/storageAccounts/sentinelstorage32str",
    "SourceIP": "101.56.17.125",
    "DestinationIP": "192.168.14.13",
    "Protocol": "10.0.0.42",
    "FileName": "TCP",
    "FileHash": "webshell.php",
    "ThreatType": "5x6y7z8a9b0c1d2e3f4g5h6i7j8k9l0m",
    "Action": "WebShell",
    "Justification": "Blocked",
    "": "Potential",
    "__1": "web",
    "__2": "application",
    "__3": "compromise",
    "__4": "",
    "__5": "",
    "__6": ""
  },
  {
    "TimeGenerated": "2023-04-18",
    "ResourceId": "/subscriptions/0ef13098-0091-4f90-823b-df2c31308c8c/resourceGroups/GmuRg1/providers/Microsoft.Storage/storageAccounts/sentinelstorage32str",
    "SourceIP": "101.56.17.126",
    "DestinationIP": "192.168.14.14",
    "Protocol": "10.0.0.42",
    "FileName": "TCP",
    "FileHash": "webshell.php",
    "ThreatType": "5x6y7z8a9b0c1d2e3f4g5h6i7j8k9l0m",
    "Action": "WebShell",
    "Justification": "Blocked",
    "": "Potential",
    "__1": "web",
    "__2": "application",
    "__3": "compromise",
    "__4": "",
    "__5": "",
    "__6": ""
  },
  {
    "TimeGenerated": "2023-04-17",
    "ResourceId": "/subscriptions/0ef13098-0091-4f90-823b-df2c31308c8c/resourceGroups/GmuRg1/providers/Microsoft.Storage/storageAccounts/sentinelstorage32str",
    "SourceIP": "101.56.17.127",
    "DestinationIP": "192.168.14.15",
    "Protocol": "192.168.10.12",
    "FileName": "TCP",
    "FileHash": "botnet.exe",
    "ThreatType": "1l2m3n4o5p6q7r8s9t0u1v2w3x4y5z6a",
    "Action": "Botnet",
    "Justification": "Blocked",
    "": "Potential",
    "__1": "botnet",
    "__2": "communication",
    "__3": "attempt",
    "__4": "",
    "__5": "",
    "__6": ""
  },
  {
    "TimeGenerated": "2023-04-18",
    "ResourceId": "/subscriptions/0ef13098-0091-4f90-823b-df2c31308c8c/resourceGroups/GmuRg1/providers/Microsoft.Storage/storageAccounts/sentinelstorage32str",
    "SourceIP": "101.56.17.128",
    "DestinationIP": "192.168.14.16",
    "Protocol": "192.168.13.15",
    "FileName": "UDP",
    "FileHash": "phishing.html",
    "ThreatType": "9h0i1j2k3l4m5n6o7p8q9r0s1t2u3v4w",
    "Action": "Phishing",
    "Justification": "Blocked",
    "": "Potential",
    "__1": "phishing",
    "__2": "attack",
    "__3": "vector",
    "__4": "",
    "__5": "",
    "__6": ""
  },
  {
    "TimeGenerated": "2023-04-18",
    "ResourceId": "/subscriptions/0ef13098-0091-4f90-823b-df2c31308c8c/resourceGroups/GmuRg1/providers/Microsoft.Storage/storageAccounts/sentinelstorage32str",
    "SourceIP": "101.56.17.129",
    "DestinationIP": "192.168.14.17",
    "Protocol": "192.168.13.16",
    "FileName": "UDP",
    "FileHash": "phishing.html",
    "ThreatType": "9h0i1j2k3l4m5n6o7p8q9r0s1t2u3v4w",
    "Action": "Phishing",
    "Justification": "Blocked",
    "": "Potential",
    "__1": "phishing",
    "__2": "attack",
    "__3": "vector",
    "__4": "",
    "__5": "",
    "__6": ""
  }
]
"@

# Create the function to create the authorization signature
Function Build-Signature ($customerId, $sharedKey, $date, $contentLength, $method, $contentType, $resource)
{
    $xHeaders = "x-ms-date:" + $date
    $stringToHash = $method + "`n" + $contentLength + "`n" + $contentType + "`n" + $xHeaders + "`n" + $resource

$bytesToHash = [Text.Encoding]::UTF8.GetBytes($stringToHash)
    $keyBytes = [Convert]::FromBase64String($sharedKey)

$sha256 = New-Object System.Security.Cryptography.HMACSHA256
    $sha256.Key = $keyBytes
    $calculatedHash = $sha256.ComputeHash($bytesToHash)
    $encodedHash = [Convert]::ToBase64String($calculatedHash)
    $authorization = 'SharedKey {0}:{1}' -f $customerId,$encodedHash
    return $authorization
}

# Create the function to create and post the request
Function Post-LogAnalyticsData($customerId, $sharedKey, $body, $logType)
{
    $method = "POST"
    $contentType = "application/json"
    $resource = "/api/logs"
    $rfc1123date = [DateTime]::UtcNow.ToString("r")
    $contentLength = $body.Length
    $signature = Build-Signature -customerId $customerId -sharedKey $sharedKey -date $rfc1123date -contentLength $contentLength -method $method -contentType $contentType -resource $resource
    $uri = "https://" + $customerId + ".ods.opinsights.azure.com" + $resource + "?api-version=2016-04-01"

$headers = @{
        "Authorization" = $signature;
        "Log-Type" = $logType;
        "x-ms-date" = $rfc1123date;
        "time-generated-field" = $TimeGeneratedField;
    }

$response = Invoke-WebRequest -Uri $uri -Method $method -ContentType $contentType -Headers $headers -Body $body -UseBasicParsing
    return $response.StatusCode

}

# Submit the data to the API endpoint
Post-LogAnalyticsData -customerId $customerId -sharedKey $sharedKey -body ([System.Text.Encoding]::UTF8.GetBytes($json)) -logType $logType