# Observation: EE VRIS Stimulation Protocol for Embryo Transfer - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Observation: EE VRIS Stimulation Protocol for Embryo Transfer**

## Resource Profile: Observation: EE VRIS Stimulation Protocol for Embryo Transfer 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/vris/StructureDefinition/ee-vris-observation-stimulation-protocol-embryo | *Version*:0.1.0 |
| Draft as of 2026-10-09 | *Computable Name*:EEVRISObservationStimulationProtocolEmbryo |

 
Captures stimulation protocol details for thawed embryo. (ee Sulatatud embrüo siirdamise protokoll jm.) 

**Usages:**

* Refer to this Profile: [CarePlan: EEVRIS Cycle](StructureDefinition-ee-vris-care-plan.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ee.fhir.vris|current/StructureDefinition/StructureDefinition-ee-vris-observation-stimulation-protocol-embryo.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ee-vris-observation-stimulation-protocol-embryo.csv), [Excel](StructureDefinition-ee-vris-observation-stimulation-protocol-embryo.xlsx), [Schematron](StructureDefinition-ee-vris-observation-stimulation-protocol-embryo.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ee-vris-observation-stimulation-protocol-embryo",
  "url" : "https://fhir.ee/vris/StructureDefinition/ee-vris-observation-stimulation-protocol-embryo",
  "version" : "0.1.0",
  "name" : "EEVRISObservationStimulationProtocolEmbryo",
  "title" : "Observation: EE VRIS Stimulation Protocol for Embryo Transfer",
  "status" : "draft",
  "date" : "2026-10-09T13:49:29+00:00",
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
  "description" : "Captures stimulation protocol details for thawed embryo. (ee Sulatatud embrüo siirdamise protokoll jm.)",
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
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "procedure"
        }]
      }
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "short" : "(ee NB! Kood on placeholder! Vaja õiget koodi!)",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhir.ee/ValueSet/vris-vaatluse-tyyp",
          "code" : "236894009"
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
        "https://fhir.ee/vris/StructureDefinition/ee-vris-donor"]
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
      "short" : "(ee Protokolli sisestamise/kasutamise kuupäev)",
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
      "max" : "0"
    },
    {
      "id" : "Observation.dataAbsentReason",
      "path" : "Observation.dataAbsentReason",
      "max" : "0"
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
      "id" : "Observation.component:ovarianStimulation",
      "path" : "Observation.component",
      "sliceName" : "ovarianStimulation",
      "short" : "(ee Munasarjade stimulatsioon Jah/Ei)",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Observation.component:ovarianStimulation.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhir.ee/ValueSet/vris-stimulatsiooni-komponendi-tyyp",
          "code" : "ovarian-stimulation"
        }]
      }
    },
    {
      "id" : "Observation.component:ovarianStimulation.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "Observation.component:lhSuppression",
      "path" : "Observation.component",
      "sliceName" : "lhSuppression",
      "short" : "(ee Luteiniseeriva hormooni (LH) supressiooni protokoll Jah/Ei)",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Observation.component:lhSuppression.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhir.ee/ValueSet/vris-stimulatsiooni-komponendi-tyyp",
          "code" : "lh-suppression"
        }]
      }
    },
    {
      "id" : "Observation.component:lhSuppression.value[x]",
      "path" : "Observation.component.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "Observation.component:lhSuppressionMethod",
      "path" : "Observation.component",
      "sliceName" : "lhSuppressionMethod",
      "short" : "(ee LH supressiooni protokolli meetod. Mitu valikut lubatud.)",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Observation.component:lhSuppressionMethod.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhir.ee/ValueSet/vris-stimulatsiooni-komponendi-tyyp",
          "code" : "lh-suppression-method"
        }]
      }
    },
    {
      "id" : "Observation.component:lhSuppressionMethod.value[x]",
      "path" : "Observation.component.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }]
    }]
  }
}

```
