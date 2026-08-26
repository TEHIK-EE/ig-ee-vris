# Procedure: EE VRIS Fertilization - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Procedure: EE VRIS Fertilization**

## Resource Profile: Procedure: EE VRIS Fertilization 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/vris/StructureDefinition/ee-vris-procedure-fertilization | *Version*:0.1.0 |
| Draft as of 2026-08-26 | *Computable Name*:EEVRISProcedureFertilization |

 
Profile for oocyte fertilization procedure using IVF, ICSI, or both methods. (ee Munarakkude viljastamise protseduur.) 

**Usages:**

* Refer to this Profile: [CarePlan: EEVRIS Cycle](StructureDefinition-ee-vris-care-plan.md), [Observation: EE VRIS Embryo Lifecycle Counts](StructureDefinition-ee-vris-observation-embryo-lifecycle-counts.md) and [Observation: EE VRIS Fertilization Counts](StructureDefinition-ee-vris-observation-fertilization-counts.md)
* Examples for this Profile: [Procedure/procedure-fertilization1](Procedure-procedure-fertilization1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ee.fhir.vris|current/StructureDefinition/StructureDefinition-ee-vris-procedure-fertilization.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ee-vris-procedure-fertilization.csv), [Excel](StructureDefinition-ee-vris-procedure-fertilization.xlsx), [Schematron](StructureDefinition-ee-vris-procedure-fertilization.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ee-vris-procedure-fertilization",
  "url" : "https://fhir.ee/vris/StructureDefinition/ee-vris-procedure-fertilization",
  "version" : "0.1.0",
  "name" : "EEVRISProcedureFertilization",
  "title" : "Procedure: EE VRIS Fertilization",
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
  "description" : "Profile for oocyte fertilization procedure using IVF, ICSI, or both methods. (ee Munarakkude viljastamise protseduur.)",
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
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 V2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Procedure",
  "baseDefinition" : "https://fhir.ee/vris/StructureDefinition/ee-vris-procedure",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Procedure",
      "path" : "Procedure"
    },
    {
      "id" : "Procedure.category",
      "path" : "Procedure.category",
      "short" : "(ee Kategooria: viljastamine. Nt. 58533008 |Artificial insemination (procedure)|)",
      "max" : "1"
    },
    {
      "id" : "Procedure.code",
      "path" : "Procedure.code",
      "short" : "(ee Viljastamise meetod IVF, ICSI või IVF+ICSI) NB! LOEND!!!!",
      "min" : 1
    },
    {
      "id" : "Procedure.subject",
      "path" : "Procedure.subject",
      "short" : "(ee Patsient, kelle munarakke viljastati)",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-recipient",
        "https://fhir.ee/vris/StructureDefinition/ee-vris-donor",
        "https://fhir.ee/vris/StructureDefinition/ee-vris-donor-anonymous"]
      }]
    },
    {
      "id" : "Procedure.occurrence[x]",
      "path" : "Procedure.occurrence[x]",
      "short" : "(ee Viljastamise kuupäev ja kellaaeg)",
      "min" : 1,
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Procedure.performer",
      "path" : "Procedure.performer",
      "short" : "(ee Embrüoloog/tegija)",
      "min" : 1
    },
    {
      "id" : "Procedure.used",
      "path" : "Procedure.used",
      "short" : "(ee Viited munarakkudele ja spermale)",
      "min" : 1,
      "type" : [{
        "code" : "CodeableReference",
        "targetProfile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-oocyte",
        "https://fhir.ee/vris/StructureDefinition/ee-vris-sperm"]
      }]
    }]
  }
}

```
