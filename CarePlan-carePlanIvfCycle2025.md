# IVF tsükkel #1 Märts 2025 - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **IVF tsükkel #1 Märts 2025**

## Example CarePlan: IVF tsükkel #1 Märts 2025

Profile: [CarePlan: EEVRIS Cycle](StructureDefinition-ee-vris-care-plan.md)

**Coverage**: Combined

**identifier**: IVF-CYCLE-2025-001

**status**: Active

**intent**: Plan

**category**: Fresh IVF cycle

**title**: IVF tsükkel #1 Märts 2025

**description**: Värske IVF tsükkel doonori spermat ja retsipiendi enda munarakke kasutades

**subject**: [Leena Lööve (official) Female, DoB: 1983-01-11 ( https://fhir.ee/sid/pid/est/ni#38301105216)](Patient-patientFemale.md)

**period**: 2025-03-01 --> 2025-04-20

**created**: 2025-03-01

**custodian**: [Toktor Arst (https://fhir.ee/sid/pid/est/ni#38201010015)](Practitioner-practitioner-doctor.md)

### Addresses

| | |
| :--- | :--- |
| - | **Reference** |
| * | [Condition Anovulatsiooniga seotud naisinfertiiilsus](Condition-female-fertility-indication-example1.md) |

**supportingInfo**: [Ygrek Mister (official) Male, DoB: 1983-01-11 ( DR: 38301105216)](Patient-patientDonorMale.md)

> **activity**

### PerformedActivities

| | |
| :--- | :--- |
| - | **Reference** |
| * | [Procedure Oocyte recovery](Procedure-procedure-oocyte-retrieval.md) |


**note**: 

> 

Esimene IVF tsükkel patsiendi jaoks. Tulemus: kliiniline rasedus tuvastatud 12. nädalal.




## Resource Content

```json
{
  "resourceType" : "CarePlan",
  "id" : "carePlanIvfCycle2025",
  "meta" : {
    "profile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-care-plan"]
  },
  "extension" : [{
    "url" : "https://fhir.ee/vris/StructureDefinition/ee-vris-terk-coverage",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "89780004",
        "display" : "Combined"
      }]
    }
  }],
  "identifier" : [{
    "value" : "IVF-CYCLE-2025-001"
  }],
  "status" : "active",
  "intent" : "plan",
  "category" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "TODO",
      "display" : "Fresh IVF cycle"
    }]
  }],
  "title" : "IVF tsükkel #1 Märts 2025",
  "description" : "Värske IVF tsükkel doonori spermat ja retsipiendi enda munarakke kasutades",
  "subject" : {
    "reference" : "Patient/patientFemale"
  },
  "period" : {
    "start" : "2025-03-01",
    "end" : "2025-04-20"
  },
  "created" : "2025-03-01",
  "custodian" : {
    "reference" : "Practitioner/practitioner-doctor"
  },
  "addresses" : [{
    "reference" : {
      "reference" : "Condition/female-fertility-indication-example1"
    }
  }],
  "supportingInfo" : [{
    "reference" : "Patient/patientDonorMale"
  }],
  "activity" : [{
    "performedActivity" : [{
      "reference" : {
        "reference" : "Procedure/procedure-oocyte-retrieval"
      }
    }]
  }],
  "note" : [{
    "text" : "Esimene IVF tsükkel patsiendi jaoks. Tulemus: kliiniline rasedus tuvastatud 12. nädalal."
  }]
}

```
