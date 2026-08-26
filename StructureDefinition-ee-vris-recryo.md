# Re-cryopreservation date and count - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Re-cryopreservation date and count**

## Extension: Re-cryopreservation date and count 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/vris/StructureDefinition/ee-vris-recryo | *Version*:0.1.0 |
| Draft as of 2026-08-26 | *Computable Name*:ExtensionEEVRISReCryopreservation |

Extension for re-cryopreservation information. (ee Bioloogilise materjali taaskülmutamine ja arv.)

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [BiologicallyDerivedProduct: EE VRIS Embryo](StructureDefinition-ee-vris-embryo.md)
* Examples for this Extension: [BiologicallyDerivedProduct/donor-embryo1](BiologicallyDerivedProduct-donor-embryo1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ee.fhir.vris|current/StructureDefinition/StructureDefinition-ee-vris-recryo.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ee-vris-recryo.csv), [Excel](StructureDefinition-ee-vris-recryo.xlsx), [Schematron](StructureDefinition-ee-vris-recryo.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ee-vris-recryo",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-bind"
  }],
  "url" : "https://fhir.ee/vris/StructureDefinition/ee-vris-recryo",
  "version" : "0.1.0",
  "name" : "ExtensionEEVRISReCryopreservation",
  "title" : "Re-cryopreservation date and count",
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
  "description" : "Extension for re-cryopreservation information. (ee Bioloogilise materjali taaskülmutamine ja arv.)",
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
      "short" : "Count of re-cryopreservation. (ee Bioloogilise materjali taaskülmutamise arv.)",
      "definition" : "ee Bioloogilise materjali taaskülmutamise arv.",
      "max" : "1"
    },
    {
      "id" : "Extension.extension:reCryo",
      "path" : "Extension.extension",
      "sliceName" : "reCryo",
      "short" : "Re-cryopreservation is done= true, not done=false",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:reCryo.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:reCryo.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "reCryo"
    },
    {
      "id" : "Extension.extension:reCryo.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "Extension.extension:reCryoCount",
      "path" : "Extension.extension",
      "sliceName" : "reCryoCount",
      "short" : "Count",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:reCryoCount.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:reCryoCount.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "reCryoCount"
    },
    {
      "id" : "Extension.extension:reCryoCount.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "Extension.extension:reCryoDate",
      "path" : "Extension.extension",
      "sliceName" : "reCryoDate",
      "short" : "Date",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:reCryoDate.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:reCryoDate.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "reCryoDate"
    },
    {
      "id" : "Extension.extension:reCryoDate.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://fhir.ee/vris/StructureDefinition/ee-vris-recryo"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
