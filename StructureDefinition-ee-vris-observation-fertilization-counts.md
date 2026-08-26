# Observation: EE VRIS Fertilization Counts - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Observation: EE VRIS Fertilization Counts**

## Resource Profile: Observation: EE VRIS Fertilization Counts 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/vris/StructureDefinition/ee-vris-observation-fertilization-counts | *Version*:0.1.0 |
| Draft as of 2026-08-26 | *Computable Name*:EEVRISObservationFertilizationCounts |

 
Counts of oocytes used and fertilized during fertilization procedure. (ee Viljastamise protseduuri munarakkude arvud erinevates staadiumites.) 

**Usages:**

* Refer to this Profile: [CarePlan: EEVRIS Cycle](StructureDefinition-ee-vris-care-plan.md)
* Examples for this Profile: [Observation/observation-fertilization-counts](Observation-observation-fertilization-counts.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ee.fhir.vris|current/StructureDefinition/StructureDefinition-ee-vris-observation-fertilization-counts.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ee-vris-observation-fertilization-counts.csv), [Excel](StructureDefinition-ee-vris-observation-fertilization-counts.xlsx), [Schematron](StructureDefinition-ee-vris-observation-fertilization-counts.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ee-vris-observation-fertilization-counts",
  "url" : "https://fhir.ee/vris/StructureDefinition/ee-vris-observation-fertilization-counts",
  "version" : "0.1.0",
  "name" : "EEVRISObservationFertilizationCounts",
  "title" : "Observation: EE VRIS Fertilization Counts",
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
  "description" : "Counts of oocytes used and fertilized during fertilization procedure. (ee Viljastamise protseduuri munarakkude arvud erinevates staadiumites.)",
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
      "id" : "Observation.partOf",
      "path" : "Observation.partOf",
      "short" : "(ee Viide protseduurile, mille raames arvud salvestati)",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-procedure-fertilization"]
      }]
    },
    {
      "id" : "Observation.status",
      "path" : "Observation.status",
      "patternCode" : "final"
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "short" : "(ee NB! SNOMED kood vajab kontrolli)"
    },
    {
      "id" : "Observation.code.text",
      "path" : "Observation.code.text",
      "patternString" : "TODO: SNOMED CT otsi 'oocyte fertilization counts' või sarnane"
    },
    {
      "id" : "Observation.subject",
      "path" : "Observation.subject",
      "short" : "(ee Patsient, kelle munarakkudega tehti toiminguid. KAS viitame patsiendile VÕI focuse kaudu rakule. OTSUSTUSKOHT!?!?!)",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-recipient",
        "https://fhir.ee/vris/StructureDefinition/ee-vris-donor",
        "https://fhir.ee/vris/StructureDefinition/ee-vris-donor-anonymous"]
      }]
    },
    {
      "id" : "Observation.focus",
      "path" : "Observation.focus",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-oocyte"]
      }]
    },
    {
      "id" : "Observation.effective[x]",
      "path" : "Observation.effective[x]",
      "short" : "(ee Mõõtmise/hindamise aeg)",
      "min" : 1,
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
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
      "id" : "Observation.component:mIIOocyteCountICSI",
      "path" : "Observation.component",
      "sliceName" : "mIIOocyteCountICSI",
      "short" : "(ee Metafaas II MII munarakkude arv ICSI)",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Observation.component:mIIOocyteCountICSI.code.text",
      "path" : "Observation.component.code.text",
      "patternString" : "TODO: SNOMED CT kood puudu!"
    },
    {
      "id" : "Observation.component:mIIOocyteCountICSI.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "Observation.component:usedOocyteCountIVF",
      "path" : "Observation.component",
      "sliceName" : "usedOocyteCountIVF",
      "short" : "(ee Viljastamiseks kasutatud munarakkude arv IVF)",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Observation.component:usedOocyteCountIVF.code.text",
      "path" : "Observation.component.code.text",
      "patternString" : "TODO: SNOMED CT kood puudu!"
    },
    {
      "id" : "Observation.component:usedOocyteCountIVF.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "Observation.component:usedMIIOocyteCountICSI",
      "path" : "Observation.component",
      "sliceName" : "usedMIIOocyteCountICSI",
      "short" : "(ee Viljastamiseks kasutatud MII munarakkude arv ICSI)",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Observation.component:usedMIIOocyteCountICSI.code.text",
      "path" : "Observation.component.code.text",
      "patternString" : "TODO: SNOMED CT kood puudu!"
    },
    {
      "id" : "Observation.component:usedMIIOocyteCountICSI.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "Observation.component:correctlyFertilizedPN2",
      "path" : "Observation.component",
      "sliceName" : "correctlyFertilizedPN2",
      "short" : "(ee Korrektselt viljastunud munarakkude arv PN2)",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Observation.component:correctlyFertilizedPN2.code.text",
      "path" : "Observation.component.code.text",
      "patternString" : "TODO: SNOMED CT kood puudu!"
    },
    {
      "id" : "Observation.component:correctlyFertilizedPN2.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "Observation.component:ivfFertilizedMIIOocyteCount",
      "path" : "Observation.component",
      "sliceName" : "ivfFertilizedMIIOocyteCount",
      "short" : "(ee IVF meetodil viljastatud MII munarakkude arv)",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Observation.component:ivfFertilizedMIIOocyteCount.code.text",
      "path" : "Observation.component.code.text",
      "patternString" : "TODO: SNOMED CT kood puudu!"
    },
    {
      "id" : "Observation.component:ivfFertilizedMIIOocyteCount.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "integer"
      }]
    }]
  }
}

```
