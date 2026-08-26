# Condition: EE VRIS Female Fertility Treatment Indication - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Condition: EE VRIS Female Fertility Treatment Indication**

## Resource Profile: Condition: EE VRIS Female Fertility Treatment Indication 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/vris/StructureDefinition/ee-vris-condition-fertility-indication-female | *Version*:0.1.0 |
| Draft as of 2026-08-26 | *Computable Name*:EEVRISConditionFertilityIndicationFemale |

 
Clinical indication or diagnosis that is the reason for infertility treatment for Female. (ee NAISE kunstliku viljastamise näidustus, kliiniline diagnoos või seisund, mis on viljatusravi põhjus. NB! Tulevikus viidata Diagnoosi-teenusele!) 

**Usages:**

* Refer to this Profile: [CarePlan: EEVRIS Cycle](StructureDefinition-ee-vris-care-plan.md)
* Examples for this Profile: [Condition/female-fertility-indication-example1](Condition-female-fertility-indication-example1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ee.fhir.vris|current/StructureDefinition/StructureDefinition-ee-vris-condition-fertility-indication-female.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ee-vris-condition-fertility-indication-female.csv), [Excel](StructureDefinition-ee-vris-condition-fertility-indication-female.xlsx), [Schematron](StructureDefinition-ee-vris-condition-fertility-indication-female.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ee-vris-condition-fertility-indication-female",
  "url" : "https://fhir.ee/vris/StructureDefinition/ee-vris-condition-fertility-indication-female",
  "version" : "0.1.0",
  "name" : "EEVRISConditionFertilityIndicationFemale",
  "title" : "Condition: EE VRIS Female Fertility Treatment Indication",
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
  "description" : "Clinical indication or diagnosis that is the reason for infertility treatment for Female. (ee NAISE kunstliku viljastamise näidustus, kliiniline diagnoos või seisund, mis on viljatusravi põhjus. NB! Tulevikus viidata Diagnoosi-teenusele!)",
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
      "short" : "(ee Näidustuse identifikaator)"
    },
    {
      "id" : "Condition.clinicalStatus",
      "path" : "Condition.clinicalStatus",
      "short" : "Kliiniline staatus (nt active, resolved)"
    },
    {
      "id" : "Condition.verificationStatus",
      "path" : "Condition.verificationStatus",
      "short" : "Kinnituse staatus (nt confirmed, provisional)"
    },
    {
      "id" : "Condition.severity",
      "path" : "Condition.severity",
      "max" : "0"
    },
    {
      "id" : "Condition.code",
      "path" : "Condition.code",
      "short" : "(ee Näidustuse kood RHK-10 järgi. NAISTE loend VAJA!)",
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
      "short" : "(ee Retsipient, EEVRISDonor kui on suguraku annetaja?)",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-recipient",
        "https://fhir.ee/mpi/StructureDefinition/ee-mpi-patient-verified",
        "https://fhir.ee/vris/StructureDefinition/ee-vris-donor"]
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
      "short" : "(ee Millal seisund tuvastati)",
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
      "id" : "Condition.recordedDate",
      "path" : "Condition.recordedDate",
      "short" : "(ee Millal näidustus kirja pandi)"
    },
    {
      "id" : "Condition.participant",
      "path" : "Condition.participant",
      "short" : "(ee Kes näidustuse kirjastas. NB! SPDst)"
    },
    {
      "id" : "Condition.participant.function",
      "path" : "Condition.participant.function",
      "short" : "(ee Osaleja roll. KAS seda on vaja, sest roll tuleb SPD-st...?)"
    },
    {
      "id" : "Condition.participant.actor",
      "path" : "Condition.participant.actor",
      "short" : "(ee Osaleja referents.)"
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
      "short" : "(ee Lisainfo / täpsustus näidustuse kohta)"
    }]
  }
}

```
