# embryo1 - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **embryo1**

## Example BiologicallyDerivedProduct: embryo1

Profile: [BiologicallyDerivedProduct: EE VRIS Embryo](StructureDefinition-ee-vris-embryo.md)

**productCode**: Embrüo

**identifier**: EMB789-1

**biologicalSourceEvent**: EMB789

**division**: 1

**productStatus**: [not stated]: available (available)

### Collections

| | | |
| :--- | :--- | :--- |
| - | **Source** | **Collected[x]** |
| * | [Leena Lööve (official) Female, DoB: 1983-01-11 ( https://fhir.ee/sid/pid/est/ni#38301105216)](Patient-patientFemale.md) | 2025-03-19 |

**storageTempRequirements**: -196--196 °C

> **property****type**: preservation-state**value**: Külmutatud

> **property****type**: preservation-reason**value**: Mitteonkoloogiline terviseprobleem

> **property****type**: origin-country**value**: Eesti



## Resource Content

```json
{
  "resourceType" : "BiologicallyDerivedProduct",
  "id" : "embryo1",
  "meta" : {
    "profile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-embryo"]
  },
  "productCode" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "57991002",
      "display" : "Embrüo"
    }]
  },
  "identifier" : [{
    "value" : "EMB789-1"
  }],
  "biologicalSourceEvent" : {
    "value" : "EMB789"
  },
  "division" : "1",
  "productStatus" : {
    "code" : "available"
  },
  "collection" : {
    "source" : {
      "reference" : "Patient/patientFemale"
    },
    "collectedDateTime" : "2025-03-19"
  },
  "storageTempRequirements" : {
    "low" : {
      "value" : -196,
      "unit" : "°C",
      "system" : "http://unitsofmeasure.org",
      "code" : "°C"
    },
    "high" : {
      "value" : -196,
      "unit" : "°C",
      "system" : "http://unitsofmeasure.org",
      "code" : "°C"
    }
  },
  "property" : [{
    "type" : {
      "coding" : [{
        "system" : "https://fhir.ee/CodeSystem/vris-tunnuse-tyyp",
        "code" : "preservation-state"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "261014004",
        "display" : "Külmutatud"
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
        "code" : "reason-non-oncological",
        "display" : "Mitteonkoloogiline terviseprobleem"
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
