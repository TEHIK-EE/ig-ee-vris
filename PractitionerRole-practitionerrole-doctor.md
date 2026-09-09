# practitionerrole-doctor - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **practitionerrole-doctor**

## Example PractitionerRole: practitionerrole-doctor

Language: et

**identifier**: `https://fhir.ee/sid/pro/est/pho`/D99876

**active**: true

**period**: 2008-01-01 --> (ongoing)

**practitioner**: [Practitioner Toktor Arst ](Practitioner-practitioner-doctor.md)

**organization**: [Organization Nova Vita Kliinik AS](Organization-organization-novavita1.md)



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
