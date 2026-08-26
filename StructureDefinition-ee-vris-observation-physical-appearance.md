# Observation: EE VRIS Physical Appearance - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Observation: EE VRIS Physical Appearance**

## Resource Profile: Observation: EE VRIS Physical Appearance 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/vris/StructureDefinition/ee-vris-observation-physical-appearance | *Version*:0.1.0 |
| Draft as of 2026-08-26 | *Computable Name*:EEVRISObservationPhysicalAppearance |

 
Observation profile for recording characteristics of physical appearance of donor. (ee Profiil on mõeldud välimust kirjeldavate karakteristikute jaoks, nt silmade värd, juuste värv, naha värv, kehaehitus.) 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ee.fhir.vris|current/StructureDefinition/StructureDefinition-ee-vris-observation-physical-appearance.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ee-vris-observation-physical-appearance.csv), [Excel](StructureDefinition-ee-vris-observation-physical-appearance.xlsx), [Schematron](StructureDefinition-ee-vris-observation-physical-appearance.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ee-vris-observation-physical-appearance",
  "url" : "https://fhir.ee/vris/StructureDefinition/ee-vris-observation-physical-appearance",
  "version" : "0.1.0",
  "name" : "EEVRISObservationPhysicalAppearance",
  "title" : "Observation: EE VRIS Physical Appearance",
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
  "description" : "Observation profile for recording characteristics of physical appearance of donor. (ee Profiil on mõeldud välimust kirjeldavate karakteristikute jaoks, nt silmade värd, juuste värv, naha värv, kehaehitus.)",
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
      "short" : "Vaatluse kategooria"
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "short" : "Füüsilise välimuse vaatluse SCT kood",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "703248002"
        }]
      }
    },
    {
      "id" : "Observation.subject",
      "path" : "Observation.subject",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-donor",
        "https://fhir.ee/vris/StructureDefinition/ee-vris-donor-anonymous",
        "https://fhir.ee/vris/StructureDefinition/ee-vris-recipient",
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
      "short" : "(ee Millal andmed registreeriti)",
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
      "id" : "Observation.note",
      "path" : "Observation.note",
      "short" : "(ee Kui on midagi vaja veel lisada)"
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
        "description" : "Sliced by physical appearance characteristic. (ee NB! Loendi viited ja koodid EI OLE lõplikud!)",
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Observation.component:eyecolor",
      "path" : "Observation.component",
      "sliceName" : "eyecolor",
      "short" : "Silmade värvus",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Observation.component:eyecolor.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "247030006"
        }]
      }
    },
    {
      "id" : "Observation.component:eyecolor.value[x]",
      "path" : "Observation.component.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.ee/ValueSet/vris-silmade-varvus"
      }
    },
    {
      "id" : "Observation.component:haircolor",
      "path" : "Observation.component",
      "sliceName" : "haircolor",
      "short" : "Juuste värvus",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Observation.component:haircolor.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "80040005"
        }]
      }
    },
    {
      "id" : "Observation.component:haircolor.value[x]",
      "path" : "Observation.component.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.ee/ValueSet/vris-juuste-varvus"
      }
    },
    {
      "id" : "Observation.component:skincolor",
      "path" : "Observation.component",
      "sliceName" : "skincolor",
      "short" : "Naha värvus",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Observation.component:skincolor.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "364533002"
        }]
      }
    },
    {
      "id" : "Observation.component:skincolor.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.ee/ValueSet/vris-naha-varvus"
      }
    },
    {
      "id" : "Observation.component:bodyStructure",
      "path" : "Observation.component",
      "sliceName" : "bodyStructure",
      "short" : "Kehaehitus",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Observation.component:bodyStructure.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "366209005"
        }]
      }
    },
    {
      "id" : "Observation.component:bodyStructure.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.ee/ValueSet/vris-kehaehitus"
      }
    }]
  }
}

```
