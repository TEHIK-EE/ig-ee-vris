# Condition: EE VRIS Donor Genetic Finding - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Condition: EE VRIS Donor Genetic Finding**

## Resource Profile: Condition: EE VRIS Donor Genetic Finding 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/vris/StructureDefinition/ee-vris-condition-donor-genetic-finding | *Version*:0.1.0 |
| Active as of 2026-08-26 | *Computable Name*:EEVRISConditionDonorGeneticFinding |

 
Genetic finding of cell donor that appears later in life. (ee Tagantjärgi ilmnenud doonori geneetiline haigus või kandlus. NB! Tulevikus viidata Diagnoosi-teenusele!) 

**Usages:**

* Examples for this Profile: [Condition/donor-genetic-finding-suspected1](Condition-donor-genetic-finding-suspected1.md) and [Condition/donor-genetic-finding-verified1](Condition-donor-genetic-finding-verified1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ee.fhir.vris|current/StructureDefinition/StructureDefinition-ee-vris-condition-donor-genetic-finding.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ee-vris-condition-donor-genetic-finding.csv), [Excel](StructureDefinition-ee-vris-condition-donor-genetic-finding.xlsx), [Schematron](StructureDefinition-ee-vris-condition-donor-genetic-finding.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ee-vris-condition-donor-genetic-finding",
  "url" : "https://fhir.ee/vris/StructureDefinition/ee-vris-condition-donor-genetic-finding",
  "version" : "0.1.0",
  "name" : "EEVRISConditionDonorGeneticFinding",
  "title" : "Condition: EE VRIS Donor Genetic Finding",
  "status" : "active",
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
  "description" : "Genetic finding of cell donor that appears later in life. (ee Tagantjärgi ilmnenud doonori geneetiline haigus või kandlus. NB! Tulevikus viidata Diagnoosi-teenusele!)",
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
      "path" : "Condition",
      "short" : "Doonori geneetiline leid",
      "definition" : "Tagantjärgi ilmnenud doonori geneetiline haigus või geenivariandi kandlus"
    },
    {
      "id" : "Condition.clinicalStatus",
      "path" : "Condition.clinicalStatus",
      "binding" : {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName",
          "valueString" : "ConditionClinicalStatus"
        }],
        "strength" : "required",
        "description" : "LOENDist fix kood!",
        "valueSet" : "http://hl7.org/fhir/ValueSet/condition-clinical|5.0.0"
      }
    },
    {
      "id" : "Condition.verificationStatus",
      "path" : "Condition.verificationStatus",
      "short" : "|provisional| = kahtlus; |confirmed| = DNA-testiga kinnitatud",
      "min" : 1,
      "binding" : {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName",
          "valueString" : "ConditionVerificationStatus"
        }],
        "strength" : "required",
        "description" : "LOENDist fix kood!",
        "valueSet" : "http://hl7.org/fhir/ValueSet/condition-ver-status|5.0.0"
      }
    },
    {
      "id" : "Condition.category",
      "path" : "Condition.category",
      "short" : "Geneetilise leiu tüüp",
      "definition" : "Geneetilise leiu klassifikatsioon: |päriliku haiguse kahtlus|, |autosoom-retsessiivse kandlus|, |X-liiteline kandlus| või |mitokondriaalne kandlus|",
      "max" : "1"
    },
    {
      "id" : "Condition.category.coding",
      "path" : "Condition.category.coding",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.ee/ValueSet/vris-geneetilise-leiu-tyyp"
      }
    },
    {
      "id" : "Condition.code",
      "path" : "Condition.code",
      "short" : "Molekulaarne diagnoos. Kas code alla või note alla?!?!?! KAS on lootust, et kunagi tuleks siia loend? Loend, mille alusel saaks valida kodeeritud diagnoosi?",
      "min" : 1
    },
    {
      "id" : "Condition.code.text",
      "path" : "Condition.code.text",
      "short" : "(ee Diagnoos/haigus vabatekstina. Siin EI ole loendit, sest paljud geneetilised haigused pole veel RHK koodiga. TULEVIKUS Orpha-koodid?)",
      "definition" : "Molekulaarne diagnoos vabatekstina. Nt 'CFTR geeni c.1521_1523delCTT (F508del) variant — tsüstilise fibroosi kandlus'",
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
      "short" : "Doonor",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-donor"]
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
      "max" : "0"
    },
    {
      "id" : "Condition.abatement[x]",
      "path" : "Condition.abatement[x]",
      "max" : "0"
    },
    {
      "id" : "Condition.recordedDate",
      "path" : "Condition.recordedDate",
      "max" : "0"
    },
    {
      "id" : "Condition.participant.function",
      "path" : "Condition.participant.function",
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
    },
    {
      "id" : "Condition.note",
      "path" : "Condition.note",
      "short" : "Täiendav märkus?. Molekulaarne diagnoos. Kas code alla või note alla?!?!?!",
      "definition" : "Lisainformatsioon geneetilise leiu kohta??"
    }]
  }
}

```
