# Observation: EE VRIS Clinical Pregnancy - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Observation: EE VRIS Clinical Pregnancy**

## Resource Profile: Observation: EE VRIS Clinical Pregnancy 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/vris/StructureDefinition/ee-vris-observation-clinical-pregnancy | *Version*:0.1.0 |
| Draft as of 2026-08-26 | *Computable Name*:EEVRISObservationClinicalPregnancy |

 
Clinical pregnancy, confirmed by ultrasound AND number of fetus. (ee Kliiniline rasedus, kinnitatud ultraheliuuringuga. LOOTEMUNADE arv ka! NB! Biokeemilise raseduse profiil on eraldi.) 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ee.fhir.vris|current/StructureDefinition/StructureDefinition-ee-vris-observation-clinical-pregnancy.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ee-vris-observation-clinical-pregnancy.csv), [Excel](StructureDefinition-ee-vris-observation-clinical-pregnancy.xlsx), [Schematron](StructureDefinition-ee-vris-observation-clinical-pregnancy.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ee-vris-observation-clinical-pregnancy",
  "url" : "https://fhir.ee/vris/StructureDefinition/ee-vris-observation-clinical-pregnancy",
  "version" : "0.1.0",
  "name" : "EEVRISObservationClinicalPregnancy",
  "title" : "Observation: EE VRIS Clinical Pregnancy",
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
  "description" : "Clinical pregnancy, confirmed by ultrasound AND number of fetus. (ee Kliiniline rasedus, kinnitatud ultraheliuuringuga. LOOTEMUNADE arv ka! NB! Biokeemilise raseduse profiil on eraldi.)",
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
      "id" : "Observation.instantiates[x]",
      "path" : "Observation.instantiates[x]",
      "max" : "0"
    },
    {
      "id" : "Observation.triggeredBy",
      "path" : "Observation.triggeredBy",
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
      "patternCode" : "final"
    },
    {
      "id" : "Observation.category",
      "path" : "Observation.category",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "exam"
        }]
      }
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "77386006"
        }]
      }
    },
    {
      "id" : "Observation.subject",
      "path" : "Observation.subject",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-recipient",
        "https://fhir.ee/vris/StructureDefinition/ee-vris-donor",
        "https://fhir.ee/vris/StructureDefinition/ee-vris-donor-anonymous"]
      }]
    },
    {
      "id" : "Observation.encounter",
      "path" : "Observation.encounter",
      "max" : "0"
    },
    {
      "id" : "Observation.effective[x]",
      "path" : "Observation.effective[x]",
      "short" : "(ee Millal UH tehti)",
      "min" : 1,
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Observation.issued",
      "path" : "Observation.issued",
      "max" : "0"
    },
    {
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "short" : "(ee true = kliiniline rasedus tuvastatud, false = ei tuvastatud)",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "Observation.dataAbsentReason",
      "path" : "Observation.dataAbsentReason",
      "short" : "(ee #unknown kui pole teada)"
    },
    {
      "id" : "Observation.interpretation",
      "path" : "Observation.interpretation",
      "max" : "0"
    },
    {
      "id" : "Observation.bodySite",
      "path" : "Observation.bodySite",
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
      "id" : "Observation.component:gestationalSacCount",
      "path" : "Observation.component",
      "sliceName" : "gestationalSacCount",
      "short" : "(ee Lootemunade arv ultraheliuuringul)",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Observation.component:gestationalSacCount.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "300572002"
        }]
      }
    },
    {
      "id" : "Observation.component:gestationalSacCount.value[x]",
      "path" : "Observation.component.value[x]",
      "short" : "(ee Lootemunade arv, nt 1, 2, 3)",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "Observation.component:fetalHeartActivity",
      "path" : "Observation.component",
      "sliceName" : "fetalHeartActivity",
      "short" : "(ee Loote südametegevus)",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Observation.component:fetalHeartActivity.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "249045009"
        }]
      }
    },
    {
      "id" : "Observation.component:fetalHeartActivity.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
