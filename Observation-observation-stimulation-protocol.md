# observation-stimulation-protocol - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **observation-stimulation-protocol**

## Example Observation: observation-stimulation-protocol

Profile: [Observation: EE VRIS Ovarian Stimulation Protocol](StructureDefinition-ee-vris-observation-stimulation-protocol.md)

**status**: Final

**category**: Procedure

**code**: Assisted fertilization

**subject**: [Leena Lööve (official) Female, DoB: 1983-01-11 ( https://fhir.ee/sid/pid/est/ni#38301105216)](Patient-patientFemale.md)

**effective**: 2025-03-15

**note**: 

> 

Standardne antagonisti protokoll, patsient reageeris hästi.


> **component****code**: Controlled ovarian stimulation**value**: true

> **component****code**: ostrogeen ja progestageen

> **component****code**: Gonadotropiini vabastajahormooni agonistid

> **component****code**: Inimese gonadotropiin (uFSH)

> **component****code**: Loomulik ovulatsioon

> **component****code**: Progesteroon



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "observation-stimulation-protocol",
  "meta" : {
    "profile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-observation-stimulation-protocol"]
  },
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "procedure"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "63487001"
    }]
  },
  "subject" : {
    "reference" : "Patient/patientFemale"
  },
  "effectiveDateTime" : "2025-03-15",
  "note" : [{
    "text" : "Standardne antagonisti protokoll, patsient reageeris hästi."
  }],
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "732970000"
      }]
    },
    "valueBoolean" : true
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "170960008",
        "display" : "ostrogeen ja progestageen"
      }]
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "TODO",
        "display" : "Gonadotropiini vabastajahormooni agonistid"
      }]
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "TODO",
        "display" : "Inimese gonadotropiin (uFSH)"
      }]
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "TODO",
        "display" : "Loomulik ovulatsioon"
      }]
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "TODO",
        "display" : "Progesteroon"
      }]
    }
  }]
}

```
