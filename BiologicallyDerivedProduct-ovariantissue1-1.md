# ovariantissue1-1 - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ovariantissue1-1**

## Example BiologicallyDerivedProduct: ovariantissue1-1

Profile: [BiologicallyDerivedProduct: EE VRIS Reproductive Tissue](StructureDefinition-ee-vris-reproductive-tissue.md)

**Cryopreservation date**: 2025-01-15

**productCode**: Munasarja kude

**parent**: [BiologicallyDerivedProduct: productCode = Munasarja kude; identifier = OVT123; biologicalSourceEvent = OVT123; productStatus = available (available)](BiologicallyDerivedProduct-ovariantissue1.md)

**identifier**: OVT123-1

**biologicalSourceEvent**: OVT123

**division**: 1

**productStatus**: [not stated]: available (available)

### Collections

| | |
| :--- | :--- |
| - | **Source** |
| * | [Leena Lööve (official) Female, DoB: 1983-01-11 ( https://fhir.ee/sid/pid/est/ni#38301105216)](Patient-patientFemale.md) |

> **property****type**: frozen-fragment-count**value**: 4

> **property****type**: preservation-state**value**: Külmutatud



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
      "system" : "https://fhir.ee/CodeSystem/vris-bioloogilise-materjali-liik",
      "code" : "ovarian-tissue",
      "display" : "Munasarja kude"
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
        "system" : "https://fhir.ee/ValueSet/vris-tunnuse-tyyp",
        "code" : "frozen-fragment-count"
      }]
    },
    "valueInteger" : 4
  },
  {
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
  }]
}

```
