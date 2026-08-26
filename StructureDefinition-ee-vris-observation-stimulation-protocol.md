# Observation: EE VRIS Ovarian Stimulation Protocol - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Observation: EE VRIS Ovarian Stimulation Protocol**

## Resource Profile: Observation: EE VRIS Ovarian Stimulation Protocol 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/vris/StructureDefinition/ee-vris-observation-stimulation-protocol | *Version*:0.1.0 |
| Draft as of 2026-08-26 | *Computable Name*:EEVRISObservationStimulationProtocol |

 
Captures ovarian stimulation protocol details for fertility treatment cycle. (ee Munasarjade stimulatsiooni protokoll sisaldab meetodi, supressiooni, gonadotropiini ja eelneva ravi info.) 

**Usages:**

* Refer to this Profile: [CarePlan: EEVRIS Cycle](StructureDefinition-ee-vris-care-plan.md)
* Examples for this Profile: [Observation/observation-stimulation-protocol](Observation-observation-stimulation-protocol.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ee.fhir.vris|current/StructureDefinition/StructureDefinition-ee-vris-observation-stimulation-protocol.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ee-vris-observation-stimulation-protocol.csv), [Excel](StructureDefinition-ee-vris-observation-stimulation-protocol.xlsx), [Schematron](StructureDefinition-ee-vris-observation-stimulation-protocol.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ee-vris-observation-stimulation-protocol",
  "url" : "https://fhir.ee/vris/StructureDefinition/ee-vris-observation-stimulation-protocol",
  "version" : "0.1.0",
  "name" : "EEVRISObservationStimulationProtocol",
  "title" : "Observation: EE VRIS Ovarian Stimulation Protocol",
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
  "description" : "Captures ovarian stimulation protocol details for fertility treatment cycle. (ee Munasarjade stimulatsiooni protokoll sisaldab meetodi, supressiooni, gonadotropiini ja eelneva ravi info.)",
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
          "system" : "http://snomed.info/sct",
          "code" : "63487001"
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
          "system" : "http://snomed.info/sct",
          "code" : "732970000"
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
      "id" : "Observation.component:stimulationMethod",
      "path" : "Observation.component",
      "sliceName" : "stimulationMethod",
      "short" : "(ee Viljatusravi saava naise stimulatsiooni meetod. NB! LOEND VAJA!)",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Observation.component:stimulationMethod.code.text",
      "path" : "Observation.component.code.text",
      "patternString" : "TODO: SNOMED CT otsi 'ovarian stimulation method' / "
    },
    {
      "id" : "Observation.component:stimulationMethod.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.ee/ValueSet/vris-naise-stimulatsiooni-meetod"
      }
    },
    {
      "id" : "Observation.component:preStimulationTreatment",
      "path" : "Observation.component",
      "sliceName" : "preStimulationTreatment",
      "short" : "(ee Stimulatsioonieelne ravi)",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Observation.component:preStimulationTreatment.code.text",
      "path" : "Observation.component.code.text",
      "patternString" : "TODO: SNOMED CT otsi 'pre-stimulation treatment'"
    },
    {
      "id" : "Observation.component:preStimulationTreatment.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.ee/ValueSet/vris-stimulatsioonieelne-ravi"
      }
    },
    {
      "id" : "Observation.component:lhSuppressionProtocol",
      "path" : "Observation.component",
      "sliceName" : "lhSuppressionProtocol",
      "short" : "(ee Luteiniseeriva hormooni supressiooni protokoll. NB! LOEND VAja)",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Observation.component:lhSuppressionProtocol.code.text",
      "path" : "Observation.component.code.text",
      "patternString" : "TODO: SNOMED CT otsi 'LH suppression protocol' / 'GnRH protocol'"
    },
    {
      "id" : "Observation.component:lhSuppressionProtocol.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.ee/ValueSet/vris-lh-supressiooni-protokoll"
      }
    },
    {
      "id" : "Observation.component:gonadotropinUse",
      "path" : "Observation.component",
      "sliceName" : "gonadotropinUse",
      "short" : "(ee Gonadotropiini kasutus. NB! VAJA LOENDIT!)",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Observation.component:gonadotropinUse.code.text",
      "path" : "Observation.component.code.text",
      "patternString" : "TODO: SNOMED CT otsi 'gonadotropin'"
    },
    {
      "id" : "Observation.component:gonadotropinUse.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.ee/ValueSet/vris-gonadotropiini-kasutus"
      }
    },
    {
      "id" : "Observation.component:finalOocyteMaturationTrigger",
      "path" : "Observation.component",
      "sliceName" : "finalOocyteMaturationTrigger",
      "short" : "(ee Munarakkude lõpliku küpsemise käivitamine  NB! LOEND VAJA!)",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Observation.component:finalOocyteMaturationTrigger.code.text",
      "path" : "Observation.component.code.text",
      "patternString" : "TODO: SNOMED CT otsi 'oocyte maturation trigger' / 'hCG trigger'"
    },
    {
      "id" : "Observation.component:finalOocyteMaturationTrigger.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.ee/ValueSet/vris-munaraku-kypsemise-trigger"
      }
    },
    {
      "id" : "Observation.component:lutealPhaseSupport",
      "path" : "Observation.component",
      "sliceName" : "lutealPhaseSupport",
      "short" : "(ee Luteaalfaasi toetus. LOEND: Ei toimunud, Inimese kooriongonadotropiin, Progesteroon, Muud progestageenid, Kombinatsioon)",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Observation.component:lutealPhaseSupport.code.text",
      "path" : "Observation.component.code.text",
      "patternString" : "TODO: SNOMED CT otsi 'luteal phase support'"
    },
    {
      "id" : "Observation.component:lutealPhaseSupport.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.ee/ValueSet/vris-luteaalfaasi-toetus"
      }
    },
    {
      "id" : "Observation.component:previousTreatmentContinuedUntil",
      "path" : "Observation.component",
      "sliceName" : "previousTreatmentContinuedUntil",
      "short" : "(ee Eelnev ravi jätkus kuni)",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Observation.component:previousTreatmentContinuedUntil.code.text",
      "path" : "Observation.component.code.text",
      "patternString" : "TODO: SNOMED CT otsi 'date previous treatment ended'"
    },
    {
      "id" : "Observation.component:previousTreatmentContinuedUntil.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "dateTime"
      }]
    }]
  }
}

```
