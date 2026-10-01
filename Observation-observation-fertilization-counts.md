# observation-fertilization-counts - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **observation-fertilization-counts**

## Example Observation: observation-fertilization-counts

Profile: [Observation: EE VRIS Fertilization Counts](StructureDefinition-ee-vris-observation-fertilization-counts.md)

**partOf**: [Procedure IVF](Procedure-procedure-fertilization1.md)

**status**: Final

**code**: Fertilization counts

**subject**: [Leena Lööve (official) Female, DoB: 1983-01-11 ( https://fhir.ee/sid/pid/est/ni#38301105216)](Patient-patientFemale.md)

**effective**: 2025-03-26 10:00:00+0200

**note**: 

> 

Kõik 8 munarakku kasutati IVF meetodiks, 6 viljastusid korrektselt.


> **component****code**: 12345678**value**: 0

> **component****code**: 22345678**value**: 8

> **component****code**: 32345678**value**: 0

> **component****code**: 42345678**value**: 6

> **component****code**: 52345678**value**: 6



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "observation-fertilization-counts",
  "meta" : {
    "profile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-observation-fertilization-counts"]
  },
  "partOf" : [{
    "reference" : "Procedure/procedure-fertilization1"
  }],
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "TODO",
      "display" : "Fertilization counts"
    }]
  },
  "subject" : {
    "reference" : "Patient/patientFemale"
  },
  "effectiveDateTime" : "2025-03-26T10:00:00+02:00",
  "note" : [{
    "text" : "Kõik 8 munarakku kasutati IVF meetodiks, 6 viljastusid korrektselt."
  }],
  "component" : [{
    "code" : {
      "coding" : [{
        "code" : "12345678"
      }]
    },
    "valueInteger" : 0
  },
  {
    "code" : {
      "coding" : [{
        "code" : "22345678"
      }]
    },
    "valueInteger" : 8
  },
  {
    "code" : {
      "coding" : [{
        "code" : "32345678"
      }]
    },
    "valueInteger" : 0
  },
  {
    "code" : {
      "coding" : [{
        "code" : "42345678"
      }]
    },
    "valueInteger" : 6
  },
  {
    "code" : {
      "coding" : [{
        "code" : "52345678"
      }]
    },
    "valueInteger" : 6
  }]
}

```
