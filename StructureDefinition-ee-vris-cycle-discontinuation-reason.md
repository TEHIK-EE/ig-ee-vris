# Cycle Discontinuation Reason - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Cycle Discontinuation Reason**

## Extension: Cycle Discontinuation Reason 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/vris/StructureDefinition/ee-vris-cycle-discontinuation-reason | *Version*:0.1.0 |
| Draft as of 2026-08-26 | *Computable Name*:ExtensionEEVRISCycleDiscontinuationReason |

Reason for fertility treatment cycle discontinuation. (ee Ravitsükli katkestamise põhjus.)

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [CarePlan: EEVRIS Cycle](StructureDefinition-ee-vris-care-plan.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ee.fhir.vris|current/StructureDefinition/StructureDefinition-ee-vris-cycle-discontinuation-reason.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ee-vris-cycle-discontinuation-reason.csv), [Excel](StructureDefinition-ee-vris-cycle-discontinuation-reason.xlsx), [Schematron](StructureDefinition-ee-vris-cycle-discontinuation-reason.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ee-vris-cycle-discontinuation-reason",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-bind"
  }],
  "url" : "https://fhir.ee/vris/StructureDefinition/ee-vris-cycle-discontinuation-reason",
  "version" : "0.1.0",
  "name" : "ExtensionEEVRISCycleDiscontinuationReason",
  "title" : "Cycle Discontinuation Reason",
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
  "description" : "Reason for fertility treatment cycle discontinuation. (ee Ravitsükli katkestamise põhjus.)",
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
      "fixedUri" : "https://fhir.ee/vris/StructureDefinition/ee-vris-cycle-discontinuation-reason"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "(ee Katkestamise põhjus loendist. NB! Loend vaja teha!)",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.ee/ValueSet/vris-tsykli-katkestamise-pohjus"
      }
    }]
  }
}

```
