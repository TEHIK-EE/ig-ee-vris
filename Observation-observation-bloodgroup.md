# observation-bloodgroup - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **observation-bloodgroup**

## Example Observation: observation-bloodgroup

Language: et

Profile: [Observation: EE VRIS Blood Group](StructureDefinition-ee-vris-observation-blood-group.md)

**status**: Final

**category**: Laboratory

**code**: 34530-6

**subject**: [D-2024-001](Patient-patientDonorMale.md)

**effective**: 2024-06-10

**note**: 

> 

Veregrupp määratud enne.


> **component****code**: 57743-7**value**: Blood group B

> **component****code**: 978-7**value**: Positive



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "observation-bloodgroup",
  "meta" : {
    "profile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-observation-blood-group"]
  },
  "language" : "et",
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "laboratory"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "34530-6"
    }]
  },
  "subject" : {
    "reference" : "Patient/patientDonorMale",
    "display" : "D-2024-001"
  },
  "effectiveDateTime" : "2024-06-10",
  "note" : [{
    "text" : "Veregrupp määratud enne."
  }],
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "57743-7"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "112149005"
      }]
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "978-7"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "10828004"
      }]
    }
  }]
}

```
