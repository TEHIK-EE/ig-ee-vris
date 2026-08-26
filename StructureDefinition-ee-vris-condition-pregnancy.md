# Condition: EE VRIS Condition Pregnancy - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Condition: EE VRIS Condition Pregnancy**

## Resource Profile: Condition: EE VRIS Condition Pregnancy 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/vris/StructureDefinition/ee-vris-condition-pregnancy | *Version*:0.1.0 |
| Draft as of 2026-08-26 | *Computable Name*:EEVRISConditionPregnancy |

 
Condition profile for pregnancy in Estonian VRIS fertility system. (ee Rasedus kui näidustus, diagnoos. NB! Tulevikus viidata Diagnoosi-teenusele!) 

**Usages:**

* Refer to this Profile: [CarePlan: EEVRIS Cycle](StructureDefinition-ee-vris-care-plan.md) and [EpisodeOfCare: EE VRIS EpisodeOfCare Pregnancy](StructureDefinition-ee-vris-episode-of-care-pregnancy.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ee.fhir.vris|current/StructureDefinition/StructureDefinition-ee-vris-condition-pregnancy.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ee-vris-condition-pregnancy.csv), [Excel](StructureDefinition-ee-vris-condition-pregnancy.xlsx), [Schematron](StructureDefinition-ee-vris-condition-pregnancy.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ee-vris-condition-pregnancy",
  "url" : "https://fhir.ee/vris/StructureDefinition/ee-vris-condition-pregnancy",
  "version" : "0.1.0",
  "name" : "EEVRISConditionPregnancy",
  "title" : "Condition: EE VRIS Condition Pregnancy",
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
  "description" : "Condition profile for pregnancy in Estonian VRIS fertility system. (ee Rasedus kui näidustus, diagnoos. NB! Tulevikus viidata Diagnoosi-teenusele!)",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "EE",
      "display" : "Estonia"
    }]
  }],
  "fhirVersion" : "5.0.0",
  "mapping" : [{
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
  "type" : "Condition",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Condition",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Condition",
      "path" : "Condition"
    },
    {
      "id" : "Condition.severity",
      "path" : "Condition.severity",
      "max" : "0"
    },
    {
      "id" : "Condition.code",
      "path" : "Condition.code",
      "min" : 1,
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://fhir.ee/ValueSet/rhk-10"
      }
    },
    {
      "id" : "Condition.bodySite",
      "path" : "Condition.bodySite",
      "max" : "0"
    },
    {
      "id" : "Condition.subject",
      "path" : "Condition.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-recipient",
        "https://fhir.ee/mpi/StructureDefinition/ee-mpi-patient-verified"]
      }]
    },
    {
      "id" : "Condition.encounter",
      "path" : "Condition.encounter",
      "short" : "(ee SIIA tuleks viide Encounter-EoC-teenusele!?)"
    },
    {
      "id" : "Condition.onset[x]",
      "path" : "Condition.onset[x]",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Condition.abatement[x]",
      "path" : "Condition.abatement[x]",
      "max" : "0"
    },
    {
      "id" : "Condition.stage",
      "path" : "Condition.stage",
      "max" : "0"
    },
    {
      "id" : "Condition.evidence",
      "path" : "Condition.evidence",
      "max" : "0"
    }]
  }
}

```
