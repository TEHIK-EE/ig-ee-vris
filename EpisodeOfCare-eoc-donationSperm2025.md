# eoc-donationSperm2025 - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **eoc-donationSperm2025**

## Example EpisodeOfCare: eoc-donationSperm2025

Profile: [EpisodeOfCare: EE VRIS Episode of Care](StructureDefinition-ee-vris-episode-of-care.md)

**identifier**: ABC123

**status**: Finished

**type**: Doonorluse sündmus

**patient**: [Ygrek Mister (official) Male, DoB: 1983-01-11 ( DR: 38301105216)](Patient-patientDonorMale.md)

**managingOrganization**: [Nova Vita Kliinik AS (https://fhir.ee/sid/org/est/br#10285009)](Organization-organization-novavita1.md)

**period**: 2025-02-20 --> 2025-02-20

**careManager**: [Toktor Arst (https://fhir.ee/sid/pid/est/ni#38201010015) at Nova Vita Kliinik AS (https://fhir.ee/sid/org/est/br#10285009) (https://fhir.ee/sid/pro/est/pho#D99876)](PractitionerRole-practitionerrole-doctor.md)



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
  "type" : [{
    "coding" : [{
      "system" : "https://fhir.ee/CodeSystem/vris-episoodi-tyyp",
      "code" : "donorship",
      "display" : "Doonorluse sündmus"
    }]
  }],
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
