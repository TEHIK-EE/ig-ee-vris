# Patient: EE VRIS Patient - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Patient: EE VRIS Patient**

## Resource Profile: Patient: EE VRIS Patient 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/vris/StructureDefinition/ee-vris-patient-universal | *Version*:0.1.0 |
| Draft as of 2026-08-26 | *Computable Name*:EEVRISPatient |

 
VRIS patient profile. (ee EI KASUTA! VRIS patsiendi profiil. Roll modifierExtension'ina ning link viitab MPI ametlikule patsiendikirjele.) 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ee.fhir.vris|current/StructureDefinition/StructureDefinition-ee-vris-patient-universal.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ee-vris-patient-universal.csv), [Excel](StructureDefinition-ee-vris-patient-universal.xlsx), [Schematron](StructureDefinition-ee-vris-patient-universal.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ee-vris-patient-universal",
  "url" : "https://fhir.ee/vris/StructureDefinition/ee-vris-patient-universal",
  "version" : "0.1.0",
  "name" : "EEVRISPatient",
  "title" : "Patient: EE VRIS Patient",
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
  "description" : "VRIS patient profile. (ee EI KASUTA! VRIS patsiendi profiil. Roll modifierExtension'ina ning link viitab MPI ametlikule patsiendikirjele.)",
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
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "interface",
    "uri" : "http://hl7.org/fhir/interface",
    "name" : "Interface Pattern"
  },
  {
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 V2 Mapping"
  },
  {
    "identity" : "loinc",
    "uri" : "http://loinc.org",
    "name" : "LOINC code for the element"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Patient",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Patient",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Patient",
      "path" : "Patient",
      "constraint" : [{
        "key" : "vris-patient-1",
        "severity" : "error",
        "human" : "At least one link (verified or unknown) must be present",
        "expression" : "link.exists()",
        "source" : "https://fhir.ee/vris/StructureDefinition/ee-vris-patient-universal"
      }]
    },
    {
      "id" : "Patient.extension",
      "path" : "Patient.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "Patient.extension:role",
      "path" : "Patient.extension",
      "sliceName" : "role",
      "short" : "(ee Patsiendi roll VRIS-is: retsipient/doonor/partner/anonüümne doonor/säilitaja. Mõjutab andmete tõlgendamist ja privaatsust!)",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-role"]
      }]
    },
    {
      "id" : "Patient.extension:birthPlace",
      "path" : "Patient.extension",
      "sliceName" : "birthPlace",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/patient-birthPlace"]
      }]
    },
    {
      "id" : "Patient.extension:nationality",
      "path" : "Patient.extension",
      "sliceName" : "nationality",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/patient-nationality"]
      }]
    },
    {
      "id" : "Patient.extension:birthSex",
      "path" : "Patient.extension",
      "sliceName" : "birthSex",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-birth-sex"]
      }]
    },
    {
      "id" : "Patient.identifier",
      "path" : "Patient.identifier",
      "short" : "(ee Kohalik VRIS identifikaator. Ametlikud isikuandmed pärinevad MPI-st läbi link.other viite.)"
    },
    {
      "id" : "Patient.name",
      "path" : "Patient.name",
      "short" : "(ee Kui vajalik lühiviide, muidu ametlik nimi tuleb MPI-st)"
    },
    {
      "id" : "Patient.managingOrganization",
      "path" : "Patient.managingOrganization",
      "short" : "(ee Siia tuleb viide, millise konkreetse asutuse/kliinikuga on patsient seotud. See asutus saab rohkem andmeid näha patsiendi kohta!)"
    },
    {
      "id" : "Patient.link",
      "path" : "Patient.link",
      "slicing" : {
        "discriminator" : [{
          "type" : "profile",
          "path" : "other.resolve()"
        }],
        "description" : "(ee Slicing MPI profiili tüübi järgi)",
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "Patient.link.other",
      "path" : "Patient.link.other",
      "short" : "(ee Kohustuslik viide MPI ametlikule patsiendikirjele. Kõik ametlikud isikuandmed pärinevad sealt.)"
    },
    {
      "id" : "Patient.link.type",
      "path" : "Patient.link.type",
      "short" : "(ee Fikseeritud: #refer, kuna VRIS Patient viitab MPI ametlikule kirjele)",
      "patternCode" : "refer"
    },
    {
      "id" : "Patient.link:verifiedPatient",
      "path" : "Patient.link",
      "sliceName" : "verifiedPatient",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Patient.link:verifiedPatient.other",
      "path" : "Patient.link.other",
      "short" : "(ee Viide MPI verified patsiendile retsipient, partner, säilitaja)",
      "type" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-hierarchy",
          "valueBoolean" : false
        }],
        "code" : "Reference",
        "targetProfile" : ["https://fhir.ee/mpi/StructureDefinition/ee-mpi-patient-verified"]
      }]
    },
    {
      "id" : "Patient.link:unknownPatient",
      "path" : "Patient.link",
      "sliceName" : "unknownPatient",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Patient.link:unknownPatient.other",
      "path" : "Patient.link.other",
      "short" : "(ee Viide MPI unknown patsiendile, ainult ANONÜÜMNE doonor)",
      "type" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-hierarchy",
          "valueBoolean" : false
        }],
        "code" : "Reference",
        "targetProfile" : ["https://fhir.ee/mpi/StructureDefinition/ee-mpi-patient-unknown"]
      }]
    }]
  }
}

```
