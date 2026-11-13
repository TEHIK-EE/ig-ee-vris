# supplyDeliverySperm1 - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **supplyDeliverySperm1**

## Example SupplyDelivery: supplyDeliverySperm1

Profile: [SupplyDelivery: EE VRIS Biological material movement](StructureDefinition-ee-vris-supply-delivery.md)

**Sihtriik**: Finland

**identifier**: SD-2025-04-15-001

**status**: Delivered

**type**: biologicallyderivedproduct

> **suppliedItem****item**: [BiologicallyDerivedProduct: productCode = Seemnerakud; identifier = ABC123-1; biologicalSourceEvent = ABC123; division = 1; productStatus = lattu sisse võetud (bdp-productstatus-other#in-storage); expirationDate = 2025-02-20 18:00:00+0200](BiologicallyDerivedProduct-sperm1-1.md)

> **suppliedItem****item**: [BiologicallyDerivedProduct: productCode = Seemnerakud; identifier = ABC123-2; biologicalSourceEvent = ABC123; division = 2; productStatus = available (available); storageTempRequirements = 196 to 196 -196 °C](BiologicallyDerivedProduct-sperm1-2.md)

> **suppliedItem****item**: [BiologicallyDerivedProduct: productCode = Seemnerakud; identifier = ABC123-3; biologicalSourceEvent = ABC123; division = 3; productStatus = available (available); storageTempRequirements = 196 to 196 -196 °C](BiologicallyDerivedProduct-sperm1-3.md)

**occurrence**: 2025-04-15 10:30:00+0200 --> 2025-04-17 10:30:00+0200

**supplier**: OÜ Nova Vita Kliinik (Identifier: `https://fhir.ee/sid/org/est/br`/10285009)

**receiver**: Ovumia Fertinova, Helsinki



## Resource Content

```json
{
  "resourceType" : "SupplyDelivery",
  "id" : "supplyDeliverySperm1",
  "meta" : {
    "profile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-supply-delivery"]
  },
  "extension" : [{
    "url" : "https://fhir.ee/vris/StructureDefinition/ee-vris-destination-country",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://fhir.ee/CodeSystem/rtk",
        "code" : "FI",
        "display" : "Finland"
      }]
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
    "itemReference" : {
      "reference" : "BiologicallyDerivedProduct/sperm1-1"
    }
  },
  {
    "itemReference" : {
      "reference" : "BiologicallyDerivedProduct/sperm1-2"
    }
  },
  {
    "itemReference" : {
      "reference" : "BiologicallyDerivedProduct/sperm1-3"
    }
  }],
  "occurrencePeriod" : {
    "start" : "2025-04-15T10:30:00+02:00",
    "end" : "2025-04-17T10:30:00+02:00"
  },
  "supplier" : {
    "identifier" : {
      "system" : "https://fhir.ee/sid/org/est/br",
      "value" : "10285009"
    },
    "display" : "OÜ Nova Vita Kliinik"
  },
  "receiver" : [{
    "display" : "Ovumia Fertinova, Helsinki"
  }]
}

```
