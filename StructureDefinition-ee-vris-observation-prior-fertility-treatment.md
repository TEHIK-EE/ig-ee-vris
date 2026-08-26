# Observation: EE VRIS Prior Fertility Treatment - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Observation: EE VRIS Prior Fertility Treatment**

## Resource Profile: Observation: EE VRIS Prior Fertility Treatment 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/vris/StructureDefinition/ee-vris-observation-prior-fertility-treatment | *Version*:0.1.0 |
| Draft as of 2026-08-26 | *Computable Name*:EEVRISObservationPriorFertilityTreatment |

 
Prior fertility treatment history. Records whether IVF and/or IUI has been performed and the number of cycles. (ee Varasema viljatusravi anamnees) 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ee.fhir.vris|current/StructureDefinition/StructureDefinition-ee-vris-observation-prior-fertility-treatment.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ee-vris-observation-prior-fertility-treatment.csv), [Excel](StructureDefinition-ee-vris-observation-prior-fertility-treatment.xlsx), [Schematron](StructureDefinition-ee-vris-observation-prior-fertility-treatment.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ee-vris-observation-prior-fertility-treatment",
  "url" : "https://fhir.ee/vris/StructureDefinition/ee-vris-observation-prior-fertility-treatment",
  "version" : "0.1.0",
  "name" : "EEVRISObservationPriorFertilityTreatment",
  "title" : "Observation: EE VRIS Prior Fertility Treatment",
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
  "description" : "Prior fertility treatment history. Records whether IVF and/or IUI has been performed and the number of cycles. (ee Varasema viljatusravi anamnees)",
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
      "short" : "Observation status"
    },
    {
      "id" : "Observation.category",
      "path" : "Observation.category",
      "short" : "Observation category"
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "short" : "(ee Varasem viljatusravi. NB! ÕIGE snomed kood on puudu! See on placeholder!)",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "416940007",
          "display" : "History of procedure"
        }]
      }
    },
    {
      "id" : "Observation.subject",
      "path" : "Observation.subject",
      "short" : "(ee Patient ainult viljatusravi saav naine)",
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
      "short" : "(ee Anamneesi kogumise kuupäev)",
      "min" : 1
    },
    {
      "id" : "Observation.issued",
      "path" : "Observation.issued",
      "max" : "0"
    },
    {
      "id" : "Observation.performer",
      "path" : "Observation.performer",
      "short" : "(ee Kes salvestas. NB! Viide SPD-le)"
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
    },
    {
      "id" : "Observation.component",
      "path" : "Observation.component",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "code"
        }],
        "description" : "(ee Varasema viljatusravi komponendid)",
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Observation.component:priorIVF",
      "path" : "Observation.component",
      "sliceName" : "priorIVF",
      "short" : "Varasem IVF toimunud (jah/ei)",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Observation.component:priorIVF.code",
      "path" : "Observation.component.code",
      "short" : "Prior IVF performed",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "52637005",
          "display" : "Test tube ovum fertilization"
        }]
      }
    },
    {
      "id" : "Observation.component:priorIVF.value[x]",
      "path" : "Observation.component.value[x]",
      "short" : "true = Jah, false = Ei",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "Observation.component:priorIVF.dataAbsentReason",
      "path" : "Observation.component.dataAbsentReason",
      "max" : "0"
    },
    {
      "id" : "Observation.component:priorIVF.interpretation",
      "path" : "Observation.component.interpretation",
      "max" : "0"
    },
    {
      "id" : "Observation.component:priorIVF.referenceRange",
      "path" : "Observation.component.referenceRange",
      "max" : "0"
    },
    {
      "id" : "Observation.component:ivfCyclesCount",
      "path" : "Observation.component",
      "sliceName" : "ivfCyclesCount",
      "short" : "IVF tsüklite arv (kuvatakse kui IVF = Jah)",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Observation.component:ivfCyclesCount.code",
      "path" : "Observation.component.code",
      "short" : "IVF cycles count. (ee NB! VAJA KOODI!)",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhir.ee/CodeSystem/vris-viljatusravi-komponent",
          "code" : "ivf-cycles-count"
        }]
      }
    },
    {
      "id" : "Observation.component:ivfCyclesCount.value[x]",
      "path" : "Observation.component.value[x]",
      "short" : "IVF tsüklite arv",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "Observation.component:ivfCyclesCount.dataAbsentReason",
      "path" : "Observation.component.dataAbsentReason",
      "max" : "0"
    },
    {
      "id" : "Observation.component:ivfCyclesCount.interpretation",
      "path" : "Observation.component.interpretation",
      "max" : "0"
    },
    {
      "id" : "Observation.component:ivfCyclesCount.referenceRange",
      "path" : "Observation.component.referenceRange",
      "max" : "0"
    },
    {
      "id" : "Observation.component:priorIUI",
      "path" : "Observation.component",
      "sliceName" : "priorIUI",
      "short" : "Varasem IUI toimunud (jah/ei)",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Observation.component:priorIUI.code",
      "path" : "Observation.component.code",
      "short" : "Prior IUI performed (ee NB! VAJA KOODI!)",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhir.ee/CodeSystem/vris-viljatusravi-komponent",
          "code" : "prior-iui"
        }]
      }
    },
    {
      "id" : "Observation.component:priorIUI.value[x]",
      "path" : "Observation.component.value[x]",
      "short" : "true = Jah, false = Ei",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "Observation.component:priorIUI.dataAbsentReason",
      "path" : "Observation.component.dataAbsentReason",
      "max" : "0"
    },
    {
      "id" : "Observation.component:priorIUI.interpretation",
      "path" : "Observation.component.interpretation",
      "max" : "0"
    },
    {
      "id" : "Observation.component:priorIUI.referenceRange",
      "path" : "Observation.component.referenceRange",
      "max" : "0"
    },
    {
      "id" : "Observation.component:iuiCyclesCount",
      "path" : "Observation.component",
      "sliceName" : "iuiCyclesCount",
      "short" : "IUI tsüklite arv (kuvatakse kui IUI = Jah)",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Observation.component:iuiCyclesCount.code",
      "path" : "Observation.component.code",
      "short" : "IUI cycles count(ee NB! VAJA KOODI!)",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhir.ee/CodeSystem/vris-viljatusravi-komponent",
          "code" : "iui-cycles-count"
        }]
      }
    },
    {
      "id" : "Observation.component:iuiCyclesCount.value[x]",
      "path" : "Observation.component.value[x]",
      "short" : "IUI tsüklite arv",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "Observation.component:iuiCyclesCount.dataAbsentReason",
      "path" : "Observation.component.dataAbsentReason",
      "max" : "0"
    },
    {
      "id" : "Observation.component:iuiCyclesCount.interpretation",
      "path" : "Observation.component.interpretation",
      "max" : "0"
    },
    {
      "id" : "Observation.component:iuiCyclesCount.referenceRange",
      "path" : "Observation.component.referenceRange",
      "max" : "0"
    }]
  }
}

```
