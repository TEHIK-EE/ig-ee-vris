# ovariantissue1 - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ovariantissue1**

## Example BiologicallyDerivedProduct: ovariantissue1

Profile: [BiologicallyDerivedProduct: EE VRIS Reproductive Tissue](StructureDefinition-ee-vris-reproductive-tissue.md)

**productCode**: Munasarja kude

**identifier**: OVT123

**biologicalSourceEvent**: OVT123

**productStatus**: [not stated]: available (available)

### Collections

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Collector** | **Source** | **Collected[x]** |
| * | [PractitionerRole: identifier = https://fhir.ee/sid/pro/est/pho#D99876; period = 2008-01-01 --> (ongoing)](PractitionerRole-practitionerrole-doctor.md) | [Leena Lööve (official) Female, DoB: 1983-01-11 ( https://fhir.ee/sid/pid/est/ni#38301105216)](Patient-patientFemale.md) | 2025-01-15 |

> **property****type**: fragment-count**value**: 8

> **property****type**: frozen-fragment-count**value**: 8

> **property****type**: cell-origin-role**value**: Enda tarbeks

> **property****type**: collection-method**value**: Biopsia

> **property****type**: preservation-reason**value**: Onkoloogiline ravi

> **property****type**: pubertal-status**value**: Puberteedijärgne



## Resource Content

```json
{
  "resourceType" : "BiologicallyDerivedProduct",
  "id" : "ovariantissue1",
  "meta" : {
    "profile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-reproductive-tissue"]
  },
  "productCode" : {
    "coding" : [{
      "system" : "https://fhir.ee/CodeSystem/vris-bioloogilise-materjali-liik",
      "code" : "ovarian-tissue",
      "display" : "Munasarja kude"
    }]
  },
  "identifier" : [{
    "value" : "OVT123"
  }],
  "biologicalSourceEvent" : {
    "value" : "OVT123"
  },
  "productStatus" : {
    "code" : "available"
  },
  "collection" : {
    "collector" : {
      "reference" : "PractitionerRole/practitionerrole-doctor"
    },
    "source" : {
      "reference" : "Patient/patientFemale"
    },
    "collectedDateTime" : "2025-01-15"
  },
  "property" : [{
    "type" : {
      "coding" : [{
        "system" : "https://fhir.ee/ValueSet/vris-tunnuse-tyyp",
        "code" : "fragment-count"
      }]
    },
    "valueInteger" : 8
  },
  {
    "type" : {
      "coding" : [{
        "system" : "https://fhir.ee/ValueSet/vris-tunnuse-tyyp",
        "code" : "frozen-fragment-count"
      }]
    },
    "valueInteger" : 8
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
        "system" : "https://fhir.ee/ValueSet/vris-suguraku-paritolu-roll",
        "code" : "own-use",
        "display" : "Enda tarbeks"
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
        "system" : "https://fhir.ee/ValueSet/vris-kogumise-meetod",
        "code" : "biopsy",
        "display" : "Biopsia"
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
        "system" : "https://fhir.ee/ValueSet/vris-viljakuse-sailitamise-pohjus",
        "code" : "oncological",
        "display" : "Onkoloogiline ravi"
      }]
    }
  },
  {
    "type" : {
      "coding" : [{
        "system" : "https://fhir.ee/ValueSet/vris-tunnuse-tyyp",
        "code" : "pubertal-status"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://fhir.ee/ValueSet/vris-puberteedi-staatus",
        "code" : "post-pubertal",
        "display" : "Puberteedijärgne"
      }]
    }
  }]
}

```
