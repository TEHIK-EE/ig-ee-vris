# Observation: EE VRIS Child Count - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Observation: EE VRIS Child Count**

## Resource Profile: Observation: EE VRIS Child Count 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/vris/StructureDefinition/ee-vris-observation-child-count | *Version*:0.1.0 |
| Draft as of 2026-10-09 | *Computable Name*:EEVRISObservationChildCount |

 
Count of children/pregnancies fom one donor. (ee Ühe anonüümse või mittepartnerist doonori doonorrakkudest saadud raseduste ja sündinud laste arv ning nende naiste arv, kellel on säilitatud embrüoid, mis on loodud nimetatud doonori doonorrakkudest ja mida võidakse tulevikus kasutada raseduse saavutamiseks.) 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ee.fhir.vris|current/StructureDefinition/StructureDefinition-ee-vris-observation-child-count.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ee-vris-observation-child-count.csv), [Excel](StructureDefinition-ee-vris-observation-child-count.xlsx), [Schematron](StructureDefinition-ee-vris-observation-child-count.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ee-vris-observation-child-count",
  "url" : "https://fhir.ee/vris/StructureDefinition/ee-vris-observation-child-count",
  "version" : "0.1.0",
  "name" : "EEVRISObservationChildCount",
  "title" : "Observation: EE VRIS Child Count",
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
  "description" : "Count of children/pregnancies fom one donor. (ee Ühe anonüümse või mittepartnerist doonori doonorrakkudest saadud raseduste ja sündinud laste arv ning nende naiste arv, kellel on säilitatud embrüoid, mis on loodud nimetatud doonori doonorrakkudest ja mida võidakse tulevikus kasutada raseduse saavutamiseks.)",
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
      "id" : "Observation.meta.source",
      "path" : "Observation.meta.source",
      "short" : "(ee Siia tuleb viide, kui andmed on pärit Rahvastikuregistrist)"
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
      "id" : "Observation.code",
      "path" : "Observation.code",
      "short" : "(ee Sündinud laste arv.)",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhir.ee/ValueSet/vris-vaatluse-tyyp",
          "code" : "237231000181104"
        }]
      }
    },
    {
      "id" : "Observation.subject",
      "path" : "Observation.subject",
      "short" : "(ee Patient retsipient või partner (kelle laste arv))",
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
      "short" : "(ee Laste arv ühe doonori kohta. KALKULATSIOON eri observationite jm põhjalt)",
      "min" : 1,
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
