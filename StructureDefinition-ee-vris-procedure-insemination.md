# Procedure: EE VRIS Intrauterine Insemination (IUI) - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Procedure: EE VRIS Intrauterine Insemination (IUI)**

## Resource Profile: Procedure: EE VRIS Intrauterine Insemination (IUI) 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/vris/StructureDefinition/ee-vris-procedure-insemination | *Version*:0.1.0 |
| Draft as of 2026-08-26 | *Computable Name*:EEVRISProcedureInsemination |

 
Profile for intrauterine insemination procedure sperm directly introduced into the uterine cavity. (ee Emakasisene inseminatsioon (IUI).) 

**Usages:**

* Refer to this Profile: [CarePlan: EEVRIS Cycle](StructureDefinition-ee-vris-care-plan.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ee.fhir.vris|current/StructureDefinition/StructureDefinition-ee-vris-procedure-insemination.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ee-vris-procedure-insemination.csv), [Excel](StructureDefinition-ee-vris-procedure-insemination.xlsx), [Schematron](StructureDefinition-ee-vris-procedure-insemination.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ee-vris-procedure-insemination",
  "url" : "https://fhir.ee/vris/StructureDefinition/ee-vris-procedure-insemination",
  "version" : "0.1.0",
  "name" : "EEVRISProcedureInsemination",
  "title" : "Procedure: EE VRIS Intrauterine Insemination (IUI)",
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
  "description" : "Profile for intrauterine insemination procedure sperm directly introduced into the uterine cavity. (ee Emakasisene inseminatsioon (IUI).)",
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
      "id" : "Procedure.status",
      "path" : "Procedure.status",
      "short" : "(ee Inseminatsiooni staatus)"
    },
    {
      "id" : "Procedure.statusReason",
      "path" : "Procedure.statusReason",
      "short" : "(ee Kui status = not-done, siia põhjus)"
    },
    {
      "id" : "Procedure.category",
      "path" : "Procedure.category",
      "short" : "(ee Kategooria nt 58533008 |Artificial insemination (procedure)|)",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Procedure.code",
      "path" : "Procedure.code",
      "short" : "(ee IUI nt: 265064001 |Intrauterine artificial insemination (procedure)| Vajab üle kontrollimist ja kinnitust!\n)",
      "min" : 1
    },
    {
      "id" : "Procedure.subject",
      "path" : "Procedure.subject",
      "short" : "(ee Retsipient, kellele inseminatsioon tehti)",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-recipient"]
      }]
    },
    {
      "id" : "Procedure.occurrence[x]",
      "path" : "Procedure.occurrence[x]",
      "short" : "(ee Inseminatsiooni kuupäev ja kellaaeg)",
      "min" : 1,
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Procedure.performer",
      "path" : "Procedure.performer",
      "short" : "(ee Arst, kes inseminatsiooni teostas)",
      "min" : 1
    },
    {
      "id" : "Procedure.reason",
      "path" : "Procedure.reason",
      "short" : "(ee Inseminatsiooni põhjus, nt viljatuse näidustus)"
    },
    {
      "id" : "Procedure.outcome",
      "path" : "Procedure.outcome",
      "short" : "(ee Inseminatsiooni tulemus üldine)"
    },
    {
      "id" : "Procedure.used",
      "path" : "Procedure.used",
      "short" : "(ee Viide kasutatud spermale, NB! ainult sperma, mitte munarakk/embrüo)",
      "min" : 1,
      "type" : [{
        "code" : "CodeableReference",
        "targetProfile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-sperm"]
      }]
    }]
  }
}

```
