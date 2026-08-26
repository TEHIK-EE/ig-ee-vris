# Encounter: EE VRIS Encounter - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Encounter: EE VRIS Encounter**

## Resource Profile: Encounter: EE VRIS Encounter 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/vris/StructureDefinition/ee-vris-encounter | *Version*:0.1.0 |
| Draft as of 2026-08-26 | *Computable Name*:EEVRISEncounter |

 
Simple encounter profile for VRIS fertility treatment visits. (ee Visiidi ehk KONTAKTI profiil viljatusravi kontekstis. NB! Tulevikus tuleb viidata Encounter-EoC teenusele!) 

**Usages:**

* Refer to this Profile: [CarePlan: EEVRIS Cycle](StructureDefinition-ee-vris-care-plan.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ee.fhir.vris|current/StructureDefinition/StructureDefinition-ee-vris-encounter.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ee-vris-encounter.csv), [Excel](StructureDefinition-ee-vris-encounter.xlsx), [Schematron](StructureDefinition-ee-vris-encounter.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ee-vris-encounter",
  "url" : "https://fhir.ee/vris/StructureDefinition/ee-vris-encounter",
  "version" : "0.1.0",
  "name" : "EEVRISEncounter",
  "title" : "Encounter: EE VRIS Encounter",
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
  "description" : "Simple encounter profile for VRIS fertility treatment visits. (ee Visiidi ehk KONTAKTI profiil viljatusravi kontekstis. NB! Tulevikus tuleb viidata Encounter-EoC teenusele!)",
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
  "type" : "Encounter",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Encounter",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Encounter",
      "path" : "Encounter"
    },
    {
      "id" : "Encounter.identifier",
      "path" : "Encounter.identifier",
      "short" : "(ee Visiidi identifikaator)"
    },
    {
      "id" : "Encounter.status",
      "path" : "Encounter.status",
      "short" : "(ee planned / in-progress / on-hold / completed / cancelled / entered-in-error)"
    },
    {
      "id" : "Encounter.subject",
      "path" : "Encounter.subject",
      "short" : "(ee Patsient)",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-recipient",
        "https://fhir.ee/vris/StructureDefinition/ee-vris-donor",
        "https://fhir.ee/vris/StructureDefinition/ee-vris-donor-anonymous",
        "https://fhir.ee/vris/StructureDefinition/ee-vris-patient-child"]
      }]
    },
    {
      "id" : "Encounter.episodeOfCare",
      "path" : "Encounter.episodeOfCare",
      "short" : "(ee EoC seob kogu ravi, kõik tsüklid jm kokku üheks juhtumiks.)",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-episode-of-care"]
      }]
    },
    {
      "id" : "Encounter.serviceProvider",
      "path" : "Encounter.serviceProvider",
      "short" : "(ee Teenusepakkuja, viide organisatsioonile)"
    },
    {
      "id" : "Encounter.participant",
      "path" : "Encounter.participant",
      "short" : "(ee Osalejad, nt arst SPD-st)"
    },
    {
      "id" : "Encounter.actualPeriod",
      "path" : "Encounter.actualPeriod",
      "short" : "(ee Visiidi tegelik periood)"
    },
    {
      "id" : "Encounter.location",
      "path" : "Encounter.location",
      "short" : "(ee Visiidi asukoht)"
    }]
  }
}

```
