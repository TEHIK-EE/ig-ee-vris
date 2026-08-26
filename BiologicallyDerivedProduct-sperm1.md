# sperm1 - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **sperm1**

## Example BiologicallyDerivedProduct: sperm1

Profile: [BiologicallyDerivedProduct: EE VRIS Sperm](StructureDefinition-ee-vris-sperm.md)

**Cryopreservation date**: 2025-02-20

**Cell preservation reason**: For donation

**BiologicallyDerivedProduct Intended Recipient**: [Leena Lööve (official) Female, DoB: 1983-01-11 ( https://fhir.ee/sid/pid/est/ni#38301105216)](Patient-patientFemale.md)

**productCode**: Seemnerakud

**biologicalSourceEvent**: ABC123

**productStatus**: [not stated]: available (available)

### Collections

| | |
| :--- | :--- |
| - | **Source** |
| * | [Ygrek Mister (official) Male, DoB: 1983-01-11 ( DR)](Patient-patientDonorMale.md) |

> **property****type**: donated-count**value**: 4

> **property****type**: frozen-count**value**: 4

> **property****type**: cell-origin-role**value**: Non-partner donor

> **property****type**: collection-method**value**: Ejaculation

> **property****type**: usage-state**value**: Thawed from frozen

> **property****type**: donor-stimulation-method**value**: Follitropin + Chorionic gonadotropin



## Resource Content

```json
{
  "resourceType" : "BiologicallyDerivedProduct",
  "id" : "sperm1",
  "meta" : {
    "profile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-sperm"]
  },
  "extension" : [{
    "url" : "https://fhir.ee/vris/StructureDefinition/ee-vris-cryopreservation-date",
    "valueDateTime" : "2025-02-20"
  },
  {
    "url" : "https://fhir.ee/vris/StructureDefinition/ee-vris-cell-preservation-reason",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "TODO",
        "display" : "For donation"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/biologicallyderivedproduct-intendedRecipient",
    "valueReference" : {
      "reference" : "Patient/patientFemale"
    }
  }],
  "productCode" : {
    "coding" : [{
      "system" : "https://fhir.ee/CodeSystem/vris-bioloogilise-materjali-liik",
      "code" : "sperm",
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
        "system" : "https://fhir.ee/ValueSet/vris-tunnuse-tyyp",
        "code" : "donated-count"
      }]
    },
    "valueInteger" : 4
  },
  {
    "type" : {
      "coding" : [{
        "system" : "https://fhir.ee/ValueSet/vris-tunnuse-tyyp",
        "code" : "frozen-count"
      }]
    },
    "valueInteger" : 4
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
        "system" : "http://snomed.info/sct",
        "code" : "TODO",
        "display" : "Non-partner donor"
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
        "display" : "Ejaculation"
      }]
    }
  },
  {
    "type" : {
      "coding" : [{
        "system" : "https://fhir.ee/ValueSet/vris-tunnuse-tyyp",
        "code" : "usage-state"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "TODO",
        "display" : "Thawed from frozen"
      }]
    }
  },
  {
    "type" : {
      "coding" : [{
        "system" : "https://fhir.ee/ValueSet/vris-tunnuse-tyyp",
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
  }]
}

```
