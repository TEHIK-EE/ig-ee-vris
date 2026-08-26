# Condition: EE VRIS Comorbidity - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Condition: EE VRIS Comorbidity**

## Resource Profile: Condition: EE VRIS Comorbidity 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/vris/StructureDefinition/ee-vris-condition-comorbidity | *Version*:0.1.0 |
| Draft as of 2026-08-26 | *Computable Name*:EEVRISConditionComorbidity |

 
Condition profile for comorbidities of a donor or recipient in the Estonian VRIS fertility system. (ee Kaasuv haigus. NB! Tulevikus viidata Diagnoosi-teenusele!) 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ee.fhir.vris|current/StructureDefinition/StructureDefinition-ee-vris-condition-comorbidity.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ee-vris-condition-comorbidity.csv), [Excel](StructureDefinition-ee-vris-condition-comorbidity.xlsx), [Schematron](StructureDefinition-ee-vris-condition-comorbidity.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ee-vris-condition-comorbidity",
  "url" : "https://fhir.ee/vris/StructureDefinition/ee-vris-condition-comorbidity",
  "version" : "0.1.0",
  "name" : "EEVRISConditionComorbidity",
  "title" : "Condition: EE VRIS Comorbidity",
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
  "description" : "Condition profile for comorbidities of a donor or recipient in the Estonian VRIS fertility system. (ee Kaasuv haigus. NB! Tulevikus viidata Diagnoosi-teenusele!)",
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
      "short" : "Kaasuvate haiguste identifikaator"
    },
    {
      "id" : "Condition.clinicalStatus",
      "path" : "Condition.clinicalStatus",
      "short" : "Kliiniline staatus (nt active, resolved, inactive)"
    },
    {
      "id" : "Condition.verificationStatus",
      "path" : "Condition.verificationStatus",
      "short" : "Kinnituse staatus (nt confirmed, provisional)"
    },
    {
      "id" : "Condition.category",
      "path" : "Condition.category",
      "short" : "Haiguse kategooria"
    },
    {
      "id" : "Condition.severity",
      "path" : "Condition.severity",
      "short" : "Haiguse raskusaste"
    },
    {
      "id" : "Condition.code",
      "path" : "Condition.code",
      "short" : "(ee Kaasuvate haiguse kood RHK-10 järgi. NB! IGA HAIGUSE JAOKS RESURSS KORDUB, ühe alla ei saa mitut panna!!)",
      "min" : 1,
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://fhir.ee/ValueSet/rhk-10"
      }
    },
    {
      "id" : "Condition.bodySite",
      "path" : "Condition.bodySite",
      "max" : "0"
    },
    {
      "id" : "Condition.subject",
      "path" : "Condition.subject",
      "short" : "(ee Doonor või retsipient, partner või annetaja kellel kaasuv haigus esineb)",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-donor",
        "https://fhir.ee/vris/StructureDefinition/ee-vris-recipient",
        "https://fhir.ee/mpi/StructureDefinition/ee-mpi-patient-verified"]
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
      "short" : "(ee Millal haigus tuvastati)",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Condition.abatement[x]",
      "path" : "Condition.abatement[x]",
      "short" : "(ee Millal haigus lõppes / taandus)",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Condition.recordedDate",
      "path" : "Condition.recordedDate",
      "short" : "(ee Millal haigus kirja pandi)"
    },
    {
      "id" : "Condition.participant",
      "path" : "Condition.participant",
      "short" : "(ee Kes haiguse kirja pani)"
    },
    {
      "id" : "Condition.participant.actor",
      "path" : "Condition.participant.actor",
      "short" : "(ee Osaleja viide. NB! SPD viide)"
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
      "short" : "(ee Lisainfo / täpsustus kaasuvate haiguste kohta)"
    }]
  }
}

```
