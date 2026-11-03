# procedure-donationSperm1 - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **procedure-donationSperm1**

## Example Procedure: procedure-donationSperm1

Profile: [Procedure: EE VRIS Donation](StructureDefinition-ee-vris-procedure-donation.md)

**status**: Completed

**code**: annetamine

**subject**: [Ygrek Mister (official) Male, DoB: 1983-01-11 ( DR: 38301105216)](Patient-patientDonorMale.md)

**encounter**: [Encounter: status = completed; actualPeriod = 2025-02-20 09:00:00+0200 --> 2025-02-20 11:30:00+0200](Encounter-encounter-donationSperm2025.md)

**occurrence**: 2025-02-20 09:30:00+0200

### Performers

| | |
| :--- | :--- |
| - | **Actor** |
| * | [Toktor Arst (https://fhir.ee/sid/pid/est/ni#38201010015) at Nova Vita Kliinik AS (https://fhir.ee/sid/org/est/br#10285009) (https://fhir.ee/sid/pro/est/pho#D99876)](PractitionerRole-practitionerrole-doctor.md) |

### Useds

| | |
| :--- | :--- |
| - | **Reference** |
| * | [BiologicallyDerivedProduct: extension = ->Leena Lööve (official) Female, DoB: 1983-01-11 ( https://fhir.ee/sid/pid/est/ni#38301105216); productCode = Seemnerakud; biologicalSourceEvent = ABC123; productStatus = available (available)](BiologicallyDerivedProduct-sperm1.md) |



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "procedure-donationSperm1",
  "meta" : {
    "profile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-procedure-donation"]
  },
  "status" : "completed",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "puudu",
      "display" : "annetamine"
    }]
  },
  "subject" : {
    "reference" : "Patient/patientDonorMale"
  },
  "encounter" : {
    "reference" : "Encounter/encounter-donationSperm2025"
  },
  "occurrenceDateTime" : "2025-02-20T09:30:00+02:00",
  "performer" : [{
    "actor" : {
      "reference" : "PractitionerRole/practitionerrole-doctor"
    }
  }],
  "used" : [{
    "reference" : {
      "reference" : "BiologicallyDerivedProduct/sperm1"
    }
  }]
}

```
