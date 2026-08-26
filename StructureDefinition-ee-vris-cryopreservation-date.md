# Cryopreservation date - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Cryopreservation date**

## Extension: Cryopreservation date 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/vris/StructureDefinition/ee-vris-cryopreservation-date | *Version*:0.1.0 |
| Draft as of 2026-08-26 | *Computable Name*:ExtensionEEVRISCryopreservationDate |

Extension for cryopreservation date. (ee Bioloogilise materjali külmutamise (krüopreservatsiooni) kuupäev.)

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [BiologicallyDerivedProduct: EE VRIS Embryo](StructureDefinition-ee-vris-embryo.md), [BiologicallyDerivedProduct: EE VRIS Oocyte](StructureDefinition-ee-vris-oocyte.md), [BiologicallyDerivedProduct: EE VRIS Reproductive Tissue](StructureDefinition-ee-vris-reproductive-tissue.md) and [BiologicallyDerivedProduct: EE VRIS Sperm](StructureDefinition-ee-vris-sperm.md)
* Examples for this Extension: [BiologicallyDerivedProduct/donor-embryo1](BiologicallyDerivedProduct-donor-embryo1.md), [BiologicallyDerivedProduct/oocyte1](BiologicallyDerivedProduct-oocyte1.md) and [BiologicallyDerivedProduct/sperm1](BiologicallyDerivedProduct-sperm1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ee.fhir.vris|current/StructureDefinition/StructureDefinition-ee-vris-cryopreservation-date.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ee-vris-cryopreservation-date.csv), [Excel](StructureDefinition-ee-vris-cryopreservation-date.xlsx), [Schematron](StructureDefinition-ee-vris-cryopreservation-date.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ee-vris-cryopreservation-date",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-bind"
  }],
  "url" : "https://fhir.ee/vris/StructureDefinition/ee-vris-cryopreservation-date",
  "version" : "0.1.0",
  "name" : "ExtensionEEVRISCryopreservationDate",
  "title" : "Cryopreservation date",
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
  "description" : "Extension for cryopreservation date. (ee Bioloogilise materjali külmutamise (krüopreservatsiooni) kuupäev.)",
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
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Date of cryopreservation. (ee Külmutamise kuupäev.)",
      "definition" : "Bioloogilise materjali külmutamise kuupäev"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://fhir.ee/vris/StructureDefinition/ee-vris-cryopreservation-date"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "dateTime"
      }]
    }]
  }
}

```
