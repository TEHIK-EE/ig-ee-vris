# encounter-donationSperm2025 - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **encounter-donationSperm2025**

## Example Encounter: encounter-donationSperm2025

Profile: [Encounter: EE VRIS Encounter](StructureDefinition-ee-vris-encounter.md)

**status**: Completed

**subject**: [Ygrek Mister (official) Male, DoB: 1983-01-11 ( DR)](Patient-patientDonorMale.md)

**episodeOfCare**: [EpisodeOfCare: identifier = ABC123; status = finished; period = 2025-02-20 --> 2025-02-20](EpisodeOfCare-eoc-donationSperm2025.md)

**serviceProvider**: [Organization Nova Vita Kliinik AS](Organization-organization-novavita1.md)

### Participants

| | |
| :--- | :--- |
| - | **Actor** |
| * | [PractitionerRole: identifier = https://fhir.ee/sid/pro/est/pho#D99876; period = 2008-01-01 --> (ongoing)](PractitionerRole-practitionerrole-doctor.md) |

**actualPeriod**: 2025-02-20 09:00:00+0200 --> 2025-02-20 11:30:00+0200



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "encounter-donationSperm2025",
  "meta" : {
    "profile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-encounter"]
  },
  "status" : "completed",
  "subject" : {
    "reference" : "Patient/patientDonorMale"
  },
  "episodeOfCare" : [{
    "reference" : "EpisodeOfCare/eoc-donationSperm2025"
  }],
  "serviceProvider" : {
    "reference" : "Organization/organization-novavita1"
  },
  "participant" : [{
    "actor" : {
      "reference" : "PractitionerRole/practitionerrole-doctor"
    }
  }],
  "actualPeriod" : {
    "start" : "2025-02-20T09:00:00+02:00",
    "end" : "2025-02-20T11:30:00+02:00"
  }
}

```
