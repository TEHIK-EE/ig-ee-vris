# Observation: EE VRIS Embryo Lifecycle Counts - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Observation: EE VRIS Embryo Lifecycle Counts**

## Resource Profile: Observation: EE VRIS Embryo Lifecycle Counts 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/vris/StructureDefinition/ee-vris-observation-embryo-lifecycle-counts | *Version*:0.1.0 |
| Draft as of 2026-08-26 | *Computable Name*:EEVRISObservationEmbryoLifecycleCounts |

 
Summary counts of embryo lifecycle events in a fertility treatment cycle (frozen, transferred, destroyed). (ee Embrüote elutsükli kokkuvõtted: külmutatud, siirdatud, hävitatud arv tsüklis.) 

**Usages:**

* Refer to this Profile: [CarePlan: EEVRIS Cycle](StructureDefinition-ee-vris-care-plan.md)
* Examples for this Profile: [Observation/observation-embryo-lifecycle-counts](Observation-observation-embryo-lifecycle-counts.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ee.fhir.vris|current/StructureDefinition/StructureDefinition-ee-vris-observation-embryo-lifecycle-counts.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ee-vris-observation-embryo-lifecycle-counts.csv), [Excel](StructureDefinition-ee-vris-observation-embryo-lifecycle-counts.xlsx), [Schematron](StructureDefinition-ee-vris-observation-embryo-lifecycle-counts.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ee-vris-observation-embryo-lifecycle-counts",
  "url" : "https://fhir.ee/vris/StructureDefinition/ee-vris-observation-embryo-lifecycle-counts",
  "version" : "0.1.0",
  "name" : "EEVRISObservationEmbryoLifecycleCounts",
  "title" : "Observation: EE VRIS Embryo Lifecycle Counts",
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
  "description" : "Summary counts of embryo lifecycle events in a fertility treatment cycle (frozen, transferred, destroyed). (ee Embrüote elutsükli kokkuvõtted: külmutatud, siirdatud, hävitatud arv tsüklis.)",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "EE",
      "display" : "Estonia"
    }]
  }],
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "sct-concept",
    "uri" : "http://snomed.info/conceptdomain",
    "name" : "SNOMED CT Concept Domain Binding"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 V2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "sct-attr",
    "uri" : "http://snomed.org/attributebinding",
    "name" : "SNOMED CT Attribute Binding"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Observation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation"
    },
    {
      "id" : "Observation.partOf",
      "path" : "Observation.partOf",
      "short" : "(ee Viide viljastamise protseduurile, mille embrüoid loendatakse)",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-procedure-fertilization"]
      }]
    },
    {
      "id" : "Observation.status",
      "path" : "Observation.status",
      "patternCode" : "final"
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "short" : "(ee NB! SNOMED kood vajab kontrolli)"
    },
    {
      "id" : "Observation.subject",
      "path" : "Observation.subject",
      "short" : "(ee Patsient, kelle embrüoid loendatakse. Kas viide patsiendile või embrüole? Või mõlemale? OTSUSTADA!)",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-recipient",
        "https://fhir.ee/vris/StructureDefinition/ee-vris-donor",
        "https://fhir.ee/vris/StructureDefinition/ee-vris-donor-anonymous"]
      }]
    },
    {
      "id" : "Observation.focus",
      "path" : "Observation.focus",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-embryo"]
      }]
    },
    {
      "id" : "Observation.effective[x]",
      "path" : "Observation.effective[x]",
      "short" : "(ee Hindamise/kokkuvõtte aeg)",
      "min" : 1,
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "max" : "0"
    },
    {
      "id" : "Observation.component",
      "path" : "Observation.component",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "code"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "Observation.component:frozenEmbryoCount",
      "path" : "Observation.component",
      "sliceName" : "frozenEmbryoCount",
      "short" : "(ee Külmutatud embrüote arv tsüklis)",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Observation.component:frozenEmbryoCount.code.text",
      "path" : "Observation.component.code.text",
      "patternString" : "TODO: SNOMED CT"
    },
    {
      "id" : "Observation.component:frozenEmbryoCount.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "Observation.component:transferredEmbryoCount",
      "path" : "Observation.component",
      "sliceName" : "transferredEmbryoCount",
      "short" : "(ee Siirdatud embrüote arv tsüklis 0-3)",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Observation.component:transferredEmbryoCount.code.text",
      "path" : "Observation.component.code.text",
      "patternString" : "TODO: SNOMED CT"
    },
    {
      "id" : "Observation.component:transferredEmbryoCount.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "Observation.component:destroyedEmbryoCount",
      "path" : "Observation.component",
      "sliceName" : "destroyedEmbryoCount",
      "short" : "(ee Hävitatud embrüote arv tsüklis)",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Observation.component:destroyedEmbryoCount.code.text",
      "path" : "Observation.component.code.text",
      "patternString" : "TODO: SNOMED CT"
    },
    {
      "id" : "Observation.component:destroyedEmbryoCount.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "integer"
      }]
    }]
  }
}

```
