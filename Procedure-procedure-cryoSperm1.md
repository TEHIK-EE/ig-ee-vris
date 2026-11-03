# procedure-cryoSperm1 - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **procedure-cryoSperm1**

## Example Procedure: procedure-cryoSperm1

Profile: [Procedure: EE VRIS Cryopreservation](StructureDefinition-ee-vris-procedure-cryopreservation.md)

**status**: Completed

**code**: Cryopreservation of spermatozoa

**subject**: [Ygrek Mister (official) Male, DoB: 1983-01-11 ( DR: 38301105216)](Patient-patientDonorMale.md)

**encounter**: [Encounter/eoc-donationSperm2025](Encounter/eoc-donationSperm2025)

**occurrence**: 2025-02-20 11:00:00+0200

### Performers

| | |
| :--- | :--- |
| - | **Actor** |
| * | [Toktor Arst (https://fhir.ee/sid/pid/est/ni#38201010015) at Nova Vita Kliinik AS (https://fhir.ee/sid/org/est/br#10285009) (https://fhir.ee/sid/pro/est/pho#D99876)](PractitionerRole-practitionerrole-doctor.md) |

### Useds

| | |
| :--- | :--- |
| - | **Reference** |
| * | [BiologicallyDerivedProduct: productCode = Seemnerakud; identifier = ABC123-2; biologicalSourceEvent = ABC123; division = 2; productStatus = available (available); storageTempRequirements = 196 to 196 -196 °C](BiologicallyDerivedProduct-sperm1-2.md) |
| * | [BiologicallyDerivedProduct: productCode = Seemnerakud; identifier = ABC123-3; biologicalSourceEvent = ABC123; division = 3; productStatus = available (available); storageTempRequirements = 196 to 196 -196 °C](BiologicallyDerivedProduct-sperm1-3.md) |



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "procedure-cryoSperm1",
  "meta" : {
    "profile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-procedure-cryopreservation"]
  },
  "status" : "completed",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "870572003",
      "display" : "Cryopreservation of spermatozoa"
    }]
  },
  "subject" : {
    "reference" : "Patient/patientDonorMale"
  },
  "encounter" : {
    "reference" : "Encounter/eoc-donationSperm2025"
  },
  "occurrenceDateTime" : "2025-02-20T11:00:00+02:00",
  "performer" : [{
    "actor" : {
      "reference" : "PractitionerRole/practitionerrole-doctor"
    }
  }],
  "used" : [{
    "reference" : {
      "reference" : "BiologicallyDerivedProduct/sperm1-2"
    }
  },
  {
    "reference" : {
      "reference" : "BiologicallyDerivedProduct/sperm1-3"
    }
  }]
}

```
