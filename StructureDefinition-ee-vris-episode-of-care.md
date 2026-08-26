# EpisodeOfCare: EE VRIS Episode of Care - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EpisodeOfCare: EE VRIS Episode of Care**

## Resource Profile: EpisodeOfCare: EE VRIS Episode of Care 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/vris/StructureDefinition/ee-vris-episode-of-care | *Version*:0.1.0 |
| Draft as of 2026-08-26 | *Computable Name*:EEVRISEpisodeOfCare |

 
Episode of care profile for VRIS fertility treatment. Groups related encounters, procedures and observations within a longer treatment period. (ee Viljatusravi episood ühendab ravitsükli piires toimuvad visiidid, protseduurid ja vaatlused. NB! Tulevikus viidata Encounter-Episode teenusele!) 

**Usages:**

* Derived from this Profile: [EpisodeOfCare: EE VRIS EpisodeOfCare Pregnancy](StructureDefinition-ee-vris-episode-of-care-pregnancy.md)
* Refer to this Profile: [Encounter: EE VRIS Encounter](StructureDefinition-ee-vris-encounter.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ee.fhir.vris|current/StructureDefinition/StructureDefinition-ee-vris-episode-of-care.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ee-vris-episode-of-care.csv), [Excel](StructureDefinition-ee-vris-episode-of-care.xlsx), [Schematron](StructureDefinition-ee-vris-episode-of-care.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ee-vris-episode-of-care",
  "url" : "https://fhir.ee/vris/StructureDefinition/ee-vris-episode-of-care",
  "version" : "0.1.0",
  "name" : "EEVRISEpisodeOfCare",
  "title" : "EpisodeOfCare: EE VRIS Episode of Care",
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
  "description" : "Episode of care profile for VRIS fertility treatment. Groups related encounters, procedures and observations within a longer treatment period. (ee Viljatusravi episood ühendab ravitsükli piires toimuvad visiidid, protseduurid ja vaatlused. NB! Tulevikus viidata Encounter-Episode teenusele!)",
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
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "EpisodeOfCare",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/EpisodeOfCare",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "EpisodeOfCare",
      "path" : "EpisodeOfCare"
    },
    {
      "id" : "EpisodeOfCare.identifier",
      "path" : "EpisodeOfCare.identifier",
      "short" : "(ee Episoodi identifikaator)"
    },
    {
      "id" : "EpisodeOfCare.type",
      "path" : "EpisodeOfCare.type",
      "short" : "(ee Episoodi tüüp, nt viljatusravi tsükkel)"
    },
    {
      "id" : "EpisodeOfCare.reason",
      "path" : "EpisodeOfCare.reason",
      "short" : "(ee Episoodi põhjus, nt viljatuse näidustus)"
    },
    {
      "id" : "EpisodeOfCare.patient",
      "path" : "EpisodeOfCare.patient",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-recipient",
        "https://fhir.ee/vris/StructureDefinition/ee-vris-donor",
        "https://fhir.ee/vris/StructureDefinition/ee-vris-donor-anonymous",
        "https://fhir.ee/mpi/StructureDefinition/ee-mpi-patient-verified",
        "https://fhir.ee/vris/StructureDefinition/ee-vris-patient-child"]
      }]
    },
    {
      "id" : "EpisodeOfCare.managingOrganization",
      "path" : "EpisodeOfCare.managingOrganization",
      "short" : "(ee Vastutav organisatsioon, viide SPD-le)"
    },
    {
      "id" : "EpisodeOfCare.period",
      "path" : "EpisodeOfCare.period",
      "short" : "(ee Episoodi periood: algus ja lõpp)"
    },
    {
      "id" : "EpisodeOfCare.careManager",
      "path" : "EpisodeOfCare.careManager",
      "short" : "(ee Vastutav arst, viide SPD-le)"
    }]
  }
}

```
