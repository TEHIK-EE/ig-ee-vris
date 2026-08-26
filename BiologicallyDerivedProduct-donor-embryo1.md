# donor-embryo1 - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **donor-embryo1**

## Example BiologicallyDerivedProduct: donor-embryo1

Profile: [BiologicallyDerivedProduct: EE VRIS Embryo](StructureDefinition-ee-vris-embryo.md)

**Cryopreservation date**: 2025-02-20

**Cell preservation reason**: PGT

**BiologicallyDerivedProduct Intended Recipient**: [Leena Lööve (official) Female, DoB: 1983-01-11 ( https://fhir.ee/sid/pid/est/ni#38301105216)](Patient-patientFemale.md)

> **Thawing date and count**
* thawingDate: 2025-08-10
* thawingCount: 1

> **Re-cryopreservation date and count**
* reCryo: false
* reCryoCount: 0
* reCryoDate: 2025-08-10

**productCategory**: [not stated]: cells (cells)

**productCode**: Entire embryo

**parent**: 

* [BiologicallyDerivedProduct: extension = 2025-02-20,For donation,->Leena Lööve (official) Female, DoB: 1983-01-11 ( https://fhir.ee/sid/pid/est/ni#38301105216); productCode = Seemnerakud; biologicalSourceEvent = ABC123; productStatus = available (available)](BiologicallyDerivedProduct-sperm1.md)
* [BiologicallyDerivedProduct: extension = 2025-02-20,Meditsiiniline põhjus,->Leena Lööve (official) Female, DoB: 1983-01-11 ( https://fhir.ee/sid/pid/est/ni#38301105216),; productCode = Munarakk; productStatus = available (available)](BiologicallyDerivedProduct-oocyte1.md)

**biologicalSourceEvent**: `https://fhir.ee/sid/vris/procedure`/fertilization-2025-02-15-001

**processingFacility**: [Organization Nova Vita Kliinik AS](Organization-organization-novavita1.md)

**productStatus**: [not stated]: available (available)

### Collections

| | |
| :--- | :--- |
| - | **Source** |
| * | [Leena Lööve (official) Female, DoB: 1983-01-11 ( https://fhir.ee/sid/pid/est/ni#38301105216)](Patient-patientFemale.md) |

### Properties

| | | |
| :--- | :--- | :--- |
| - | **Type** | **Value[x]** |
| * | arengupäev | 5 |



## Resource Content

```json
{
  "resourceType" : "BiologicallyDerivedProduct",
  "id" : "donor-embryo1",
  "meta" : {
    "profile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-embryo"]
  },
  "extension" : [{
    "url" : "https://fhir.ee/vris/StructureDefinition/ee-vris-cryopreservation-date",
    "valueDateTime" : "2025-02-20"
  },
  {
    "url" : "https://fhir.ee/vris/StructureDefinition/ee-vris-cell-preservation-reason",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://fhir.ee/CodeSystem/vris-pohjused",
        "code" : "hilisem",
        "display" : "PGT"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/biologicallyderivedproduct-intendedRecipient",
    "valueReference" : {
      "reference" : "Patient/patientFemale"
    }
  },
  {
    "extension" : [{
      "url" : "thawingDate",
      "valueDateTime" : "2025-08-10"
    },
    {
      "url" : "thawingCount",
      "valueInteger" : 1
    }],
    "url" : "https://fhir.ee/vris/StructureDefinition/ee-vris-thawing"
  },
  {
    "extension" : [{
      "url" : "reCryo",
      "valueBoolean" : false
    },
    {
      "url" : "reCryoCount",
      "valueInteger" : 0
    },
    {
      "url" : "reCryoDate",
      "valueDateTime" : "2025-08-10"
    }],
    "url" : "https://fhir.ee/vris/StructureDefinition/ee-vris-recryo"
  }],
  "productCategory" : {
    "code" : "cells"
  },
  "productCode" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "57991002",
      "display" : "Entire embryo"
    }]
  },
  "parent" : [{
    "reference" : "BiologicallyDerivedProduct/sperm1"
  },
  {
    "reference" : "BiologicallyDerivedProduct/oocyte1"
  }],
  "biologicalSourceEvent" : {
    "system" : "https://fhir.ee/sid/vris/procedure",
    "value" : "fertilization-2025-02-15-001"
  },
  "processingFacility" : [{
    "reference" : "Organization/organization-novavita1"
  }],
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
        "code" : "arengupäev"
      }]
    },
    "valueInteger" : 5
  }]
}

```
