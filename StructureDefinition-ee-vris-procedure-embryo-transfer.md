# Procedure: EE VRIS Embryo Transfer - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Procedure: EE VRIS Embryo Transfer**

## Resource Profile: Procedure: EE VRIS Embryo Transfer 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/vris/StructureDefinition/ee-vris-procedure-embryo-transfer | *Version*:0.1.0 |
| Draft as of 2026-08-26 | *Computable Name*:EEVRISProcedureEmbryoTransfer |

 
Procedure for embryo transfer to recipient. Records transfer date, number of embryos, outcome, or reason for non-transfer. (ee Embrüo siirdamise protseduur.) 

**Usages:**

* Refer to this Profile: [CarePlan: EEVRIS Cycle](StructureDefinition-ee-vris-care-plan.md)
* Examples for this Profile: [Procedure/procedure-embryo-transfer](Procedure-procedure-embryo-transfer.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ee.fhir.vris|current/StructureDefinition/StructureDefinition-ee-vris-procedure-embryo-transfer.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ee-vris-procedure-embryo-transfer.csv), [Excel](StructureDefinition-ee-vris-procedure-embryo-transfer.xlsx), [Schematron](StructureDefinition-ee-vris-procedure-embryo-transfer.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ee-vris-procedure-embryo-transfer",
  "url" : "https://fhir.ee/vris/StructureDefinition/ee-vris-procedure-embryo-transfer",
  "version" : "0.1.0",
  "name" : "EEVRISProcedureEmbryoTransfer",
  "title" : "Procedure: EE VRIS Embryo Transfer",
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
  "description" : "Procedure for embryo transfer to recipient. Records transfer date, number of embryos, outcome, or reason for non-transfer. (ee Embrüo siirdamise protseduur.)",
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
      "short" : "(ee completed = siirdamine toimus, not-done = ei toimunud)"
    },
    {
      "id" : "Procedure.statusReason",
      "path" : "Procedure.statusReason",
      "short" : "(ee Kui status = not-done, siia mitte siirdamise põhjus. VAJA LOEND!)"
    },
    {
      "id" : "Procedure.category",
      "path" : "Procedure.category",
      "short" : "(ee Kategooria: embrüo siirdamine)",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Procedure.code",
      "path" : "Procedure.code",
      "short" : "(ee NB! SNOMED kood vajab kontrolli)",
      "min" : 1
    },
    {
      "id" : "Procedure.code.text",
      "path" : "Procedure.code.text",
      "patternString" : "TODO: SNOMED CT otsi 'embryo transfer'"
    },
    {
      "id" : "Procedure.subject",
      "path" : "Procedure.subject",
      "short" : "(ee Retsipient, kellele embrüo siirdati)",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-recipient"]
      }]
    },
    {
      "id" : "Procedure.occurrence[x]",
      "path" : "Procedure.occurrence[x]",
      "short" : "(ee Embrüo siirdamise kuupäev)",
      "min" : 1,
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Procedure.performer",
      "path" : "Procedure.performer",
      "min" : 1
    },
    {
      "id" : "Procedure.outcome",
      "path" : "Procedure.outcome",
      "short" : "(ee Siirdamise tulemus)"
    },
    {
      "id" : "Procedure.complication",
      "path" : "Procedure.complication",
      "type" : [{
        "code" : "CodeableReference",
        "targetProfile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-condition-treatment-complication"]
      }]
    },
    {
      "id" : "Procedure.used",
      "path" : "Procedure.used",
      "short" : "(ee Viide siirdatud embrüo(de)le)",
      "type" : [{
        "code" : "CodeableReference",
        "targetProfile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-embryo"]
      }]
    }]
  }
}

```
