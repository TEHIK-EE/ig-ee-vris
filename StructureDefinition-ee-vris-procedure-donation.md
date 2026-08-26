# Procedure: EE VRIS Donation - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Procedure: EE VRIS Donation**

## Resource Profile: Procedure: EE VRIS Donation 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/vris/StructureDefinition/ee-vris-procedure-donation | *Version*:0.1.0 |
| Draft as of 2026-08-26 | *Computable Name*:EEVRISProcedureDonation |

 
Profile for donation of biological material (sperm, oocyte, reproductive tissue). (ee Bioloogilise materjali annetamise protseduur. KAS seda on vaja?) 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ee.fhir.vris|current/StructureDefinition/StructureDefinition-ee-vris-procedure-donation.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ee-vris-procedure-donation.csv), [Excel](StructureDefinition-ee-vris-procedure-donation.xlsx), [Schematron](StructureDefinition-ee-vris-procedure-donation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ee-vris-procedure-donation",
  "url" : "https://fhir.ee/vris/StructureDefinition/ee-vris-procedure-donation",
  "version" : "0.1.0",
  "name" : "EEVRISProcedureDonation",
  "title" : "Procedure: EE VRIS Donation",
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
  "description" : "Profile for donation of biological material (sperm, oocyte, reproductive tissue). (ee Bioloogilise materjali annetamise protseduur. KAS seda on vaja?)",
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
  "type" : "Procedure",
  "baseDefinition" : "https://fhir.ee/vris/StructureDefinition/ee-vris-procedure",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Procedure",
      "path" : "Procedure"
    },
    {
      "id" : "Procedure.category",
      "path" : "Procedure.category",
      "short" : "(ee Fix kood: hävitamine. NB! Loendit POLE veel! Kunstlik kood hetkel!)",
      "min" : 1,
      "max" : "1",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhir.ee/ValueSet/vris-protseduuri-kategooria",
          "code" : "donation"
        }]
      }
    },
    {
      "id" : "Procedure.subject",
      "path" : "Procedure.subject",
      "short" : "(ee Kes annetas)",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-donor",
        "https://fhir.ee/vris/StructureDefinition/ee-vris-recipient",
        "https://fhir.ee/vris/StructureDefinition/ee-vris-donor-anonymous"]
      }]
    },
    {
      "id" : "Procedure.occurrence[x]",
      "path" : "Procedure.occurrence[x]",
      "short" : "(ee Annetamise kuupäev, kohustuslik)",
      "min" : 1,
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Procedure.reason",
      "path" : "Procedure.reason",
      "short" : "(ee Annetamise põhjus, kohustuslik. LOEND puudu!)",
      "min" : 1
    },
    {
      "id" : "Procedure.used",
      "path" : "Procedure.used",
      "short" : "(ee Viide annetatud bioloogilisele materjalile)",
      "min" : 1,
      "type" : [{
        "code" : "CodeableReference",
        "targetProfile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-sperm",
        "https://fhir.ee/vris/StructureDefinition/ee-vris-embryo",
        "https://fhir.ee/vris/StructureDefinition/ee-vris-oocyte"]
      }]
    }]
  }
}

```
