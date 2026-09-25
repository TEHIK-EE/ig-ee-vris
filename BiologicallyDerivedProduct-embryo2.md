# embryo2 - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **embryo2**

## Example BiologicallyDerivedProduct: embryo2

Profile: [BiologicallyDerivedProduct: EE VRIS Embryo](StructureDefinition-ee-vris-embryo.md)

**productCode**: Embrüo

**identifier**: EMB790-1

**biologicalSourceEvent**: EMB790

**division**: 1

**productStatus**: [not stated]: unavailable (unavailable)

**expirationDate**: 2025-03-19 18:00:00+0200

### Collections

| | | |
| :--- | :--- | :--- |
| - | **Source** | **Collected[x]** |
| * | [Leena Lööve (official) Female, DoB: 1983-01-11 ( https://fhir.ee/sid/pid/est/ni#38301105216)](Patient-patientFemale.md) | 2025-03-19 |

### Properties

| | | |
| :--- | :--- | :--- |
| - | **Type** | **Value[x]** |
| * | preservation-state | Värske |



## Resource Content

```json
{
  "resourceType" : "BiologicallyDerivedProduct",
  "id" : "embryo2",
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
    "value" : "EMB790-1"
  }],
  "biologicalSourceEvent" : {
    "value" : "EMB790"
  },
  "division" : "1",
  "productStatus" : {
    "code" : "unavailable"
  },
  "expirationDate" : "2025-03-19T18:00:00+02:00",
  "collection" : {
    "source" : {
      "reference" : "Patient/patientFemale"
    },
    "collectedDateTime" : "2025-03-19"
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
        "code" : "fresh",
        "display" : "Värske"
      }]
    }
  }]
}

```
