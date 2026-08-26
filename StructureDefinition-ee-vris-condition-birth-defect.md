# Condition: EE VRIS Birth Defect - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Condition: EE VRIS Birth Defect**

## Resource Profile: Condition: EE VRIS Birth Defect 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/vris/StructureDefinition/ee-vris-condition-birth-defect | *Version*:0.1.0 |
| Draft as of 2026-08-26 | *Computable Name*:EEVRISConditionBirthDefect |

 
Congenital birth defect of newborn child. (ee Lapse väärarend. NB! Tulevikus kasutada diagnoosi-teenuse viidet!) 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ee.fhir.vris|current/StructureDefinition/StructureDefinition-ee-vris-condition-birth-defect.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ee-vris-condition-birth-defect.csv), [Excel](StructureDefinition-ee-vris-condition-birth-defect.xlsx), [Schematron](StructureDefinition-ee-vris-condition-birth-defect.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ee-vris-condition-birth-defect",
  "url" : "https://fhir.ee/vris/StructureDefinition/ee-vris-condition-birth-defect",
  "version" : "0.1.0",
  "name" : "EEVRISConditionBirthDefect",
  "title" : "Condition: EE VRIS Birth Defect",
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
  "description" : "Congenital birth defect of newborn child. (ee Lapse väärarend. NB! Tulevikus kasutada diagnoosi-teenuse viidet!)",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "EE",
      "display" : "Estonia"
    }]
  }],
  "fhirVersion" : "5.0.0",
  "mapping" : [{
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
  "type" : "Condition",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Condition",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Condition",
      "path" : "Condition"
    },
    {
      "id" : "Condition.clinicalStatus",
      "path" : "Condition.clinicalStatus",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
          "code" : "active"
        }]
      }
    },
    {
      "id" : "Condition.code",
      "path" : "Condition.code",
      "short" : "(ee Väärarendi kood RHK-10 või vabatekst)",
      "min" : 1,
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://fhir.ee/ValueSet/rhk-10"
      }
    },
    {
      "id" : "Condition.code.text",
      "path" : "Condition.code.text",
      "short" : "(ee Väärarendi vabatekstiline kirjeldus, kui RHK ei sobi.)"
    },
    {
      "id" : "Condition.bodySite",
      "path" : "Condition.bodySite",
      "max" : "0"
    },
    {
      "id" : "Condition.subject",
      "path" : "Condition.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-patient-child"]
      }]
    },
    {
      "id" : "Condition.encounter",
      "path" : "Condition.encounter",
      "max" : "0"
    },
    {
      "id" : "Condition.onset[x]",
      "path" : "Condition.onset[x]",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Condition.abatement[x]",
      "path" : "Condition.abatement[x]",
      "max" : "0"
    },
    {
      "id" : "Condition.stage",
      "path" : "Condition.stage",
      "max" : "0"
    },
    {
      "id" : "Condition.evidence",
      "path" : "Condition.evidence",
      "max" : "0"
    }]
  }
}

```
