# oocyte1 - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **oocyte1**

## Example BiologicallyDerivedProduct: oocyte1

Profile: [BiologicallyDerivedProduct: EE VRIS Oocyte](StructureDefinition-ee-vris-oocyte.md)

**Cryopreservation date**: 2025-02-20

**Cell preservation reason**: Meditsiiniline põhjus

**BiologicallyDerivedProduct Intended Recipient**: [Leena Lööve (official) Female, DoB: 1983-01-11 ( https://fhir.ee/sid/pid/est/ni#38301105216)](Patient-patientFemale.md)

> **Thawing date and count**
* thawingDate: 2025-06-15
* thawingCount: 1

**productCode**: Munarakk

**productStatus**: [not stated]: available (available)

### Collections

| | |
| :--- | :--- |
| - | **Source** |
| * | [Leena Lööve (official) Female, DoB: 1983-01-11 ( https://fhir.ee/sid/pid/est/ni#38301105216)](Patient-patientFemale.md) |

> **property****type**: donated-count**value**: 8

> **property****type**: frozen-count**value**: 5

> **property****type**: meta-phase-2-count**value**: 6

> **property****type**: cell-origin-role**value**: Säilitaja

> **property****type**: collection-method**value**: Follicular puncture

> **property****type**: oocyte-origin**value**: Patient's own oocyte

> **property****type**: oocyte-type**value**: Fresh, retrieved on fertilization day

> **property****type**: intended-use**value**: For self use

> **property****type**: preservation-reason**value**: Mitte-onkoloogiline terviseprobleem



## Resource Content

```json
{
  "resourceType" : "BiologicallyDerivedProduct",
  "id" : "oocyte1",
  "meta" : {
    "profile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-oocyte"]
  },
  "extension" : [{
    "url" : "https://fhir.ee/vris/StructureDefinition/ee-vris-cryopreservation-date",
    "valueDateTime" : "2025-02-20"
  },
  {
    "url" : "https://fhir.ee/vris/StructureDefinition/ee-vris-cell-preservation-reason",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://fhir.ee/CodeSystem/vris-pohjused",
        "code" : "medical",
        "display" : "Meditsiiniline põhjus"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/biologicallyderivedproduct-intendedRecipient",
    "valueReference" : {
      "reference" : "Patient/patientFemale"
    }
  },
  {
    "extension" : [{
      "url" : "thawingDate",
      "valueDateTime" : "2025-06-15"
    },
    {
      "url" : "thawingCount",
      "valueInteger" : 1
    }],
    "url" : "https://fhir.ee/vris/StructureDefinition/ee-vris-thawing"
  }],
  "productCode" : {
    "coding" : [{
      "system" : "https://fhir.ee/CodeSystem/vris-bioloogilise-materjali-liik",
      "code" : "oocyte",
      "display" : "Munarakk"
    }]
  },
  "productStatus" : {
    "code" : "available"
  },
  "collection" : {
    "source" : {
      "reference" : "Patient/patientFemale"
    }
  },
  "property" : [{
    "type" : {
      "coding" : [{
        "system" : "https://fhir.ee/ValueSet/vris-tunnuse-tyyp",
        "code" : "donated-count"
      }]
    },
    "valueInteger" : 8
  },
  {
    "type" : {
      "coding" : [{
        "system" : "https://fhir.ee/ValueSet/vris-tunnuse-tyyp",
        "code" : "frozen-count"
      }]
    },
    "valueInteger" : 5
  },
  {
    "type" : {
      "coding" : [{
        "system" : "https://fhir.ee/ValueSet/vris-tunnuse-tyyp",
        "code" : "meta-phase-2-count"
      }]
    },
    "valueInteger" : 6
  },
  {
    "type" : {
      "coding" : [{
        "system" : "https://fhir.ee/ValueSet/vris-tunnuse-tyyp",
        "code" : "cell-origin-role"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://fhir.ee/CodeSystem/vris-pohjused",
        "code" : "endale",
        "display" : "Säilitaja"
      }]
    }
  },
  {
    "type" : {
      "coding" : [{
        "system" : "https://fhir.ee/ValueSet/vris-tunnuse-tyyp",
        "code" : "collection-method"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "TODO",
        "display" : "Follicular puncture"
      }]
    }
  },
  {
    "type" : {
      "coding" : [{
        "system" : "https://fhir.ee/ValueSet/vris-tunnuse-tyyp",
        "code" : "oocyte-origin"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "TODO",
        "display" : "Patient's own oocyte"
      }]
    }
  },
  {
    "type" : {
      "coding" : [{
        "system" : "https://fhir.ee/ValueSet/vris-tunnuse-tyyp",
        "code" : "oocyte-type"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "TODO",
        "display" : "Fresh, retrieved on fertilization day"
      }]
    }
  },
  {
    "type" : {
      "coding" : [{
        "system" : "https://fhir.ee/ValueSet/vris-tunnuse-tyyp",
        "code" : "intended-use"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "TODO",
        "display" : "For self use"
      }]
    }
  },
  {
    "type" : {
      "coding" : [{
        "system" : "https://fhir.ee/ValueSet/vris-tunnuse-tyyp",
        "code" : "preservation-reason"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://fhir.ee/CodeSystem/vris-pohjused",
        "code" : "nononco",
        "display" : "Mitte-onkoloogiline terviseprobleem"
      }]
    }
  }]
}

```
