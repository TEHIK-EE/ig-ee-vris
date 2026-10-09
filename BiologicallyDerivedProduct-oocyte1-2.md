# oocyte1-2 - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **oocyte1-2**

## Example BiologicallyDerivedProduct: oocyte1-2

Profile: [BiologicallyDerivedProduct: EE VRIS Oocyte](StructureDefinition-ee-vris-oocyte.md)

**productCode**: Munarakk

**parent**: [BiologicallyDerivedProduct: extension = ->Leena Lööve (official) Female, DoB: 1983-01-11 ( https://fhir.ee/sid/pid/est/ni#38301105216); productCode = Munarakk; biologicalSourceEvent = OOC123; productStatus = available (available)](BiologicallyDerivedProduct-oocyte1.md)

**identifier**: OOC123-2

**biologicalSourceEvent**: OOC123

**division**: 2

**productStatus**: [not stated]: available (available)

### Collections

| | |
| :--- | :--- |
| - | **Source** |
| * | [Leena Lööve (official) Female, DoB: 1983-01-11 ( https://fhir.ee/sid/pid/est/ni#38301105216)](Patient-patientFemale.md) |

**storageTempRequirements**: -196--196 °C

> **property****type**: preservation-state**value**: Külmutatud

> **property****type**: frozen-count**value**: 3



## Resource Content

```json
{
  "resourceType" : "BiologicallyDerivedProduct",
  "id" : "oocyte1-2",
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
    "value" : "OOC123-2"
  }],
  "biologicalSourceEvent" : {
    "value" : "OOC123"
  },
  "division" : "2",
  "productStatus" : {
    "code" : "available"
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
        "code" : "frozen-count"
      }]
    },
    "valueInteger" : 3
  }]
}

```
