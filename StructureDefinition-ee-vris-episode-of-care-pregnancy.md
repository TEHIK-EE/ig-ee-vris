# EpisodeOfCare: EE VRIS EpisodeOfCare Pregnancy - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EpisodeOfCare: EE VRIS EpisodeOfCare Pregnancy**

## Resource Profile: EpisodeOfCare: EE VRIS EpisodeOfCare Pregnancy 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/vris/StructureDefinition/ee-vris-episode-of-care-pregnancy | *Version*:0.1.0 |
| Draft as of 2026-08-26 | *Computable Name*:EEVRISEpisodeOfCarePregnancy |

 
EpisodeOfCare profile for the WHOLE pregnancy, starting before conception and ending with childbirth. (ee Raseduse kogu elukaar. NB! Profiil peab järgima Encounter-EoC tuleviku struktuuri!). 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ee.fhir.vris|current/StructureDefinition/StructureDefinition-ee-vris-episode-of-care-pregnancy.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ee-vris-episode-of-care-pregnancy.csv), [Excel](StructureDefinition-ee-vris-episode-of-care-pregnancy.xlsx), [Schematron](StructureDefinition-ee-vris-episode-of-care-pregnancy.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ee-vris-episode-of-care-pregnancy",
  "url" : "https://fhir.ee/vris/StructureDefinition/ee-vris-episode-of-care-pregnancy",
  "version" : "0.1.0",
  "name" : "EEVRISEpisodeOfCarePregnancy",
  "title" : "EpisodeOfCare: EE VRIS EpisodeOfCare Pregnancy",
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
  "description" : "EpisodeOfCare profile for the WHOLE pregnancy, starting before conception and ending with childbirth. (ee Raseduse kogu elukaar. NB! Profiil peab järgima Encounter-EoC tuleviku struktuuri!).",
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
  "baseDefinition" : "https://fhir.ee/vris/StructureDefinition/ee-vris-episode-of-care",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "EpisodeOfCare",
      "path" : "EpisodeOfCare"
    },
    {
      "id" : "EpisodeOfCare.identifier",
      "path" : "EpisodeOfCare.identifier",
      "min" : 1
    },
    {
      "id" : "EpisodeOfCare.identifier.id",
      "path" : "EpisodeOfCare.identifier.id",
      "max" : "0"
    },
    {
      "id" : "EpisodeOfCare.identifier.extension",
      "path" : "EpisodeOfCare.identifier.extension",
      "max" : "0"
    },
    {
      "id" : "EpisodeOfCare.identifier.use",
      "path" : "EpisodeOfCare.identifier.use",
      "max" : "0"
    },
    {
      "id" : "EpisodeOfCare.identifier.type",
      "path" : "EpisodeOfCare.identifier.type",
      "max" : "0"
    },
    {
      "id" : "EpisodeOfCare.identifier.period",
      "path" : "EpisodeOfCare.identifier.period",
      "max" : "0"
    },
    {
      "id" : "EpisodeOfCare.identifier.assigner",
      "path" : "EpisodeOfCare.identifier.assigner",
      "max" : "0"
    },
    {
      "id" : "EpisodeOfCare.statusHistory",
      "path" : "EpisodeOfCare.statusHistory",
      "max" : "0"
    },
    {
      "id" : "EpisodeOfCare.type",
      "path" : "EpisodeOfCare.type",
      "max" : "0"
    },
    {
      "id" : "EpisodeOfCare.reason",
      "path" : "EpisodeOfCare.reason",
      "short" : "(ee KAS siia viide observationile?)"
    },
    {
      "id" : "EpisodeOfCare.reason.id",
      "path" : "EpisodeOfCare.reason.id",
      "max" : "0"
    },
    {
      "id" : "EpisodeOfCare.reason.extension",
      "path" : "EpisodeOfCare.reason.extension",
      "max" : "0"
    },
    {
      "id" : "EpisodeOfCare.diagnosis.id",
      "path" : "EpisodeOfCare.diagnosis.id",
      "max" : "0"
    },
    {
      "id" : "EpisodeOfCare.diagnosis.extension",
      "path" : "EpisodeOfCare.diagnosis.extension",
      "max" : "0"
    },
    {
      "id" : "EpisodeOfCare.diagnosis.modifierExtension",
      "path" : "EpisodeOfCare.diagnosis.modifierExtension",
      "max" : "0"
    },
    {
      "id" : "EpisodeOfCare.diagnosis.condition",
      "path" : "EpisodeOfCare.diagnosis.condition",
      "min" : 1,
      "type" : [{
        "code" : "CodeableReference",
        "targetProfile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-condition-pregnancy"]
      }]
    },
    {
      "id" : "EpisodeOfCare.patient",
      "path" : "EpisodeOfCare.patient",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-recipient",
        "https://fhir.ee/mpi/StructureDefinition/ee-mpi-patient-verified"]
      }]
    },
    {
      "id" : "EpisodeOfCare.managingOrganization",
      "path" : "EpisodeOfCare.managingOrganization",
      "min" : 1
    },
    {
      "id" : "EpisodeOfCare.period",
      "path" : "EpisodeOfCare.period",
      "min" : 1
    },
    {
      "id" : "EpisodeOfCare.period.id",
      "path" : "EpisodeOfCare.period.id",
      "max" : "0"
    },
    {
      "id" : "EpisodeOfCare.period.extension",
      "path" : "EpisodeOfCare.period.extension",
      "max" : "0"
    },
    {
      "id" : "EpisodeOfCare.period.start",
      "path" : "EpisodeOfCare.period.start",
      "min" : 1
    },
    {
      "id" : "EpisodeOfCare.referralRequest",
      "path" : "EpisodeOfCare.referralRequest",
      "max" : "0"
    },
    {
      "id" : "EpisodeOfCare.careManager",
      "path" : "EpisodeOfCare.careManager",
      "max" : "0"
    },
    {
      "id" : "EpisodeOfCare.careTeam",
      "path" : "EpisodeOfCare.careTeam",
      "max" : "0"
    },
    {
      "id" : "EpisodeOfCare.account",
      "path" : "EpisodeOfCare.account",
      "max" : "0"
    }]
  }
}

```
