# embryo2-1 - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **embryo2-1**

## Example BiologicallyDerivedProduct: embryo2-1

Profile: [BiologicallyDerivedProduct: EE VRIS Embryo](StructureDefinition-ee-vris-embryo.md)

**Package**: [BiologicallyDerivedProduct: productCode = Embrüo; identifier = EMB790-1; biologicalSourceEvent = EMB790; division = 1; productStatus = unavailable (unavailable); expirationDate = 2025-03-19 18:00:00+0200](BiologicallyDerivedProduct-embryo2.md)

**productCode**: Embrüo

**parent**: 

* [BiologicallyDerivedProduct: productCode = Munarakk; identifier = OOC123-1; biologicalSourceEvent = OOC123; division = 1; productStatus = unavailable (unavailable); expirationDate = 2025-02-20 18:00:00+0200](BiologicallyDerivedProduct-oocyte1-1.md)
* [BiologicallyDerivedProduct: productCode = Seemnerakud; identifier = ABC123-1; biologicalSourceEvent = ABC123; division = 1; productStatus = lattu sisse võetud (bdp-productstatus-other#in-storage); expirationDate = 2025-02-20 18:00:00+0200](BiologicallyDerivedProduct-sperm1-1.md)

**identifier**: EMB790-1-A

**biologicalSourceEvent**: EMB790

**productStatus**: [not stated]: unavailable (unavailable)

### Collections

| | | |
| :--- | :--- | :--- |
| - | **Source** | **Collected[x]** |
| * | [Leena Lööve (official) Female, DoB: 1983-01-11 ( https://fhir.ee/sid/pid/est/ni#38301105216)](Patient-patientFemale.md) | 2025-03-14 |

> **property****type**: development-day**value**: 5

> **property****type**: origin-country**value**: Eesti



## Resource Content

```json
{
  "resourceType" : "BiologicallyDerivedProduct",
  "id" : "embryo2-1",
  "meta" : {
    "profile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-embryo"]
  },
  "extension" : [{
    "url" : "https://fhir.ee/vris/StructureDefinition/ee-vris-package",
    "valueReference" : {
      "reference" : "BiologicallyDerivedProduct/embryo2"
    }
  }],
  "productCode" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "57991002",
      "display" : "Embrüo"
    }]
  },
  "parent" : [{
    "reference" : "BiologicallyDerivedProduct/oocyte1-1"
  },
  {
    "reference" : "BiologicallyDerivedProduct/sperm1-1"
  }],
  "identifier" : [{
    "value" : "EMB790-1-A"
  }],
  "biologicalSourceEvent" : {
    "value" : "EMB790"
  },
  "productStatus" : {
    "code" : "unavailable"
  },
  "collection" : {
    "source" : {
      "reference" : "Patient/patientFemale"
    },
    "collectedDateTime" : "2025-03-14"
  },
  "property" : [{
    "type" : {
      "coding" : [{
        "system" : "https://fhir.ee/CodeSystem/vris-tunnuse-tyyp",
        "code" : "development-day"
      }]
    },
    "valueInteger" : 5
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
