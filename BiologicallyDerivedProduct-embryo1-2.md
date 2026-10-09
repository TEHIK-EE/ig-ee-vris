# embryo1-2 - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **embryo1-2**

## Example BiologicallyDerivedProduct: embryo1-2

Profile: [BiologicallyDerivedProduct: EE VRIS Embryo](StructureDefinition-ee-vris-embryo.md)

**Package**: [BiologicallyDerivedProduct: productCode = Embrüo; identifier = EMB789-1; biologicalSourceEvent = EMB789; division = 1; productStatus = available (available); storageTempRequirements = -196 to -196 °C](BiologicallyDerivedProduct-embryo1.md)

**productCode**: Embrüo

**parent**: 

* [BiologicallyDerivedProduct: productCode = Munarakk; identifier = OOC123-1; biologicalSourceEvent = OOC123; division = 1; productStatus = unavailable (unavailable); expirationDate = 2025-02-20 18:00:00+0200](BiologicallyDerivedProduct-oocyte1-1.md)
* [BiologicallyDerivedProduct: productCode = Seemnerakud; identifier = ABC123-2; biologicalSourceEvent = ABC123; division = 1; productStatus = unavailable (unavailable); expirationDate = 2025-02-20 18:00:00+0200](BiologicallyDerivedProduct-sperm1-1.md)

**identifier**: EMB789-1-B

**biologicalSourceEvent**: EMB789

**productStatus**: [not stated]: available (available)

### Collections

| | | |
| :--- | :--- | :--- |
| - | **Source** | **Collected[x]** |
| * | [Leena Lööve (official) Female, DoB: 1983-01-11 ( https://fhir.ee/sid/pid/est/ni#38301105216)](Patient-patientFemale.md) | 2025-03-14 |

### Properties

| | | |
| :--- | :--- | :--- |
| - | **Type** | **Value[x]** |
| * | development-day | 5 |



## Resource Content

```json
{
  "resourceType" : "BiologicallyDerivedProduct",
  "id" : "embryo1-2",
  "meta" : {
    "profile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-embryo"]
  },
  "extension" : [{
    "url" : "https://fhir.ee/vris/StructureDefinition/ee-vris-package",
    "valueReference" : {
      "reference" : "BiologicallyDerivedProduct/embryo1"
    }
  }],
  "productCode" : {
    "coding" : [{
      "system" : "https://fhir.ee/CodeSystem/vris-bioloogilise-materjali-liik",
      "code" : "embryo",
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
    "value" : "EMB789-1-B"
  }],
  "biologicalSourceEvent" : {
    "value" : "EMB789"
  },
  "productStatus" : {
    "code" : "available"
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
        "system" : "https://fhir.ee/ValueSet/vris-tunnuse-tyyp",
        "code" : "development-day"
      }]
    },
    "valueInteger" : 5
  }]
}

```
