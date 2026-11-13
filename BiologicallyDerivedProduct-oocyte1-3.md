# oocyte1-3 - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **oocyte1-3**

## Example BiologicallyDerivedProduct: oocyte1-3

Profile: [BiologicallyDerivedProduct: EE VRIS Oocyte](StructureDefinition-ee-vris-oocyte.md)

> **Thawing date and count**
* thawingDate: 2025-06-15
* thawingCount: 1

**productCode**: Munarakk

**parent**: [BiologicallyDerivedProduct: extension = ->Leena Lööve (official) Female, DoB: 1983-01-11 ( https://fhir.ee/sid/pid/est/ni#38301105216); productCode = Munarakk; biologicalSourceEvent = OOC123; productStatus = available (available)](BiologicallyDerivedProduct-oocyte1.md)

**identifier**: OOC123-3

**biologicalSourceEvent**: OOC123

**division**: 3

**productStatus**: [not stated]: unavailable (unavailable)

### Collections

| | |
| :--- | :--- |
| - | **Source** |
| * | [Leena Lööve (official) Female, DoB: 1983-01-11 ( https://fhir.ee/sid/pid/est/ni#38301105216)](Patient-patientFemale.md) |

**storageTempRequirements**: -196--196 °C

> **property****type**: preservation-state**value**: Fresh

> **property****type**: frozen-count**value**: 2

> **property****type**: cell-origin-role**value**: Mittepartnerannetaja

> **property****type**: origin-country**value**: Eesti



## Resource Content

```json
{
  "resourceType" : "BiologicallyDerivedProduct",
  "id" : "oocyte1-3",
  "meta" : {
    "profile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-oocyte"]
  },
  "extension" : [{
    "extension" : [{
      "url" : "thawingDate",
      "valueDateTime" : "2025-06-15"
    },
    {
      "url" : "thawingCount",
      "valueInteger" : 1
    }],
    "url" : "https://fhir.ee/vris/StructureDefinition/ee-vris-thawing"
  }],
  "productCode" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "86082002",
      "display" : "Munarakk"
    }]
  },
  "parent" : [{
    "reference" : "BiologicallyDerivedProduct/oocyte1"
  }],
  "identifier" : [{
    "value" : "OOC123-3"
  }],
  "biologicalSourceEvent" : {
    "value" : "OOC123"
  },
  "division" : "3",
  "productStatus" : {
    "code" : "unavailable"
  },
  "collection" : {
    "source" : {
      "reference" : "Patient/patientFemale"
    }
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
        "code" : "261013005",
        "display" : "Fresh"
      }]
    }
  },
  {
    "type" : {
      "coding" : [{
        "system" : "https://fhir.ee/CodeSystem/vris-tunnuse-tyyp",
        "code" : "frozen-count"
      }]
    },
    "valueInteger" : 2
  },
  {
    "type" : {
      "coding" : [{
        "system" : "https://fhir.ee/CodeSystem/vris-tunnuse-tyyp",
        "code" : "cell-origin-role"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "237391000181109",
        "display" : "Mittepartnerannetaja"
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
