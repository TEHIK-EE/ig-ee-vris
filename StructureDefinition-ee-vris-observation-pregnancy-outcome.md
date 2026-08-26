# Observation: EE VRIS Pregnancy Outcome - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Observation: EE VRIS Pregnancy Outcome**

## Resource Profile: Observation: EE VRIS Pregnancy Outcome 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/vris/StructureDefinition/ee-vris-observation-pregnancy-outcome | *Version*:0.1.0 |
| Draft as of 2026-08-26 | *Computable Name*:EEVRISObservationPregnancyOutcome |

 
Pregnancy outcome including delivery, miscarriage, abortion details. (ee Raseduse lõpe sünnitus, katkemine või katkestamine koos detailidega.) 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ee.fhir.vris|current/StructureDefinition/StructureDefinition-ee-vris-observation-pregnancy-outcome.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ee-vris-observation-pregnancy-outcome.csv), [Excel](StructureDefinition-ee-vris-observation-pregnancy-outcome.xlsx), [Schematron](StructureDefinition-ee-vris-observation-pregnancy-outcome.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ee-vris-observation-pregnancy-outcome",
  "url" : "https://fhir.ee/vris/StructureDefinition/ee-vris-observation-pregnancy-outcome",
  "version" : "0.1.0",
  "name" : "EEVRISObservationPregnancyOutcome",
  "title" : "Observation: EE VRIS Pregnancy Outcome",
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
  "description" : "Pregnancy outcome including delivery, miscarriage, abortion details. (ee Raseduse lõpe sünnitus, katkemine või katkestamine koos detailidega.)",
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
        "key" : "vris-preg-outcome-1",
        "severity" : "error",
        "human" : "If outcome is delivery, then terminationType must NOT be present",
        "expression" : "value.coding.where(code='delivery').exists() \n             implies component.where(code.coding.code='termination-type').empty()",
        "source" : "https://fhir.ee/vris/StructureDefinition/ee-vris-observation-pregnancy-outcome"
      },
      {
        "key" : "vris-preg-outcome-2",
        "severity" : "warning",
        "human" : "If outcome is delivery, then deliveryDate and gestationalAgeWeeks should be present",
        "expression" : "value.coding.where(code='delivery').exists() \n             implies component.where(code.coding.code='delivery-date').exists()",
        "source" : "https://fhir.ee/vris/StructureDefinition/ee-vris-observation-pregnancy-outcome"
      },
      {
        "key" : "vris-preg-outcome-3",
        "severity" : "error",
        "human" : "If terminationType is medical or other-specified, indication must be present",
        "expression" : "component.where(code.coding.code='termination-type' and \n             value.coding.code in ('medical-indication' | 'other-specified')).exists() \n             implies component.where(code.coding.code='indication').exists()",
        "source" : "https://fhir.ee/vris/StructureDefinition/ee-vris-observation-pregnancy-outcome"
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
      "short" : "(ee Raseduse lõppemise kood)",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "364320009"
        }]
      }
    },
    {
      "id" : "Observation.subject",
      "path" : "Observation.subject",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-recipient"]
      }]
    },
    {
      "id" : "Observation.focus",
      "path" : "Observation.focus",
      "short" : "(ee Viide raseduse Condition profiilile)"
    },
    {
      "id" : "Observation.encounter",
      "path" : "Observation.encounter",
      "max" : "0"
    },
    {
      "id" : "Observation.effective[x]",
      "path" : "Observation.effective[x]",
      "short" : "(ee Raseduse lõppemise hindamise aeg)",
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
      "short" : "(ee Raseduse lõpe, sünnitus / katkemine / katkestamine vms)",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }]
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
      "id" : "Observation.derivedFrom",
      "path" : "Observation.derivedFrom",
      "short" : "(ee Viide Sünniepikriisile? Episode of Care?)"
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
      "id" : "Observation.component:terminationType",
      "path" : "Observation.component",
      "sliceName" : "terminationType",
      "short" : "(ee Raseduse katkemise/katkestamise liik)",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Observation.component:terminationType.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "363681007"
        }]
      }
    },
    {
      "id" : "Observation.component:terminationType.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "Observation.component:indication",
      "path" : "Observation.component",
      "sliceName" : "indication",
      "short" : "(ee Näidustus, vabatekst)",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Observation.component:indication.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "432678004"
        }]
      }
    },
    {
      "id" : "Observation.component:indication.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Observation.component:terminationDate",
      "path" : "Observation.component",
      "sliceName" : "terminationDate",
      "short" : "(ee Raseduse katkemise/katkestamise kuupäev)",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Observation.component:terminationDate.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "439272007"
        }]
      }
    },
    {
      "id" : "Observation.component:terminationDate.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Observation.component:deliveryDate",
      "path" : "Observation.component",
      "sliceName" : "deliveryDate",
      "short" : "(ee Sünnituse kuupäev)",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Observation.component:deliveryDate.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "161714006"
        }]
      }
    },
    {
      "id" : "Observation.component:deliveryDate.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Observation.component:gestationalAgeWeeks",
      "path" : "Observation.component",
      "sliceName" : "gestationalAgeWeeks",
      "short" : "(ee Raseduskestus sünnituse hetkel, nädalates)",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Observation.component:gestationalAgeWeeks.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "364739001"
        }]
      }
    },
    {
      "id" : "Observation.component:gestationalAgeWeeks.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:gestationalAgeWeeks.value[x].unit",
      "path" : "Observation.component.value[x].unit",
      "patternString" : "wk"
    },
    {
      "id" : "Observation.component:gestationalAgeWeeks.value[x].system",
      "path" : "Observation.component.value[x].system",
      "patternUri" : "http://unitsofmeasure.org"
    },
    {
      "id" : "Observation.component:gestationalAgeWeeks.value[x].code",
      "path" : "Observation.component.value[x].code",
      "patternCode" : "wk"
    },
    {
      "id" : "Observation.component:liveBirthsCount",
      "path" : "Observation.component",
      "sliceName" : "liveBirthsCount",
      "short" : "(ee Sündinud laste arv)",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Observation.component:liveBirthsCount.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "248991006"
        }]
      }
    },
    {
      "id" : "Observation.component:liveBirthsCount.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "Observation.component:stillbirthsCount",
      "path" : "Observation.component",
      "sliceName" : "stillbirthsCount",
      "short" : "(ee Surnult sündinud laste arv)",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Observation.component:stillbirthsCount.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "252112002"
        }]
      }
    },
    {
      "id" : "Observation.component:stillbirthsCount.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "Observation.component:placentationType",
      "path" : "Observation.component",
      "sliceName" : "placentationType",
      "short" : "(ee Platsentatsiooni tüüp mitmikel)",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Observation.component:placentationType.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "16356006"
        }]
      }
    },
    {
      "id" : "Observation.component:placentationType.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "Observation.component:deliveryMethod",
      "path" : "Observation.component",
      "sliceName" : "deliveryMethod",
      "short" : "(ee Sünnitusviis)",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Observation.component:deliveryMethod.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "118215003"
        }]
      }
    },
    {
      "id" : "Observation.component:deliveryMethod.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    }]
  }
}

```
