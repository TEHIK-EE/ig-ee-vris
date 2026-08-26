# Coverage - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Coverage**

## Extension: Coverage 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/vris/StructureDefinition/ee-vris-terk-coverage | *Version*:0.1.0 |
| Draft as of 2026-08-26 | *Computable Name*:ExtensionEEVRISCoverage |

Extension for Tervisekassa coverage existence. (ee Kas (teenusel/ravil/tsüklil/vm on/ei ole Tervisekassa poolset kompensatsiooni patsiendile.)

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [CarePlan: EEVRIS Cycle](StructureDefinition-ee-vris-care-plan.md)
* Examples for this Extension: [CarePlan/carePlanIvfCycle2025](CarePlan-carePlanIvfCycle2025.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ee.fhir.vris|current/StructureDefinition/StructureDefinition-ee-vris-terk-coverage.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ee-vris-terk-coverage.csv), [Excel](StructureDefinition-ee-vris-terk-coverage.xlsx), [Schematron](StructureDefinition-ee-vris-terk-coverage.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ee-vris-terk-coverage",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-bind"
  }],
  "url" : "https://fhir.ee/vris/StructureDefinition/ee-vris-terk-coverage",
  "version" : "0.1.0",
  "name" : "ExtensionEEVRISCoverage",
  "title" : "Coverage",
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
  "description" : "Extension for Tervisekassa coverage existence. (ee Kas (teenusel/ravil/tsüklil/vm on/ei ole Tervisekassa poolset kompensatsiooni patsiendile.)",
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
    "expression" : "CarePlan"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://fhir.ee/vris/StructureDefinition/ee-vris-terk-coverage"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "(ee true = ON Tervisekassa poolt kompenseeritud, false = EI ole tervisekassa kompenseeritud)",
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
