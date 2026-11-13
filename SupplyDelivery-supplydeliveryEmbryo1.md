# supplydeliveryEmbryo1 - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **supplydeliveryEmbryo1**

## Example SupplyDelivery: supplydeliveryEmbryo1

Profile: [SupplyDelivery: EE VRIS Biological material movement](StructureDefinition-ee-vris-supply-delivery.md)

**identifier**: SD2026-148

**status**: In Progress

**type**: biologicallyderivedproduct

> **suppliedItem****item**: [BiologicallyDerivedProduct: productCode = Embrüo; identifier = EMB789-1; biologicalSourceEvent = EMB789; division = 1; productStatus = available (available); storageTempRequirements = -196 to -196 °C](BiologicallyDerivedProduct-embryo1.md)

> **suppliedItem****item**: [BiologicallyDerivedProduct: productCode = Embrüo; identifier = EMB790-1; biologicalSourceEvent = EMB790; division = 1; productStatus = unavailable (unavailable); expirationDate = 2025-03-19 18:00:00+0200](BiologicallyDerivedProduct-embryo2.md)

**occurrence**: 2026-11-11 09:30:00+0200 --> (ongoing)

**supplier**: OÜ Nova Vita Kliinik (Identifier: `https://fhir.ee/sid/org/est/br`/10285009)

**receiver**: Ida-Tallinna Keskhaigla (Identifier: `https://fhir.ee/sid/org/est/br`/10822068)



## Resource Content

```json
{
  "resourceType" : "SupplyDelivery",
  "id" : "supplydeliveryEmbryo1",
  "meta" : {
    "profile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-supply-delivery"]
  },
  "identifier" : [{
    "value" : "SD2026-148"
  }],
  "status" : "in-progress",
  "type" : {
    "coding" : [{
      "code" : "biologicallyderivedproduct"
    }]
  },
  "suppliedItem" : [{
    "itemReference" : {
      "reference" : "BiologicallyDerivedProduct/embryo1"
    }
  },
  {
    "itemReference" : {
      "reference" : "BiologicallyDerivedProduct/embryo2"
    }
  }],
  "occurrencePeriod" : {
    "start" : "2026-11-11T09:30:00+02:00"
  },
  "supplier" : {
    "identifier" : {
      "system" : "https://fhir.ee/sid/org/est/br",
      "value" : "10285009"
    },
    "display" : "OÜ Nova Vita Kliinik"
  },
  "receiver" : [{
    "identifier" : {
      "system" : "https://fhir.ee/sid/org/est/br",
      "value" : "10822068"
    },
    "display" : "Ida-Tallinna Keskhaigla"
  }]
}

```
