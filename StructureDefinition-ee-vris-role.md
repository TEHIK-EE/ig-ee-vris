# Cell origin role - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Cell origin role**

## Extension: Cell origin role 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/vris/StructureDefinition/ee-vris-role | *Version*:0.1.0 |
| Draft as of 2026-08-26 | *Computable Name*:ExtensionEEVRISRole |

Extension for the role of donor/recipient of biological material. (ee Sperma/munaraku doonori/retsipiendi roll (viljatusravi saav naine, mittepartnerannetaja, partner, anonüümne, säilitaja jne).)

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Patient: EE VRIS Anonymous Patient](StructureDefinition-ee-vris-donor-anonymous.md), [Patient: EE VRIS Donor](StructureDefinition-ee-vris-donor.md) and [Patient: EE VRIS Patient](StructureDefinition-ee-vris-patient-universal.md)
* Examples for this Extension: [Patient/patientDonorMale](Patient-patientDonorMale.md) and [Patient/patientDonorunknown1](Patient-patientDonorunknown1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ee.fhir.vris|current/StructureDefinition/StructureDefinition-ee-vris-role.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ee-vris-role.csv), [Excel](StructureDefinition-ee-vris-role.xlsx), [Schematron](StructureDefinition-ee-vris-role.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ee-vris-role",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-bind"
  }],
  "url" : "https://fhir.ee/vris/StructureDefinition/ee-vris-role",
  "version" : "0.1.0",
  "name" : "ExtensionEEVRISRole",
  "title" : "Cell origin role",
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
  "description" : "Extension for the role of donor/recipient of biological material. (ee Sperma/munaraku doonori/retsipiendi roll (viljatusravi saav naine, mittepartnerannetaja, partner, anonüümne, säilitaja jne).)",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "EE",
      "display" : "Estonia"
    }]
  }],
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "BiologicallyDerivedProduct"
  },
  {
    "type" : "element",
    "expression" : "Patient"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Role of donor/recipient. (ee Doonori/retsipiendi roll LOENDIST.)",
      "definition" : "(ee Doonori/retsipiendi roll).",
      "max" : "1"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://fhir.ee/vris/StructureDefinition/ee-vris-role"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }]
    }]
  }
}

```
