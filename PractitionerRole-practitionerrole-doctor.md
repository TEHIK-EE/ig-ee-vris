# practitionerrole-doctor - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **practitionerrole-doctor**

## Example PractitionerRole: practitionerrole-doctor

Language: et

Toktor Arst (https://fhir.ee/sid/pid/est/ni#38201010015) at Nova Vita Kliinik AS (https://fhir.ee/sid/org/est/br#10285009) (https://fhir.ee/sid/pro/est/pho#D99876)

-------

| | | | |
| :--- | :--- | :--- | :--- |
| Active: | true | Valid Period: | 2008-01-01 --> (ongoing) |
| Practitioner: | [Toktor Arst (https://fhir.ee/sid/pid/est/ni#38201010015)](Practitioner-practitioner-doctor.md) | | |
| Organization: | [Nova Vita Kliinik AS (https://fhir.ee/sid/org/est/br#10285009)](Organization-organization-novavita1.md) | | |



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "practitionerrole-doctor",
  "language" : "et",
  "identifier" : [{
    "system" : "https://fhir.ee/sid/pro/est/pho",
    "value" : "D99876"
  }],
  "active" : true,
  "period" : {
    "start" : "2008-01-01"
  },
  "practitioner" : {
    "reference" : "Practitioner/practitioner-doctor"
  },
  "organization" : {
    "reference" : "Organization/organization-novavita1"
  }
}

```
