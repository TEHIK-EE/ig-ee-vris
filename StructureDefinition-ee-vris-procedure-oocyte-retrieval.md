# Procedure: EE VRIS Oocyte Retrieval - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Procedure: EE VRIS Oocyte Retrieval**

## Resource Profile: Procedure: EE VRIS Oocyte Retrieval 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/vris/StructureDefinition/ee-vris-procedure-oocyte-retrieval | *Version*:0.1.0 |
| Draft as of 2026-08-26 | *Computable Name*:EEVRISProcedureOocyteRetrieval |

 
Profile for oocyte retrieval (ovarian puncture) procedure. (ee Munasarjade punktsioon munarakkude saamise protseduur.) 

**Usages:**

* Refer to this Profile: [CarePlan: EEVRIS Cycle](StructureDefinition-ee-vris-care-plan.md)
* Examples for this Profile: [Procedure/procedure-oocyte-retrieval](Procedure-procedure-oocyte-retrieval.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ee.fhir.vris|current/StructureDefinition/StructureDefinition-ee-vris-procedure-oocyte-retrieval.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ee-vris-procedure-oocyte-retrieval.csv), [Excel](StructureDefinition-ee-vris-procedure-oocyte-retrieval.xlsx), [Schematron](StructureDefinition-ee-vris-procedure-oocyte-retrieval.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ee-vris-procedure-oocyte-retrieval",
  "url" : "https://fhir.ee/vris/StructureDefinition/ee-vris-procedure-oocyte-retrieval",
  "version" : "0.1.0",
  "name" : "EEVRISProcedureOocyteRetrieval",
  "title" : "Procedure: EE VRIS Oocyte Retrieval",
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
  "description" : "Profile for oocyte retrieval (ovarian puncture) procedure. (ee Munasarjade punktsioon munarakkude saamise protseduur.)",
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
      "short" : "(ee Fix kood: munarakkude eemaldamine. NB! LOEND puudub veel)",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Procedure.code",
      "path" : "Procedure.code",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "177037000"
        }]
      }
    },
    {
      "id" : "Procedure.subject",
      "path" : "Procedure.subject",
      "short" : "(ee Patsient, kelle munasarju punktsioneeriti)",
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
      "short" : "(ee Punktsiooni kuupäev ja kellaaeg)",
      "min" : 1,
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Procedure.performer",
      "path" : "Procedure.performer",
      "short" : "(ee Arst, kes punktsiooni teostas)",
      "min" : 1
    },
    {
      "id" : "Procedure.reason",
      "path" : "Procedure.reason",
      "short" : "(ee Punktsiooni põhjus, nt IVF tsükkel, fertility preservation)"
    },
    {
      "id" : "Procedure.outcome",
      "path" : "Procedure.outcome",
      "short" : "(ee Punktsiooni tulemus üldine, nt edukas/osaliselt edukas/ebaõnnestunud)"
    },
    {
      "id" : "Procedure.complication",
      "path" : "Procedure.complication",
      "short" : "(ee Tüsistused, nt OHSS, verejooks)"
    },
    {
      "id" : "Procedure.note",
      "path" : "Procedure.note",
      "short" : "(ee Lisainfo punktsiooni kohta)"
    },
    {
      "id" : "Procedure.used",
      "path" : "Procedure.used",
      "short" : "(ee Viide saadud munarakkudele EEVRISOocyte)",
      "type" : [{
        "code" : "CodeableReference",
        "targetProfile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-oocyte"]
      }]
    }]
  }
}

```
