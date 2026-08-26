# Thawing date and count - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Thawing date and count**

## Extension: Thawing date and count 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/vris/StructureDefinition/ee-vris-thawing | *Version*:0.1.0 |
| Draft as of 2026-08-26 | *Computable Name*:ExtensionEEVRISThawing |

Extension for thawing information. (ee Bioloogilise materjali sulatamise kuupäev ja arv.)

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [BiologicallyDerivedProduct: EE VRIS Embryo](StructureDefinition-ee-vris-embryo.md) and [BiologicallyDerivedProduct: EE VRIS Oocyte](StructureDefinition-ee-vris-oocyte.md)
* Examples for this Extension: [BiologicallyDerivedProduct/donor-embryo1](BiologicallyDerivedProduct-donor-embryo1.md) and [BiologicallyDerivedProduct/oocyte1](BiologicallyDerivedProduct-oocyte1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ee.fhir.vris|current/StructureDefinition/StructureDefinition-ee-vris-thawing.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ee-vris-thawing.csv), [Excel](StructureDefinition-ee-vris-thawing.xlsx), [Schematron](StructureDefinition-ee-vris-thawing.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ee-vris-thawing",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-bind"
  }],
  "url" : "https://fhir.ee/vris/StructureDefinition/ee-vris-thawing",
  "version" : "0.1.0",
  "name" : "ExtensionEEVRISThawing",
  "title" : "Thawing date and count",
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
  "description" : "Extension for thawing information. (ee Bioloogilise materjali sulatamise kuupäev ja arv.)",
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
      "short" : "Date and count of thawing. (ee Bioloogilise materjali sulatamise kuupäev ja arv.)",
      "definition" : "ee Bioloogilise materjali sulatamise kuupäev ja arv.",
      "max" : "1"
    },
    {
      "id" : "Extension.extension:thawingDate",
      "path" : "Extension.extension",
      "sliceName" : "thawingDate",
      "short" : "When thawning or warming is happening",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:thawingDate.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:thawingDate.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "thawingDate"
    },
    {
      "id" : "Extension.extension:thawingDate.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Extension.extension:thawingCount",
      "path" : "Extension.extension",
      "sliceName" : "thawingCount",
      "short" : "Count",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:thawingCount.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:thawingCount.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "thawingCount"
    },
    {
      "id" : "Extension.extension:thawingCount.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://fhir.ee/vris/StructureDefinition/ee-vris-thawing"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
