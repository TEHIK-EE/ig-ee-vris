# Procedure: EE VRIS Allocation - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Procedure: EE VRIS Allocation**

## Resource Profile: Procedure: EE VRIS Allocation 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/vris/StructureDefinition/ee-vris-procedure-allocation | *Version*:0.1.0 |
| Draft as of 2026-10-01 | *Computable Name*:EEVRISProcedureAllocation |

 
Profile for allocation of biological material (sperm, oocyte, embryo reproductive tissue). (ee Bioloogilise materjali broneerimise protseduur. Kasutada juhul kui annetatud bioloogiline materjal on kindlale retsipiendidle broneeritud.) 

**Usages:**

* Refer to this Profile: [CarePlan: EEVRIS Cycle](StructureDefinition-ee-vris-care-plan.md) and [Procedure: EE VRIS Allocation](StructureDefinition-ee-vris-procedure-allocation.md)
* Examples for this Profile: [Procedure/allocation-oocyte1-1](Procedure-allocation-oocyte1-1.md) and [Procedure/allocation-sperm1-3](Procedure-allocation-sperm1-3.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ee.fhir.vris|current/StructureDefinition/StructureDefinition-ee-vris-procedure-allocation.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ee-vris-procedure-allocation.csv), [Excel](StructureDefinition-ee-vris-procedure-allocation.xlsx), [Schematron](StructureDefinition-ee-vris-procedure-allocation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ee-vris-procedure-allocation",
  "url" : "https://fhir.ee/vris/StructureDefinition/ee-vris-procedure-allocation",
  "version" : "0.1.0",
  "name" : "EEVRISProcedureAllocation",
  "title" : "Procedure: EE VRIS Allocation",
  "status" : "draft",
  "date" : "2026-10-01T13:44:04+00:00",
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
  "description" : "Profile for allocation of biological material (sperm, oocyte, embryo reproductive tissue). (ee Bioloogilise materjali broneerimise protseduur. Kasutada juhul kui annetatud bioloogiline materjal on kindlale retsipiendidle broneeritud.)",
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
      "id" : "Procedure.status",
      "path" : "Procedure.status",
      "short" : "(ee SIIN on KOHUSTUSLIK staatuste loend!)"
    },
    {
      "id" : "Procedure.code",
      "path" : "Procedure.code",
      "short" : "(ee Fix kood: hävitamine. NB! Loendit POLE veel! Kunstlik kood hetkel!)",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.ee/ValueSet/vris-protseduuri-kood"
      }
    },
    {
      "id" : "Procedure.subject",
      "path" : "Procedure.subject",
      "short" : "(ee Kes annetas)",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-donor",
        "https://fhir.ee/vris/StructureDefinition/ee-vris-recipient"]
      }]
    },
    {
      "id" : "Procedure.occurrence[x]",
      "path" : "Procedure.occurrence[x]",
      "short" : "(ee Broneerimise aeg)",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Procedure.reason",
      "path" : "Procedure.reason",
      "max" : "0"
    },
    {
      "id" : "Procedure.outcome",
      "path" : "Procedure.outcome",
      "max" : "0"
    },
    {
      "id" : "Procedure.used",
      "path" : "Procedure.used",
      "short" : "(ee Viide broneeritud bioloogilisele materjalile)",
      "min" : 1,
      "type" : [{
        "code" : "CodeableReference",
        "targetProfile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-sperm",
        "https://fhir.ee/vris/StructureDefinition/ee-vris-embryo",
        "https://fhir.ee/vris/StructureDefinition/ee-vris-oocyte",
        "https://fhir.ee/vris/StructureDefinition/ee-vris-reproductive-tissue"]
      }]
    },
    {
      "id" : "Procedure.supportingInfo",
      "path" : "Procedure.supportingInfo",
      "short" : "(ee Viide teisele protseduurile, näiteks broneerimisele. Kui used=supportingInfo siis on broneeritud materjal kasutatud. Broneering võib olla |Tsüklile broneeritud|, |Retsipiendile, tsüklit veel pole,|Väljasaatmine teise asutusse|)",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-procedure-allocation",
        "https://fhir.ee/vris/StructureDefinition/ee-vris-procedure-cryopreservation"]
      }]
    }]
  }
}

```
