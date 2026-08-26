# MedicationAdministration: EE VRIS Medication administred during procedure(s) - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MedicationAdministration: EE VRIS Medication administred during procedure(s)**

## Resource Profile: MedicationAdministration: EE VRIS Medication administred during procedure(s) 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/vris/StructureDefinition/ee-vris-medication-administration | *Version*:0.1.0 |
| Draft as of 2026-08-26 | *Computable Name*:EEVRISMedicationAdministration |

 
Profile for medication administration during infertility procedure(s). (ee Viljatusravi ajal manustatud ravim(id).) 

**Usages:**

* Refer to this Profile: [CarePlan: EEVRIS Cycle](StructureDefinition-ee-vris-care-plan.md)
* Examples for this Profile: [MedicationAdministration/medicationAdministrationFollitropin1](MedicationAdministration-medicationAdministrationFollitropin1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ee.fhir.vris|current/StructureDefinition/StructureDefinition-ee-vris-medication-administration.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ee-vris-medication-administration.csv), [Excel](StructureDefinition-ee-vris-medication-administration.xlsx), [Schematron](StructureDefinition-ee-vris-medication-administration.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ee-vris-medication-administration",
  "url" : "https://fhir.ee/vris/StructureDefinition/ee-vris-medication-administration",
  "version" : "0.1.0",
  "name" : "EEVRISMedicationAdministration",
  "title" : "MedicationAdministration: EE VRIS Medication administred during procedure(s)",
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
  "description" : "Profile for medication administration during infertility procedure(s). (ee Viljatusravi ajal manustatud ravim(id).) ",
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
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 V2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "MedicationAdministration",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/MedicationAdministration",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "MedicationAdministration",
      "path" : "MedicationAdministration"
    },
    {
      "id" : "MedicationAdministration.basedOn",
      "path" : "MedicationAdministration.basedOn",
      "short" : "(ee Siia tuleb viide ravitsüklile, millest tuleneb ravimi(te) manustamine.)",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-care-plan"]
      }]
    },
    {
      "id" : "MedicationAdministration.partOf",
      "path" : "MedicationAdministration.partOf",
      "short" : "(ee Juhul kui ravimi manustamine on mingi protseduuri osa, siis siia viide sellele protseduurile.)",
      "type" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-hierarchy",
          "valueBoolean" : true
        }],
        "code" : "Reference",
        "targetProfile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-procedure"]
      }]
    },
    {
      "id" : "MedicationAdministration.medication",
      "path" : "MedicationAdministration.medication",
      "short" : "(ee KAS paneme viite loendile ja ATC? seda pole termserveris... tuleb MedIn liidestus teha? Või uus LOEND teatud kindlatest ravimitest... SNOMED?)"
    },
    {
      "id" : "MedicationAdministration.subject",
      "path" : "MedicationAdministration.subject",
      "short" : "(ee Siia PATSIENDi viide, kes sai ravimit.)"
    },
    {
      "id" : "MedicationAdministration.occurence[x]",
      "path" : "MedicationAdministration.occurence[x]",
      "short" : "(ee Aeg, millal ravim manustati.)"
    },
    {
      "id" : "MedicationAdministration.isSubPotent",
      "path" : "MedicationAdministration.isSubPotent",
      "max" : "0"
    },
    {
      "id" : "MedicationAdministration.subPotentReason",
      "path" : "MedicationAdministration.subPotentReason",
      "max" : "0"
    }]
  }
}

```
