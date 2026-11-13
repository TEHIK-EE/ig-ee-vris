# ovariantissue1-1 - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ovariantissue1-1**

## Example BiologicallyDerivedProduct: ovariantissue1-1

Profile: [BiologicallyDerivedProduct: EE VRIS Reproductive Tissue](StructureDefinition-ee-vris-reproductive-tissue.md)

**Cryopreservation date**: 2025-01-15

**productCode**: Tissue specimen from ovary

**parent**: [BiologicallyDerivedProduct: productCode = Tissue specimen from ovary; identifier = OVT123; biologicalSourceEvent = OVT123; productStatus = available (available)](BiologicallyDerivedProduct-ovariantissue1.md)

**identifier**: OVT123-1

**biologicalSourceEvent**: OVT123

**division**: 1

**productStatus**: [not stated]: available (available)

### Collections

| | |
| :--- | :--- |
| - | **Source** |
| * | [Leena Lööve (official) Female, DoB: 1983-01-11 ( https://fhir.ee/sid/pid/est/ni#38301105216)](Patient-patientFemale.md) |

> **property****type**: fragment-count**value**: 4

> **property****type**: cell-origin-role**value**: Bioloogilise materjali säilitaja

> **property****type**: preservation-state**value**: Fresh

> **property****type**: origin-country**value**: Eesti



## Resource Content

```json
{
  "resourceType" : "BiologicallyDerivedProduct",
  "id" : "ovariantissue1-1",
  "meta" : {
    "profile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-reproductive-tissue"]
  },
  "extension" : [{
    "url" : "https://fhir.ee/vris/StructureDefinition/ee-vris-cryopreservation-date",
    "valueDateTime" : "2025-01-15"
  }],
  "productCode" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "127482009",
      "display" : "Tissue specimen from ovary"
    }]
  },
  "parent" : [{
    "reference" : "BiologicallyDerivedProduct/ovariantissue1"
  }],
  "identifier" : [{
    "value" : "OVT123-1"
  }],
  "biologicalSourceEvent" : {
    "value" : "OVT123"
  },
  "division" : "1",
  "productStatus" : {
    "code" : "available"
  },
  "collection" : {
    "source" : {
      "reference" : "Patient/patientFemale"
    }
  },
  "property" : [{
    "type" : {
      "coding" : [{
        "system" : "https://fhir.ee/CodeSystem/vris-tunnuse-tyyp",
        "code" : "fragment-count"
      }]
    },
    "valueInteger" : 4
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
        "code" : "237491000181102",
        "display" : "Bioloogilise materjali säilitaja"
      }]
    }
  },
  {
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
