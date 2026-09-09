# IVF tsükkel #1 Märts 2025 - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **IVF tsükkel #1 Märts 2025**

## Example CarePlan: IVF tsükkel #1 Märts 2025

Profile: [CarePlan: EEVRIS Cycle](StructureDefinition-ee-vris-care-plan.md)

**Coverage**: true

**identifier**: IVF-CYCLE-2025-001

**status**: Active

**intent**: Plan

**category**: Fresh IVF cycle

**title**: IVF tsükkel #1 Märts 2025

**description**: Värske IVF tsükkel doonori spermat ja retsipiendi enda munarakke kasutades

**subject**: [Leena Lööve (official) Female, DoB: 1983-01-11 ( https://fhir.ee/sid/pid/est/ni#38301105216)](Patient-patientFemale.md)

**period**: 2025-03-01 --> 2025-04-20

**created**: 2025-03-01

**custodian**: [Practitioner Toktor Arst ](Practitioner-practitioner-doctor.md)

### Addresses

| | |
| :--- | :--- |
| - | **Reference** |
| * | [Condition Anovulatsiooniga seotud naisinfertiiilsus](Condition-female-fertility-indication-example1.md) |

**supportingInfo**: [Ygrek Mister (official) Male, DoB: 1983-01-11 ( DR)](Patient-patientDonorMale.md)

> **activity**

### PerformedActivities

| | |
| :--- | :--- |
| - | **Reference** |
| * | [Procedure Oocyte recovery](Procedure-procedure-oocyte-retrieval.md) |


> **activity**

### PerformedActivities

| | |
| :--- | :--- |
| - | **Reference** |
| * | [Procedure IVF](Procedure-procedure-fertilization1.md) |


> **activity**

### PerformedActivities

| | |
| :--- | :--- |
| - | **Reference** |
| * | [Procedure Embryo transfer](Procedure-procedure-embryo-transfer.md) |


> **activity**

### PerformedActivities

| | |
| :--- | :--- |
| - | **Reference** |
| * | [MedicationAdministration: status = completed; category = Outpatient medication administration; occurence[x] = 2025-03-18 08:30:00+0200; recorded = 2025-03-18 08:35:00+0200; note = Stimulatsiooni 5. päev. Patsient talub ravimit hästi.](MedicationAdministration-medicationAdministrationFollitropin1.md) |


> **activity**

### PerformedActivities

| | |
| :--- | :--- |
| - | **Reference** |
| * | [Observation Assisted fertilization](Observation-observation-stimulation-protocol.md) |


> **activity**

### PerformedActivities

| | |
| :--- | :--- |
| - | **Reference** |
| * | [Observation Fertilization counts](Observation-observation-fertilization-counts.md) |


> **activity**

### PerformedActivities

| | |
| :--- | :--- |
| - | **Reference** |
| * | [Observation Embryo lifecycle summary](Observation-observation-embryo-lifecycle-counts.md) |


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
    "valueBoolean" : true
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
  },
  {
    "performedActivity" : [{
      "reference" : {
        "reference" : "Procedure/procedure-fertilization1"
      }
    }]
  },
  {
    "performedActivity" : [{
      "reference" : {
        "reference" : "Procedure/procedure-embryo-transfer"
      }
    }]
  },
  {
    "performedActivity" : [{
      "reference" : {
        "reference" : "MedicationAdministration/medicationAdministrationFollitropin1"
      }
    }]
  },
  {
    "performedActivity" : [{
      "reference" : {
        "reference" : "Observation/observation-stimulation-protocol"
      }
    }]
  },
  {
    "performedActivity" : [{
      "reference" : {
        "reference" : "Observation/observation-fertilization-counts"
      }
    }]
  },
  {
    "performedActivity" : [{
      "reference" : {
        "reference" : "Observation/observation-embryo-lifecycle-counts"
      }
    }]
  }],
  "note" : [{
    "text" : "Esimene IVF tsükkel patsiendi jaoks. Tulemus: kliiniline rasedus tuvastatud 12. nädalal."
  }]
}

```
