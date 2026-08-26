# supplyDeliverySperm1 - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **supplyDeliverySperm1**

## Example SupplyDelivery: supplyDeliverySperm1

Profile: [SupplyDelivery: EE VRIS Biological material movement](StructureDefinition-ee-vris-supply-delivery.md)

**Supplied package reference**: [PackagedProductDefinition Sperma pakend](PackagedProductDefinition-packaged-sperm1.md)

**identifier**: SD-2025-04-15-001

**status**: Delivered

**type**: biologicallyderivedproduct

### SuppliedItems

| | | |
| :--- | :--- | :--- |
| - | **Quantity** | **Item[x]** |
| * | 4 doosi | [BiologicallyDerivedProduct: extension = 2025-02-20,For donation,->Leena Lööve (official) Female, DoB: 1983-01-11 ( https://fhir.ee/sid/pid/est/ni#38301105216); productCode = Seemnerakud; biologicalSourceEvent = ABC123; productStatus = available (available)](BiologicallyDerivedProduct-sperm1.md) |

**occurrence**: 2025-04-15 10:30:00+0200

**supplier**: [Nova Vita Kliinik](Organization-organization-novavita1.md)

**destination**: [PERH Fertility Clinic](https://example.org/fhir/Location/perhFertilityClinic)

**receiver**: [Põhja-Eesti Regionaalhaigla](https://example.org/fhir/Organization/perh)



## Resource Content

```json
{
  "resourceType" : "SupplyDelivery",
  "id" : "supplyDeliverySperm1",
  "meta" : {
    "profile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-supply-delivery"]
  },
  "extension" : [{
    "url" : "https://fhir.ee/vris/StructureDefinition/ee-vris-supplied-package",
    "valueReference" : {
      "reference" : "PackagedProductDefinition/packaged-sperm1"
    }
  }],
  "identifier" : [{
    "value" : "SD-2025-04-15-001"
  }],
  "status" : "completed",
  "type" : {
    "coding" : [{
      "code" : "biologicallyderivedproduct"
    }]
  },
  "suppliedItem" : [{
    "quantity" : {
      "value" : 4,
      "unit" : "doosi"
    },
    "itemReference" : {
      "reference" : "BiologicallyDerivedProduct/sperm1"
    }
  }],
  "occurrenceDateTime" : "2025-04-15T10:30:00+02:00",
  "supplier" : {
    "reference" : "Organization/organization-novavita1",
    "display" : "Nova Vita Kliinik"
  },
  "destination" : {
    "reference" : "https://example.org/fhir/Location/perhFertilityClinic",
    "display" : "PERH Fertility Clinic"
  },
  "receiver" : [{
    "reference" : "https://example.org/fhir/Organization/perh",
    "display" : "Põhja-Eesti Regionaalhaigla"
  }]
}

```
