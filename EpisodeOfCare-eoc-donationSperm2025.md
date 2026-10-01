# eoc-donationSperm2025 - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **eoc-donationSperm2025**

## Example EpisodeOfCare: eoc-donationSperm2025

Profile: [EpisodeOfCare: EE VRIS Episode of Care](StructureDefinition-ee-vris-episode-of-care.md)

**identifier**: ABC123

**status**: Finished

**patient**: [Ygrek Mister (official) Male, DoB: 1983-01-11 ( DR)](Patient-patientDonorMale.md)

**managingOrganization**: [Organization Nova Vita Kliinik AS](Organization-organization-novavita1.md)

**period**: 2025-02-20 --> 2025-02-20

**careManager**: [PractitionerRole: identifier = https://fhir.ee/sid/pro/est/pho#D99876; period = 2008-01-01 --> (ongoing)](PractitionerRole-practitionerrole-doctor.md)



## Resource Content

```json
{
  "resourceType" : "EpisodeOfCare",
  "id" : "eoc-donationSperm2025",
  "meta" : {
    "profile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-episode-of-care"]
  },
  "identifier" : [{
    "value" : "ABC123"
  }],
  "status" : "finished",
  "patient" : {
    "reference" : "Patient/patientDonorMale"
  },
  "managingOrganization" : {
    "reference" : "Organization/organization-novavita1"
  },
  "period" : {
    "start" : "2025-02-20",
    "end" : "2025-02-20"
  },
  "careManager" : {
    "reference" : "PractitionerRole/practitionerrole-doctor"
  }
}

```
