# Supplied package reference - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Supplied package reference**

## Extension: Supplied package reference 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/vris/StructureDefinition/ee-vris-supplied-package | *Version*:0.1.0 |
| Draft as of 2026-08-26 | *Computable Name*:ExtensionEEVRISSuppliedPackage |

Extension for referencing supplied package. (ee Viide väljastatud/vastuvõetud pakendile.)

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [SupplyDelivery: EE VRIS Biological material movement](StructureDefinition-ee-vris-supply-delivery.md)
* Examples for this Extension: [SupplyDelivery/supplyDeliverySperm1](SupplyDelivery-supplyDeliverySperm1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ee.fhir.vris|current/StructureDefinition/StructureDefinition-ee-vris-supplied-package.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ee-vris-supplied-package.csv), [Excel](StructureDefinition-ee-vris-supplied-package.xlsx), [Schematron](StructureDefinition-ee-vris-supplied-package.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ee-vris-supplied-package",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-bind"
  }],
  "url" : "https://fhir.ee/vris/StructureDefinition/ee-vris-supplied-package",
  "version" : "0.1.0",
  "name" : "ExtensionEEVRISSuppliedPackage",
  "title" : "Supplied package reference",
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
  "description" : "Extension for referencing supplied package. (ee Viide väljastatud/vastuvõetud pakendile.)",
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
    "expression" : "SupplyDelivery"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Reference package (Pakendi viide)",
      "definition" : "Pakendi viide",
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
      "fixedUri" : "https://fhir.ee/vris/StructureDefinition/ee-vris-supplied-package"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-packaged-product-definition"]
      }]
    }]
  }
}

```
