# Condition: EE VRIS Fertility Treatment Complication - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Condition: EE VRIS Fertility Treatment Complication**

## Resource Profile: Condition: EE VRIS Fertility Treatment Complication 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/vris/StructureDefinition/ee-vris-condition-treatment-complication | *Version*:0.1.0 |
| Draft as of 2026-08-26 | *Computable Name*:EEVRISConditionTreatmentComplication |

 
Complication related to fertility treatment. (ee Viljatusraviga seotud (haiglaravi vajavad?) tüsistused. NB! Tulevikus kasutada diagnoosi-teenuse viidet!) 

**Usages:**

* Refer to this Profile: [CarePlan: EEVRIS Cycle](StructureDefinition-ee-vris-care-plan.md) and [Procedure: EE VRIS Embryo Transfer](StructureDefinition-ee-vris-procedure-embryo-transfer.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ee.fhir.vris|current/StructureDefinition/StructureDefinition-ee-vris-condition-treatment-complication.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ee-vris-condition-treatment-complication.csv), [Excel](StructureDefinition-ee-vris-condition-treatment-complication.xlsx), [Schematron](StructureDefinition-ee-vris-condition-treatment-complication.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ee-vris-condition-treatment-complication",
  "url" : "https://fhir.ee/vris/StructureDefinition/ee-vris-condition-treatment-complication",
  "version" : "0.1.0",
  "name" : "EEVRISConditionTreatmentComplication",
  "title" : "Condition: EE VRIS Fertility Treatment Complication",
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
  "description" : "Complication related to fertility treatment. (ee Viljatusraviga seotud (haiglaravi vajavad?) tüsistused. NB! Tulevikus kasutada diagnoosi-teenuse viidet!)",
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
      "id" : "Condition.identifier",
      "path" : "Condition.identifier",
      "short" : "(ee Tüsistuse identifikaator)"
    },
    {
      "id" : "Condition.clinicalStatus",
      "path" : "Condition.clinicalStatus",
      "short" : "(ee Kliiniline staatus: active / resolved / inactive vms)"
    },
    {
      "id" : "Condition.verificationStatus",
      "path" : "Condition.verificationStatus",
      "short" : "(ee Kinnituse staatus: confirmed / provisional)"
    },
    {
      "id" : "Condition.code",
      "path" : "Condition.code",
      "short" : "(ee Tüsistuse tüüp OHSS, infektsioon, verejooks vms. NB! LOEND VAJALIK!)",
      "min" : 1
    },
    {
      "id" : "Condition.bodySite",
      "path" : "Condition.bodySite",
      "max" : "0"
    },
    {
      "id" : "Condition.subject",
      "path" : "Condition.subject",
      "short" : "(ee Patsient, kellel tüsistus esineb)",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-recipient",
        "https://fhir.ee/vris/StructureDefinition/ee-vris-donor",
        "https://fhir.ee/vris/StructureDefinition/ee-vris-donor-anonymous"]
      }]
    },
    {
      "id" : "Condition.encounter",
      "path" : "Condition.encounter",
      "short" : "(ee Viide haiglaravi visiidile, kui kohaldatav)"
    },
    {
      "id" : "Condition.onset[x]",
      "path" : "Condition.onset[x]",
      "short" : "(ee Millal tüsistus tekkis)",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Condition.abatement[x]",
      "path" : "Condition.abatement[x]",
      "short" : "(ee Millal tüsistus taandus)",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Condition.recordedDate",
      "path" : "Condition.recordedDate",
      "short" : "(ee Millal tüsistus kirja pandi)"
    },
    {
      "id" : "Condition.participant",
      "path" : "Condition.participant",
      "short" : "(ee Kes tüsistuse kirjastas SPD-st)"
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
    },
    {
      "id" : "Condition.note",
      "path" : "Condition.note",
      "short" : "(ee Lisainfo tüsistuse kohta)"
    }]
  }
}

```
