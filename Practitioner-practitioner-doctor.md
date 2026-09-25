# practitioner-doctor - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **practitioner-doctor**

## Example Practitioner: practitioner-doctor

Language: et

**identifier**: `https://fhir.ee/sid/pid/est/ni`/38201010015, `https://fhir.ee/sid/pro/est/pho`/D99876 (, period: 1999-12-01 --> (ongoing))

**name**: Toktor Arst 



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "practitioner-doctor",
  "language" : "et",
  "identifier" : [{
    "system" : "https://fhir.ee/sid/pid/est/ni",
    "value" : "38201010015"
  },
  {
    "system" : "https://fhir.ee/sid/pro/est/pho",
    "value" : "D99876",
    "period" : {
      "start" : "1999-12-01"
    }
  }],
  "name" : [{
    "family" : "Arst",
    "given" : ["Toktor"]
  }]
}

```
