# observation-embryo-lifecycle-counts - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **observation-embryo-lifecycle-counts**

## Example Observation: observation-embryo-lifecycle-counts

Profile: [Observation: EE VRIS Embryo Lifecycle Counts](StructureDefinition-ee-vris-observation-embryo-lifecycle-counts.md)

**partOf**: [Procedure IVF](Procedure-procedure-fertilization1.md)

**status**: Final

**code**: Embryo lifecycle summary

**subject**: [Leena Lööve (official) Female, DoB: 1983-01-11 ( https://fhir.ee/sid/pid/est/ni#38301105216)](Patient-patientFemale.md)

**focus**: [BiologicallyDerivedProduct: extension = 2025-02-20,PGT,->Leena Lööve (official) Female, DoB: 1983-01-11 ( https://fhir.ee/sid/pid/est/ni#38301105216),,; productCategory = cells (cells); productCode = Entire embryo; biologicalSourceEvent = https://fhir.ee/sid/vris/procedure#fertilization-2025-02-15-001; productStatus = available (available)](BiologicallyDerivedProduct-donor-embryo1.md)

**effective**: 2025-04-01

**note**: 

> 

6 viljastunud embrüost: 1 siirdatud värskelt, 4 külmutatud, 1 hävitatud kvaliteedi tõttu.


> **component****code**: 2345123**value**: 4

> **component****code**: 2345124**value**: 1

> **component****code**: 2345129**value**: 1



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "observation-embryo-lifecycle-counts",
  "meta" : {
    "profile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-observation-embryo-lifecycle-counts"]
  },
  "partOf" : [{
    "reference" : "Procedure/procedure-fertilization1"
  }],
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "TODO",
      "display" : "Embryo lifecycle summary"
    }]
  },
  "subject" : {
    "reference" : "Patient/patientFemale"
  },
  "focus" : [{
    "reference" : "BiologicallyDerivedProduct/donor-embryo1"
  }],
  "effectiveDateTime" : "2025-04-01",
  "note" : [{
    "text" : "6 viljastunud embrüost: 1 siirdatud värskelt, 4 külmutatud, 1 hävitatud kvaliteedi tõttu."
  }],
  "component" : [{
    "code" : {
      "coding" : [{
        "code" : "2345123"
      }]
    },
    "valueInteger" : 4
  },
  {
    "code" : {
      "coding" : [{
        "code" : "2345124"
      }]
    },
    "valueInteger" : 1
  },
  {
    "code" : {
      "coding" : [{
        "code" : "2345129"
      }]
    },
    "valueInteger" : 1
  }]
}

```
