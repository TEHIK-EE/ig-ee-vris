# packaged-sperm1 - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **packaged-sperm1**

## Example PackagedProductDefinition: packaged-sperm1

Profile: [PackagedProductDefinition: EE VRIS Package](StructureDefinition-ee-vris-packaged-product-definition.md)

**identifier**: `https://fhir.ee/vris/identifier/packaged-product`/PKG-2024-SP-001

**name**: Sperma pakend

**status**: active

**description**: 

Pakend sisaldab 3 krüosäilitatud sperma doosi.

> **packaging****type**: Krüosäilitamise konteiner
> **containedItem**

### Items

| | |
| :--- | :--- |
| - | **Reference** |
| * | [BiologicallyDerivedProduct: extension = 2025-02-20,For donation,->Leena Lööve (official) Female, DoB: 1983-01-11 ( https://fhir.ee/sid/pid/est/ni#38301105216); productCode = Seemnerakud; biologicalSourceEvent = ABC123; productStatus = available (available)](BiologicallyDerivedProduct-sperm1.md) |

**amount**: 3



## Resource Content

```json
{
  "resourceType" : "PackagedProductDefinition",
  "id" : "packaged-sperm1",
  "meta" : {
    "profile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-packaged-product-definition"]
  },
  "identifier" : [{
    "system" : "https://fhir.ee/vris/identifier/packaged-product",
    "value" : "PKG-2024-SP-001"
  }],
  "name" : "Sperma pakend",
  "status" : {
    "coding" : [{
      "code" : "active"
    }]
  },
  "description" : "Pakend sisaldab 3 krüosäilitatud sperma doosi.",
  "packaging" : {
    "type" : {
      "text" : "Krüosäilitamise konteiner"
    },
    "containedItem" : [{
      "item" : {
        "reference" : {
          "reference" : "BiologicallyDerivedProduct/sperm1"
        }
      },
      "amount" : {
        "value" : 3
      }
    }]
  }
}

```
