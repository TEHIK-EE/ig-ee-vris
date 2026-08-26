# Coverage: EE VRIS Coverage - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Coverage: EE VRIS Coverage**

## Resource Profile: Coverage: EE VRIS Coverage 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/vris/StructureDefinition/ee-vris-coverage | *Version*:0.1.0 |
| Draft as of 2026-08-26 | *Computable Name*:EEVRISCoverage |

 
Coverage profile for fertility treatment in Estonian VRIS. Identifies the payer of treatment (Health Insurance Fund or self-pay). (ee Viljatusravi rahastamise allikas, Tervisekassa või omaosalus. KAS teeme selle profiiliga või lihtsa extensioni?) 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ee.fhir.vris|current/StructureDefinition/StructureDefinition-ee-vris-coverage.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ee-vris-coverage.csv), [Excel](StructureDefinition-ee-vris-coverage.xlsx), [Schematron](StructureDefinition-ee-vris-coverage.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ee-vris-coverage",
  "url" : "https://fhir.ee/vris/StructureDefinition/ee-vris-coverage",
  "version" : "0.1.0",
  "name" : "EEVRISCoverage",
  "title" : "Coverage: EE VRIS Coverage",
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
  "description" : "Coverage profile for fertility treatment in Estonian VRIS. Identifies the payer of treatment (Health Insurance Fund or self-pay). (ee Viljatusravi rahastamise allikas, Tervisekassa või omaosalus. KAS teeme selle profiiliga või lihtsa extensioni?)",
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
    "identity" : "cdanetv4",
    "uri" : "http://www.cda-adc.ca/en/services/cdanet/",
    "name" : "Canadian Dental Association eclaims standard"
  },
  {
    "identity" : "cpha3pharm",
    "uri" : "http://www.pharmacists.ca/",
    "name" : "Canadian Pharmacy Association eclaims standard"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 V2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Coverage",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Coverage",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Coverage",
      "path" : "Coverage"
    },
    {
      "id" : "Coverage.identifier",
      "path" : "Coverage.identifier",
      "short" : "(ee Kindlustuse identifikaator)"
    },
    {
      "id" : "Coverage.kind",
      "path" : "Coverage.kind",
      "short" : "(ee Kindlustuse liik insurance / self-pay / other)"
    },
    {
      "id" : "Coverage.paymentBy",
      "path" : "Coverage.paymentBy",
      "short" : "(ee Kes maksab, kas patsient ise või kolmas osapool)"
    },
    {
      "id" : "Coverage.paymentBy.party",
      "path" : "Coverage.paymentBy.party",
      "short" : "(ee Maksja viide. Siia Tervisekassa)"
    },
    {
      "id" : "Coverage.type",
      "path" : "Coverage.type",
      "max" : "0"
    },
    {
      "id" : "Coverage.policyHolder",
      "path" : "Coverage.policyHolder",
      "max" : "0"
    },
    {
      "id" : "Coverage.subscriber",
      "path" : "Coverage.subscriber",
      "max" : "0"
    },
    {
      "id" : "Coverage.subscriberId",
      "path" : "Coverage.subscriberId",
      "max" : "0"
    },
    {
      "id" : "Coverage.beneficiary",
      "path" : "Coverage.beneficiary",
      "short" : "(ee Kindlustushüvitise saaja on patsient, kes ravi saab)",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-recipient",
        "https://fhir.ee/mpi/StructureDefinition/ee-mpi-patient-verified"]
      }]
    },
    {
      "id" : "Coverage.dependent",
      "path" : "Coverage.dependent",
      "max" : "0"
    },
    {
      "id" : "Coverage.relationship",
      "path" : "Coverage.relationship",
      "max" : "0"
    },
    {
      "id" : "Coverage.period",
      "path" : "Coverage.period",
      "short" : "(ee Kindlustuse kehtivuse periood)"
    },
    {
      "id" : "Coverage.insurer",
      "path" : "Coverage.insurer",
      "max" : "0"
    },
    {
      "id" : "Coverage.class",
      "path" : "Coverage.class",
      "max" : "0"
    },
    {
      "id" : "Coverage.order",
      "path" : "Coverage.order",
      "max" : "0"
    },
    {
      "id" : "Coverage.network",
      "path" : "Coverage.network",
      "max" : "0"
    },
    {
      "id" : "Coverage.costToBeneficiary",
      "path" : "Coverage.costToBeneficiary",
      "max" : "0"
    },
    {
      "id" : "Coverage.subrogation",
      "path" : "Coverage.subrogation",
      "max" : "0"
    },
    {
      "id" : "Coverage.contract",
      "path" : "Coverage.contract",
      "max" : "0"
    }]
  }
}

```
