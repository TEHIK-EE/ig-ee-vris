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

> **property****type**: preservation-reason**value**: Mitte-onkoloogiline terviseprobleem



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
      "system" : "https://fhir.ee/CodeSystem/vris-bioloogilise-materjali-liik",
      "code" : "embryo",
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
        "system" : "https://fhir.ee/ValueSet/vris-tunnuse-tyyp",
        "code" : "preservation-state"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://fhir.ee/ValueSet/vris-sailitamise-olek",
        "code" : "cryopreserved",
        "display" : "Külmutatud"
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
        "code" : "nononco",
        "display" : "Mitte-onkoloogiline terviseprobleem"
      }]
    }
  }]
}

```
