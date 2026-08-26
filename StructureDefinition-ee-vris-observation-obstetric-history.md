# Observation: EE VRIS Obstetric History - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Observation: EE VRIS Obstetric History**

## Resource Profile: Observation: EE VRIS Obstetric History 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/vris/StructureDefinition/ee-vris-observation-obstetric-history | *Version*:0.1.0 |
| Draft as of 2026-08-26 | *Computable Name*:EEVRISObservationObstetricHistory |

 
Past obstetric history at the START of fertility treatment cycle. Records cumulative count of all prior pregnancies, deliveries, live births and stillbirths BEFORE current treatment. (ee Sünnitusanamnees ENNE käesolevat viljatusravi tsüklit. Varasemate raseduste, sünnituste ja sündide kumulatiivne arv.) 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ee.fhir.vris|current/StructureDefinition/StructureDefinition-ee-vris-observation-obstetric-history.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ee-vris-observation-obstetric-history.csv), [Excel](StructureDefinition-ee-vris-observation-obstetric-history.xlsx), [Schematron](StructureDefinition-ee-vris-observation-obstetric-history.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ee-vris-observation-obstetric-history",
  "url" : "https://fhir.ee/vris/StructureDefinition/ee-vris-observation-obstetric-history",
  "version" : "0.1.0",
  "name" : "EEVRISObservationObstetricHistory",
  "title" : "Observation: EE VRIS Obstetric History",
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
  "description" : "Past obstetric history at the START of fertility treatment cycle. Records cumulative count of all prior pregnancies, deliveries, live births and stillbirths BEFORE current treatment. (ee Sünnitusanamnees ENNE käesolevat viljatusravi tsüklit. Varasemate raseduste, sünnituste ja sündide kumulatiivne arv.)",
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
      "short" : "(ee Sünnitusanamnees. Vaja LOENDIT.)",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "248983002"
        }]
      }
    },
    {
      "id" : "Observation.subject",
      "path" : "Observation.subject",
      "short" : "(ee Patient retsipient või partner (kellel on sünnitusanamnees))",
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
      "short" : "(ee Anamneesi kogumise kuupäev. Viljatusravi alguses tavaliselt.)"
    },
    {
      "id" : "Observation.issued",
      "path" : "Observation.issued",
      "short" : "(ee Süsteemi sisestamise kuupäev/kellaaeg)"
    },
    {
      "id" : "Observation.performer",
      "path" : "Observation.performer",
      "short" : "(ee Kes salvestas. NB! Viide SPD-le!)"
    },
    {
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
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
      "short" : "Viide allikale (nt RR päring)"
    },
    {
      "id" : "Observation.component",
      "path" : "Observation.component",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "code"
        }],
        "description" : "Sünnitusanamneesi komponendid",
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Observation.component:priorPregnanciesCount",
      "path" : "Observation.component",
      "sliceName" : "priorPregnanciesCount",
      "short" : "Varasemate raseduste arv",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Observation.component:priorPregnanciesCount.code",
      "path" : "Observation.component.code",
      "short" : "Prior pregnancies count",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "246211005"
        }]
      }
    },
    {
      "id" : "Observation.component:priorPregnanciesCount.value[x]",
      "path" : "Observation.component.value[x]",
      "short" : "Varasemate raseduste arv",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "Observation.component:priorPregnanciesCount.dataAbsentReason",
      "path" : "Observation.component.dataAbsentReason",
      "short" : "Kasuta #unknown kui 'Varasemate raseduste arv pole teada' on märgitud"
    },
    {
      "id" : "Observation.component:priorPregnanciesCount.interpretation",
      "path" : "Observation.component.interpretation",
      "max" : "0"
    },
    {
      "id" : "Observation.component:priorPregnanciesCount.referenceRange",
      "path" : "Observation.component.referenceRange",
      "max" : "0"
    },
    {
      "id" : "Observation.component:priorDeliveriesCount",
      "path" : "Observation.component",
      "sliceName" : "priorDeliveriesCount",
      "short" : "Varasemate sünnituste arv",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Observation.component:priorDeliveriesCount.code",
      "path" : "Observation.component.code",
      "short" : "Prior deliveries count",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "118212000"
        }]
      }
    },
    {
      "id" : "Observation.component:priorDeliveriesCount.value[x]",
      "path" : "Observation.component.value[x]",
      "short" : "Varasemate sünnituste arv (eeltäidetud RR-st, muudetav)",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "Observation.component:priorDeliveriesCount.dataAbsentReason",
      "path" : "Observation.component.dataAbsentReason",
      "short" : "Kasuta #unknown kui 'Varasemate sünnituste arv pole teada' on märgitud"
    },
    {
      "id" : "Observation.component:priorDeliveriesCount.interpretation",
      "path" : "Observation.component.interpretation",
      "max" : "0"
    },
    {
      "id" : "Observation.component:priorDeliveriesCount.referenceRange",
      "path" : "Observation.component.referenceRange",
      "max" : "0"
    },
    {
      "id" : "Observation.component:liveBirthsCount",
      "path" : "Observation.component",
      "sliceName" : "liveBirthsCount",
      "short" : "Sündinud laste arv (RR)",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Observation.component:liveBirthsCount.code",
      "path" : "Observation.component.code",
      "short" : "Live births count",
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
      "short" : "Sündinud laste arv (eeltäidetud RR päringust)",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "Observation.component:liveBirthsCount.interpretation",
      "path" : "Observation.component.interpretation",
      "max" : "0"
    },
    {
      "id" : "Observation.component:liveBirthsCount.referenceRange",
      "path" : "Observation.component.referenceRange",
      "max" : "0"
    },
    {
      "id" : "Observation.component:stillbirthsCount",
      "path" : "Observation.component",
      "sliceName" : "stillbirthsCount",
      "short" : "Surnult sündinud laste arv (RR)",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Observation.component:stillbirthsCount.code",
      "path" : "Observation.component.code",
      "short" : "Stillbirths count",
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
      "short" : "Surnult sündinud laste arv sh mitmikrasedused (eeltäidetud RR päringust)",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "Observation.component:stillbirthsCount.interpretation",
      "path" : "Observation.component.interpretation",
      "max" : "0"
    },
    {
      "id" : "Observation.component:stillbirthsCount.referenceRange",
      "path" : "Observation.component.referenceRange",
      "max" : "0"
    },
    {
      "id" : "Observation.component:primaryInfertility",
      "path" : "Observation.component",
      "sliceName" : "primaryInfertility",
      "short" : "Primaarne (true) või sekundaarne (false) viljatus",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Observation.component:primaryInfertility.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "297106006"
        }]
      }
    },
    {
      "id" : "Observation.component:primaryInfertility.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
