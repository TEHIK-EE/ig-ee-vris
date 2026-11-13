# sperm1 - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **sperm1**

## Example BiologicallyDerivedProduct: sperm1

Profile: [BiologicallyDerivedProduct: EE VRIS Sperm](StructureDefinition-ee-vris-sperm.md)

**BiologicallyDerivedProduct Intended Recipient**: [Leena Lööve (official) Female, DoB: 1983-01-11 ( https://fhir.ee/sid/pid/est/ni#38301105216)](Patient-patientFemale.md)

**productCode**: Seemnerakud

**biologicalSourceEvent**: ABC123

**productStatus**: [not stated]: available (available)

### Collections

| | |
| :--- | :--- |
| - | **Source** |
| * | [Ygrek Mister (official) Male, DoB: 1983-01-11 ( DR: 38301105216)](Patient-patientDonorMale.md) |

> **property****type**: donated-count**value**: 4

> **property****type**: cell-origin-role**value**: Mittepartnerannetaj

> **property****type**: collection-method**value**: Ejaculation

> **property****type**: donor-stimulation-method**value**: Follitropin + Chorionic gonadotropin

> **property****type**: preservation-reason**value**: |Oncologic (qualifier value)|

> **property****type**: origin-country**value**: Eesti



## Resource Content

```json
{
  "resourceType" : "BiologicallyDerivedProduct",
  "id" : "sperm1",
  "meta" : {
    "profile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-sperm"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/biologicallyderivedproduct-intendedRecipient",
    "valueReference" : {
      "reference" : "Patient/patientFemale"
    }
  }],
  "productCode" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "119347001",
      "display" : "Seemnerakud"
    }]
  },
  "biologicalSourceEvent" : {
    "value" : "ABC123"
  },
  "productStatus" : {
    "code" : "available"
  },
  "collection" : {
    "source" : {
      "reference" : "Patient/patientDonorMale"
    }
  },
  "property" : [{
    "type" : {
      "coding" : [{
        "system" : "https://fhir.ee/CodeSystem/vris-tunnuse-tyyp",
        "code" : "donated-count"
      }]
    },
    "valueInteger" : 4
  },
  {
    "type" : {
      "coding" : [{
        "system" : "https://fhir.ee/CodeSystem/vris-tunnuse-tyyp",
        "code" : "cell-origin-role"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "237391000181109",
        "display" : "Mittepartnerannetaj"
      }]
    }
  },
  {
    "type" : {
      "coding" : [{
        "system" : "https://fhir.ee/CodeSystem/vris-tunnuse-tyyp",
        "code" : "collection-method"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "TODO",
        "display" : "Ejaculation"
      }]
    }
  },
  {
    "type" : {
      "coding" : [{
        "system" : "https://fhir.ee/CodeSystem/vris-tunnuse-tyyp",
        "code" : "donor-stimulation-method"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "TODO",
        "display" : "Follitropin + Chorionic gonadotropin"
      }]
    }
  },
  {
    "type" : {
      "coding" : [{
        "system" : "https://fhir.ee/CodeSystem/vris-tunnuse-tyyp",
        "code" : "preservation-reason"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "3428006",
        "display" : "|Oncologic (qualifier value)|"
      }]
    }
  },
  {
    "type" : {
      "coding" : [{
        "system" : "https://fhir.ee/CodeSystem/vris-tunnuse-tyyp",
        "code" : "origin-country"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://fhir.ee/CodeSystem/rtk",
        "code" : "EE"
      }]
    }
  }]
}

```
