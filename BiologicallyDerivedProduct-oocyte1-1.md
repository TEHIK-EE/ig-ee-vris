# oocyte1-1 - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **oocyte1-1**

## Example BiologicallyDerivedProduct: oocyte1-1

Profile: [BiologicallyDerivedProduct: EE VRIS Oocyte](StructureDefinition-ee-vris-oocyte.md)

**productCode**: Munarakk

**parent**: [BiologicallyDerivedProduct: extension = ->Leena Lööve (official) Female, DoB: 1983-01-11 ( https://fhir.ee/sid/pid/est/ni#38301105216); productCode = Munarakk; biologicalSourceEvent = OOC123; productStatus = available (available)](BiologicallyDerivedProduct-oocyte1.md)

**identifier**: OOC123-1

**biologicalSourceEvent**: OOC123

**division**: 1

**productStatus**: [not stated]: unavailable (unavailable)

**expirationDate**: 2025-02-20 18:00:00+0200

### Collections

| | |
| :--- | :--- |
| - | **Source** |
| * | [Leena Lööve (official) Female, DoB: 1983-01-11 ( https://fhir.ee/sid/pid/est/ni#38301105216)](Patient-patientFemale.md) |

> **property****type**: preservation-state**value**: Värske

> **property****type**: meta-phase-2-count**value**: 3



## Resource Content

```json
{
  "resourceType" : "BiologicallyDerivedProduct",
  "id" : "oocyte1-1",
  "meta" : {
    "profile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-oocyte"]
  },
  "productCode" : {
    "coding" : [{
      "system" : "https://fhir.ee/CodeSystem/vris-bioloogilise-materjali-liik",
      "code" : "oocyte",
      "display" : "Munarakk"
    }]
  },
  "parent" : [{
    "reference" : "BiologicallyDerivedProduct/oocyte1"
  }],
  "identifier" : [{
    "value" : "OOC123-1"
  }],
  "biologicalSourceEvent" : {
    "value" : "OOC123"
  },
  "division" : "1",
  "productStatus" : {
    "code" : "unavailable"
  },
  "expirationDate" : "2025-02-20T18:00:00+02:00",
  "collection" : {
    "source" : {
      "reference" : "Patient/patientFemale"
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
        "code" : "fresh",
        "display" : "Värske"
      }]
    }
  },
  {
    "type" : {
      "coding" : [{
        "system" : "https://fhir.ee/ValueSet/vris-tunnuse-tyyp",
        "code" : "meta-phase-2-count"
      }]
    },
    "valueInteger" : 3
  }]
}

```
