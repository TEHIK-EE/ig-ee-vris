# Observation: EE VRIS Ovarian Stimulation Protocol - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Observation: EE VRIS Ovarian Stimulation Protocol**

## Resource Profile: Observation: EE VRIS Ovarian Stimulation Protocol 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/vris/StructureDefinition/ee-vris-observation-stimulation-protocol | *Version*:0.1.0 |
| Draft as of 2026-10-09 | *Computable Name*:EEVRISObservationStimulationProtocol |

 
Captures ovarian stimulation protocol details for fertility treatment cycle. (ee Munasarjade stimulatsiooni protokoll sisaldab meetodi, supressiooni, gonadotropiini ja eelneva ravi info.) 

**Usages:**

* Refer to this Profile: [CarePlan: EEVRIS Cycle](StructureDefinition-ee-vris-care-plan.md)

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
      "path" : "Observation",
      "constraint" : [{
        "key" : "vris-stim-1",
        "severity" : "error",
        "human" : "If ovarian stimulation = false, pre-stimulation treatment, LH suppression and gonadotropin data must not be present. (ee Kui munasarjade stimulatsioon = ei, ei tohi täita stimulatsioonieelse ravi, LH supressiooni ega gonadotropiini andmeid.)",
        "expression" : "component.where(code.coding.code = 'ovarian-stimulation').value.ofType(boolean) = false implies component.where(code.coding.code in ('pre-stimulation-treatment' | 'pre-stimulation-treatment-method' | 'lh-suppression' | 'lh-suppression-method' | 'gonadotropin-use')).empty()",
        "source" : "https://fhir.ee/vris/StructureDefinition/ee-vris-observation-stimulation-protocol"
      },
      {
        "key" : "vris-stim-2",
        "severity" : "error",
        "human" : "A method component may only be present when its corresponding yes/no component is true. (ee Meetodi komponenti tohib täita ainult siis, kui vastav Jah/Ei komponent on true.)",
        "expression" : "(component.where(code.coding.code = 'pre-stimulation-treatment-method').exists() implies component.where(code.coding.code = 'pre-stimulation-treatment').value.ofType(boolean) = true) and (component.where(code.coding.code = 'lh-suppression-method').exists() implies component.where(code.coding.code = 'lh-suppression').value.ofType(boolean) = true) and (component.where(code.coding.code = 'final-oocyte-maturation-trigger-method').exists() implies component.where(code.coding.code = 'final-oocyte-maturation-trigger').value.ofType(boolean) = true) and (component.where(code.coding.code = 'luteal-phase-support-method').exists() implies component.where(code.coding.code = 'luteal-phase-support').value.ofType(boolean) = true)",
        "source" : "https://fhir.ee/vris/StructureDefinition/ee-vris-observation-stimulation-protocol"
      },
      {
        "key" : "vris-stim-3",
        "severity" : "error",
        "human" : "The same method value must not be repeated within a component slice. (ee Sama meetodi väärtust ei tohi komponendi lõikes korrata.)",
        "expression" : "component.where(value is CodeableConcept).select(code.coding.code.first() & '|' & value.coding.code.first()).isDistinct()",
        "source" : "https://fhir.ee/vris/StructureDefinition/ee-vris-observation-stimulation-protocol"
      }]
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
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhir.ee/ValueSet/vris-vaatluse-tyyp",
          "code" : "732970000"
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
      "id" : "Observation.bodyStructure",
      "path" : "Observation.bodyStructure",
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
      "id" : "Observation.component",
      "path" : "Observation.component",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "code"
        }],
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "Observation.component:ovarianStimulation",
      "path" : "Observation.component",
      "sliceName" : "ovarianStimulation",
      "short" : "(ee Munasarjade stimulatsioon Jah/Ei)",
      "min" : 1,
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
      "min" : 1,
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "Observation.component:preStimulationTreatment",
      "path" : "Observation.component",
      "sliceName" : "preStimulationTreatment",
      "short" : "(ee Stimulatsioonieelne ravi Jah/Ei)",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Observation.component:preStimulationTreatment.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhir.ee/ValueSet/vris-stimulatsiooni-komponendi-tyyp",
          "code" : "pre-stimulation-treatment"
        }]
      }
    },
    {
      "id" : "Observation.component:preStimulationTreatment.value[x]",
      "path" : "Observation.component.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "Observation.component:preStimulationTreatmentMethod",
      "path" : "Observation.component",
      "sliceName" : "preStimulationTreatmentMethod",
      "short" : "(ee Stimulatsioonieelse ravi meetod. Mitu valikut lubatud — iga valik eraldi komponendina.)",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Observation.component:preStimulationTreatmentMethod.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhir.ee/ValueSet/vris-stimulatsiooni-komponendi-tyyp",
          "code" : "pre-stimulation-treatment-method"
        }]
      }
    },
    {
      "id" : "Observation.component:preStimulationTreatmentMethod.value[x]",
      "path" : "Observation.component.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.ee/ValueSet/vris-stimulatsioonieelne-ravi"
      }
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
      "short" : "(ee Gonadotropiin. Mitu valikut lubatud. Koguannus tuleb EEVRISMedicationAdministration.dosage.dose kaudu)",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Observation.component:gonadotropinUse.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhir.ee/ValueSet/vris-stimulatsiooni-komponendi-tyyp",
          "code" : "gonadotropin-use"
        }]
      }
    },
    {
      "id" : "Observation.component:gonadotropinUse.value[x]",
      "path" : "Observation.component.value[x]",
      "min" : 1,
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
      "short" : "(ee Munarakkude lõpliku küpsemise käivitamine Jah/Ei)",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Observation.component:finalOocyteMaturationTrigger.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhir.ee/ValueSet/vris-stimulatsiooni-komponendi-tyyp",
          "code" : "final-oocyte-maturation-trigger"
        }]
      }
    },
    {
      "id" : "Observation.component:finalOocyteMaturationTrigger.value[x]",
      "path" : "Observation.component.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "Observation.component:finalOocyteMaturationTriggerMethod",
      "path" : "Observation.component",
      "sliceName" : "finalOocyteMaturationTriggerMethod",
      "short" : "(ee Munarakkude lõpliku küpsemise käivitamise meetod. Mitu valikut lubatud.)",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Observation.component:finalOocyteMaturationTriggerMethod.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhir.ee/ValueSet/vris-stimulatsiooni-komponendi-tyyp",
          "code" : "final-oocyte-maturation-trigger-method"
        }]
      }
    },
    {
      "id" : "Observation.component:finalOocyteMaturationTriggerMethod.value[x]",
      "path" : "Observation.component.value[x]",
      "min" : 1,
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
      "short" : "(ee Luteaalfaasi toetus Jah/Ei)",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Observation.component:lutealPhaseSupport.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhir.ee/ValueSet/vris-stimulatsiooni-komponendi-tyyp",
          "code" : "luteal-phase-support"
        }]
      }
    },
    {
      "id" : "Observation.component:lutealPhaseSupport.value[x]",
      "path" : "Observation.component.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "Observation.component:lutealPhaseSupportMethod",
      "path" : "Observation.component",
      "sliceName" : "lutealPhaseSupportMethod",
      "short" : "(ee Luteaalfaasi toetuse meetod. Mitu valikut lubatud.)",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Observation.component:lutealPhaseSupportMethod.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhir.ee/ValueSet/vris-stimulatsiooni-komponendi-tyyp",
          "code" : "luteal-phase-support-method"
        }]
      }
    },
    {
      "id" : "Observation.component:lutealPhaseSupportMethod.value[x]",
      "path" : "Observation.component.value[x]",
      "min" : 1,
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
      "id" : "Observation.component:previousTreatmentContinuedUntil.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhir.ee/ValueSet/vris-stimulatsiooni-komponendi-tyyp",
          "code" : "previous-treatment-continued-until"
        }]
      }
    },
    {
      "id" : "Observation.component:previousTreatmentContinuedUntil.value[x]",
      "path" : "Observation.component.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "dateTime"
      }]
    }]
  }
}

```
