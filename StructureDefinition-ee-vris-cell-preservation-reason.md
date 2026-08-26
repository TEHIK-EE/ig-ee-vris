# Cell preservation reason - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Cell preservation reason**

## Extension: Cell preservation reason 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/vris/StructureDefinition/ee-vris-cell-preservation-reason | *Version*:0.1.0 |
| Draft as of 2026-08-26 | *Computable Name*:ExtensionEEVRISCellPreservationReason |

Extension for the reason of cell preservation. (ee Sperma/munaraku säilitamise põhjus. (Nt meditsiiniline, mittemeditsiiniline jne))

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [BiologicallyDerivedProduct: EE VRIS Embryo](StructureDefinition-ee-vris-embryo.md), [BiologicallyDerivedProduct: EE VRIS Oocyte](StructureDefinition-ee-vris-oocyte.md), [BiologicallyDerivedProduct: EE VRIS Reproductive Tissue](StructureDefinition-ee-vris-reproductive-tissue.md) and [BiologicallyDerivedProduct: EE VRIS Sperm](StructureDefinition-ee-vris-sperm.md)
* Examples for this Extension: [BiologicallyDerivedProduct/donor-embryo1](BiologicallyDerivedProduct-donor-embryo1.md), [BiologicallyDerivedProduct/oocyte1](BiologicallyDerivedProduct-oocyte1.md) and [BiologicallyDerivedProduct/sperm1](BiologicallyDerivedProduct-sperm1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ee.fhir.vris|current/StructureDefinition/StructureDefinition-ee-vris-cell-preservation-reason.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ee-vris-cell-preservation-reason.csv), [Excel](StructureDefinition-ee-vris-cell-preservation-reason.xlsx), [Schematron](StructureDefinition-ee-vris-cell-preservation-reason.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ee-vris-cell-preservation-reason",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-bind"
  }],
  "url" : "https://fhir.ee/vris/StructureDefinition/ee-vris-cell-preservation-reason",
  "version" : "0.1.0",
  "name" : "ExtensionEEVRISCellPreservationReason",
  "title" : "Cell preservation reason",
  "status" : "draft",
  "date" : "2026-08-26T08:01:11+00:00",
  "publisher" : "TEHIK",
  "contact" : [{
    "name" : "TEHIK",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.tehik.ee"
    },
    {
      "system" : "email",
      "value" : "fhir@tehik.ee"
    }]
  },
  {
    "name" : "TEHIK Andmekorraldus",
    "telecom" : [{
      "system" : "email",
      "value" : "andmekorraldus@tehik.ee",
      "use" : "work"
    }]
  }],
  "description" : "Extension for the reason of cell preservation. (ee Sperma/munaraku säilitamise põhjus. (Nt meditsiiniline, mittemeditsiiniline jne))",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "EE",
      "display" : "Estonia"
    }]
  }],
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "BiologicallyDerivedProduct"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Reason for preservimg oocyte or sperm. (ee Sperma/munaraku säilitamise põhjus.)",
      "max" : "1"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://fhir.ee/vris/StructureDefinition/ee-vris-cell-preservation-reason"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }]
    }]
  }
}

```
