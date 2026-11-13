# ovariantissue1 - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ovariantissue1**

## Example BiologicallyDerivedProduct: ovariantissue1

Profile: [BiologicallyDerivedProduct: EE VRIS Reproductive Tissue](StructureDefinition-ee-vris-reproductive-tissue.md)

**productCode**: Tissue specimen from ovary

**identifier**: OVT123

**biologicalSourceEvent**: OVT123

**productStatus**: [not stated]: available (available)

### Collections

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Collector** | **Source** | **Collected[x]** |
| * | [Toktor Arst (https://fhir.ee/sid/pid/est/ni#38201010015) at Nova Vita Kliinik AS (https://fhir.ee/sid/org/est/br#10285009) (https://fhir.ee/sid/pro/est/pho#D99876)](PractitionerRole-practitionerrole-doctor.md) | [Leena Lööve (official) Female, DoB: 1983-01-11 ( https://fhir.ee/sid/pid/est/ni#38301105216)](Patient-patientFemale.md) | 2025-01-15 |

> **property****type**: fragment-count**value**: 8

> **property****type**: cell-origin-role**value**: Bioloogilise materjali säilitaja

> **property****type**: collection-method**value**: Biopsia

> **property****type**: preservation-reason**value**: Onkoloogiline põhjus

> **property****type**: pubertal-status**value**: Pre-pubertal

> **property****type**: origin-country**value**: Eesti



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
      "system" : "http://snomed.info/sct",
      "code" : "127482009",
      "display" : "Tissue specimen from ovary"
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
        "system" : "https://fhir.ee/CodeSystem/vris-tunnuse-tyyp",
        "code" : "fragment-count"
      }]
    },
    "valueInteger" : 8
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
        "code" : "237491000181102",
        "display" : "Bioloogilise materjali säilitaja"
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
        "system" : "https://fhir.ee/ValueSet/vris-kogumise-meetod",
        "code" : "biopsy",
        "display" : "Biopsia"
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
        "system" : "https://fhir.ee/CodeSystem/vris-pohjused",
        "code" : "reason-oncological",
        "display" : "Onkoloogiline põhjus"
      }]
    }
  },
  {
    "type" : {
      "coding" : [{
        "system" : "https://fhir.ee/CodeSystem/vris-tunnuse-tyyp",
        "code" : "pubertal-status"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "419138002",
        "display" : "Pre-pubertal"
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
