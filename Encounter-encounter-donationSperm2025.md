# encounter-donationSperm2025 - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **encounter-donationSperm2025**

## Example Encounter: encounter-donationSperm2025

Profile: [Encounter: EE VRIS Encounter](StructureDefinition-ee-vris-encounter.md)

**status**: Completed

**subject**: [Ygrek Mister (official) Male, DoB: 1983-01-11 ( DR: 38301105216)](Patient-patientDonorMale.md)

**episodeOfCare**: [EpisodeOfCare: identifier = ABC123; status = finished; type = Doonorluse sündmus; period = 2025-02-20 --> 2025-02-20](EpisodeOfCare-eoc-donationSperm2025.md)

**serviceProvider**: [Nova Vita Kliinik AS (https://fhir.ee/sid/org/est/br#10285009)](Organization-organization-novavita1.md)

### Participants

| | |
| :--- | :--- |
| - | **Actor** |
| * | [Toktor Arst (https://fhir.ee/sid/pid/est/ni#38201010015) at Nova Vita Kliinik AS (https://fhir.ee/sid/org/est/br#10285009) (https://fhir.ee/sid/pro/est/pho#D99876)](PractitionerRole-practitionerrole-doctor.md) |

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
