# sperm1-1 - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **sperm1-1**

## Example BiologicallyDerivedProduct: sperm1-1

Profile: [BiologicallyDerivedProduct: EE VRIS Sperm](StructureDefinition-ee-vris-sperm.md)

**productCode**: Seemnerakud

**parent**: [BiologicallyDerivedProduct: extension = ->Leena Lööve (official) Female, DoB: 1983-01-11 ( https://fhir.ee/sid/pid/est/ni#38301105216); productCode = Seemnerakud; biologicalSourceEvent = ABC123; productStatus = available (available)](BiologicallyDerivedProduct-sperm1.md)

**identifier**: ABC123-2

**biologicalSourceEvent**: ABC123

**division**: 1

**productStatus**: [not stated]: unavailable (unavailable)

**expirationDate**: 2025-02-20 18:00:00+0200

### Properties

| | | |
| :--- | :--- | :--- |
| - | **Type** | **Value[x]** |
| * | preservation-state | Värske |



## Resource Content

```json
{
  "resourceType" : "BiologicallyDerivedProduct",
  "id" : "sperm1-1",
  "meta" : {
    "profile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-sperm"]
  },
  "productCode" : {
    "coding" : [{
      "system" : "https://fhir.ee/CodeSystem/vris-bioloogilise-materjali-liik",
      "code" : "sperm",
      "display" : "Seemnerakud"
    }]
  },
  "parent" : [{
    "reference" : "BiologicallyDerivedProduct/sperm1"
  }],
  "identifier" : [{
    "value" : "ABC123-2"
  }],
  "biologicalSourceEvent" : {
    "value" : "ABC123"
  },
  "division" : "1",
  "productStatus" : {
    "code" : "unavailable"
  },
  "expirationDate" : "2025-02-20T18:00:00+02:00",
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
