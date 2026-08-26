# Procedure: EE VRIS Cryopreservation - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Procedure: EE VRIS Cryopreservation**

## Resource Profile: Procedure: EE VRIS Cryopreservation 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/vris/StructureDefinition/ee-vris-procedure-cryopreservation | *Version*:0.1.0 |
| Draft as of 2026-08-26 | *Computable Name*:EEVRISProcedureCryopreservation |

 
Profile for cryopreservation of biological material (sperm, oocyte, embryo). (ee Bioloogilise materjali külmutamise protseduur.) 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ee.fhir.vris|current/StructureDefinition/StructureDefinition-ee-vris-procedure-cryopreservation.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ee-vris-procedure-cryopreservation.csv), [Excel](StructureDefinition-ee-vris-procedure-cryopreservation.xlsx), [Schematron](StructureDefinition-ee-vris-procedure-cryopreservation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ee-vris-procedure-cryopreservation",
  "url" : "https://fhir.ee/vris/StructureDefinition/ee-vris-procedure-cryopreservation",
  "version" : "0.1.0",
  "name" : "EEVRISProcedureCryopreservation",
  "title" : "Procedure: EE VRIS Cryopreservation",
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
  "description" : "Profile for cryopreservation of biological material (sperm, oocyte, embryo). (ee Bioloogilise materjali külmutamise protseduur.)",
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
      "short" : "(ee Fix kood: krüosäilitamine. NB! LOEND puudu!)",
      "min" : 1,
      "max" : "1",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhir.ee/ValueSet/vris-protseduuri-kategooria",
          "code" : "cryopreservation"
        }]
      }
    },
    {
      "id" : "Procedure.code",
      "path" : "Procedure.code",
      "short" : "(ee Krüosäilitamise täpsem kood (nt munaraku külmutamine jne). NB! LOEND puudu!)",
      "min" : 1,
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://fhir.ee/ValueSet/vris-kylmutamise-kood"
      }
    },
    {
      "id" : "Procedure.subject",
      "path" : "Procedure.subject",
      "short" : "(ee Kelle materjali külmutati.)",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-donor",
        "https://fhir.ee/vris/StructureDefinition/ee-vris-recipient",
        "https://fhir.ee/vris/StructureDefinition/ee-vris-donor-anonymous"]
      }]
    },
    {
      "id" : "Procedure.focus",
      "path" : "Procedure.focus",
      "short" : "(ee Kui materjal kuulub teisele isikule, siia tema viide)"
    },
    {
      "id" : "Procedure.occurrence[x]",
      "path" : "Procedure.occurrence[x]",
      "short" : "(ee Külmutamise kuupäev ja kellaaeg, kohustuslik)",
      "min" : 1,
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Procedure.performer",
      "path" : "Procedure.performer",
      "short" : "(ee Embrüoloog või kliiniku spetsialist)",
      "min" : 1
    },
    {
      "id" : "Procedure.reason",
      "path" : "Procedure.reason",
      "short" : "(ee Külmutamise põhjus, doonatsioon, iseendale säilitamine, mittesiirdamiseks vms (NB! LOEND puudu!))",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://fhir.ee/ValueSet/vris-kylmutamise-pohjus"
      }
    },
    {
      "id" : "Procedure.outcome",
      "path" : "Procedure.outcome",
      "short" : "(ee Külmutamise tulemus, edukas / ebaõnnestunud / osaliselt edukas (NB! LOEND puudu!))",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://fhir.ee/ValueSet/vris-kylmutamise-tulemus"
      }
    },
    {
      "id" : "Procedure.note",
      "path" : "Procedure.note",
      "short" : "(ee Lisainfo külmutamise kohta)"
    },
    {
      "id" : "Procedure.used",
      "path" : "Procedure.used",
      "short" : "(ee Viide külmutatud bioloogilisele materjalile: sperma / munarakk / embrüo)",
      "min" : 1,
      "type" : [{
        "code" : "CodeableReference",
        "targetProfile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-sperm",
        "https://fhir.ee/vris/StructureDefinition/ee-vris-embryo",
        "https://fhir.ee/vris/StructureDefinition/ee-vris-oocyte",
        "https://fhir.ee/vris/StructureDefinition/ee-vris-reproductive-tissue"]
      }]
    }]
  }
}

```
