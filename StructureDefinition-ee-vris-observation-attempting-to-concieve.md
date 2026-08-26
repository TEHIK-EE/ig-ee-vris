# Observation: EE VRIS Attempting to Concieve - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Observation: EE VRIS Attempting to Concieve**

## Resource Profile: Observation: EE VRIS Attempting to Concieve 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/vris/StructureDefinition/ee-vris-observation-attempting-to-concieve | *Version*:0.1.0 |
| Draft as of 2026-08-26 | *Computable Name*:EEVRISObservationAttemptingToConcieve |

 
Observation profile for how long is woman attempting to concieve. (ee Rasestuda üritamine.) 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ee.fhir.vris|current/StructureDefinition/StructureDefinition-ee-vris-observation-attempting-to-concieve.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ee-vris-observation-attempting-to-concieve.csv), [Excel](StructureDefinition-ee-vris-observation-attempting-to-concieve.xlsx), [Schematron](StructureDefinition-ee-vris-observation-attempting-to-concieve.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ee-vris-observation-attempting-to-concieve",
  "url" : "https://fhir.ee/vris/StructureDefinition/ee-vris-observation-attempting-to-concieve",
  "version" : "0.1.0",
  "name" : "EEVRISObservationAttemptingToConcieve",
  "title" : "Observation: EE VRIS Attempting to Concieve",
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
  "description" : "Observation profile for how long is woman attempting to concieve. (ee Rasestuda üritamine.)",
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
      "id" : "Observation.basedOn",
      "path" : "Observation.basedOn",
      "max" : "0"
    },
    {
      "id" : "Observation.partOf",
      "path" : "Observation.partOf",
      "max" : "0"
    },
    {
      "id" : "Observation.status",
      "path" : "Observation.status",
      "short" : "Observation status. (ee See on kohustuslik!)"
    },
    {
      "id" : "Observation.category",
      "path" : "Observation.category",
      "short" : "Observation category"
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "short" : "(ee Rasestuda üritamise aeg. Vaja LOENDIT või kasutame LOINC?)",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "169449001",
          "display" : "Trying to conceive"
        }]
      },
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "http://snomed.info/sct"
      }
    },
    {
      "id" : "Observation.subject",
      "path" : "Observation.subject",
      "short" : "(ee Patsient on AINULT viljatusravi saav naine)",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-recipient",
        "https://fhir.ee/mpi/StructureDefinition/ee-mpi-patient-verified"]
      }]
    },
    {
      "id" : "Observation.focus",
      "path" : "Observation.focus",
      "max" : "0"
    },
    {
      "id" : "Observation.encounter",
      "path" : "Observation.encounter",
      "max" : "0"
    },
    {
      "id" : "Observation.effective[x]",
      "path" : "Observation.effective[x]",
      "short" : "(ee Anamneesi kogumise kuupäev)"
    },
    {
      "id" : "Observation.issued",
      "path" : "Observation.issued",
      "short" : "(ee Süsteemi sisestamise kuupäev/kellaaeg)"
    },
    {
      "id" : "Observation.performer",
      "path" : "Observation.performer",
      "short" : "(ee Kes salvestas info. Viide SPD-le siis kui teenus valmis)"
    },
    {
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "short" : "(ee Kuude arv, kui kaua on rasestuda üritatud. Kui pole teada või pole asjakohane, jäta tühjaks (ja kasuta dataAbsentReason?))",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "Observation.interpretation",
      "path" : "Observation.interpretation",
      "max" : "0"
    },
    {
      "id" : "Observation.note",
      "path" : "Observation.note",
      "short" : "(ee Lisainfo / märkused)"
    },
    {
      "id" : "Observation.bodySite",
      "path" : "Observation.bodySite",
      "max" : "0"
    },
    {
      "id" : "Observation.bodyStructure",
      "path" : "Observation.bodyStructure",
      "max" : "0"
    },
    {
      "id" : "Observation.method",
      "path" : "Observation.method",
      "max" : "0"
    },
    {
      "id" : "Observation.specimen",
      "path" : "Observation.specimen",
      "max" : "0"
    },
    {
      "id" : "Observation.device",
      "path" : "Observation.device",
      "max" : "0"
    },
    {
      "id" : "Observation.referenceRange",
      "path" : "Observation.referenceRange",
      "max" : "0"
    },
    {
      "id" : "Observation.hasMember",
      "path" : "Observation.hasMember",
      "max" : "0"
    },
    {
      "id" : "Observation.derivedFrom",
      "path" : "Observation.derivedFrom",
      "max" : "0"
    }]
  }
}

```
