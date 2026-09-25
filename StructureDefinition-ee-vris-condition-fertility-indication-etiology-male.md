# Condition: EE VRIS Male Fertility Etiology Indication - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Condition: EE VRIS Male Fertility Etiology Indication**

## Resource Profile: Condition: EE VRIS Male Fertility Etiology Indication 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/vris/StructureDefinition/ee-vris-condition-fertility-indication-etiology-male | *Version*:0.1.0 |
| Draft as of 2026-09-25 | *Computable Name*:EEVRISConditionFertilityIndicationEtiologyMale |

 
Etiological cause of male infertility. (ee MEHE viljatuse etioloogiline põhjus. NB! Tulevikus viidata Diagnoosi-teenusele!) 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ee.fhir.vris|current/StructureDefinition/StructureDefinition-ee-vris-condition-fertility-indication-etiology-male.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ee-vris-condition-fertility-indication-etiology-male.csv), [Excel](StructureDefinition-ee-vris-condition-fertility-indication-etiology-male.xlsx), [Schematron](StructureDefinition-ee-vris-condition-fertility-indication-etiology-male.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ee-vris-condition-fertility-indication-etiology-male",
  "url" : "https://fhir.ee/vris/StructureDefinition/ee-vris-condition-fertility-indication-etiology-male",
  "version" : "0.1.0",
  "name" : "EEVRISConditionFertilityIndicationEtiologyMale",
  "title" : "Condition: EE VRIS Male Fertility Etiology Indication",
  "status" : "draft",
  "date" : "2026-09-25T09:40:45+00:00",
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
  "description" : "Etiological cause of male infertility. (ee MEHE viljatuse etioloogiline põhjus. NB! Tulevikus viidata Diagnoosi-teenusele!)",
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
      "short" : "(ee Nt idiopaatiline viljatus, pretestikulaarne põhjus, krüptorhism, sotsiaalne põhjus jne jne. LOENDit VAJA! VIST ei saa RHK-ga? SNOMED?)",
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
      "short" : "(ee Retsipient (kui on partner), kellel näidustus esineb)",
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
      "short" : "Millal seisund tuvastati",
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
      "short" : "Millal näidustus kirja pandi"
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
