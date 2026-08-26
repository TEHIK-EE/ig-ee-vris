# BiologicallyDerivedProduct: EE VRIS Embryo - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BiologicallyDerivedProduct: EE VRIS Embryo**

## Resource Profile: BiologicallyDerivedProduct: EE VRIS Embryo 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/vris/StructureDefinition/ee-vris-embryo | *Version*:0.1.0 |
| Active as of 2026-08-26 | *Computable Name*:EEVRISEmbryo |

 
Profile for embryo. (ee Embrüo. NB! IGA embrüo on omaette ressurss!) 

**Usages:**

* Refer to this Profile: [Observation: EE VRIS Embryo Lifecycle Counts](StructureDefinition-ee-vris-observation-embryo-lifecycle-counts.md), [PackagedProductDefinition: EE VRIS Package](StructureDefinition-ee-vris-packaged-product-definition.md), [Procedure: EE VRIS Cryopreservation](StructureDefinition-ee-vris-procedure-cryopreservation.md), [Procedure: EE VRIS Destruction](StructureDefinition-ee-vris-procedure-destruction.md)... Show 4 more, [Procedure: EE VRIS Donation](StructureDefinition-ee-vris-procedure-donation.md), [Procedure: EE VRIS Embryo Transfer](StructureDefinition-ee-vris-procedure-embryo-transfer.md), [Procedure: EE VRIS Preimplantation Genetic Testing](StructureDefinition-ee-vris-procedure-pgt.md) and [SupplyDelivery: EE VRIS Biological material movement](StructureDefinition-ee-vris-supply-delivery.md)
* Examples for this Profile: [BiologicallyDerivedProduct/donor-embryo1](BiologicallyDerivedProduct-donor-embryo1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ee.fhir.vris|current/StructureDefinition/StructureDefinition-ee-vris-embryo.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ee-vris-embryo.csv), [Excel](StructureDefinition-ee-vris-embryo.xlsx), [Schematron](StructureDefinition-ee-vris-embryo.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ee-vris-embryo",
  "url" : "https://fhir.ee/vris/StructureDefinition/ee-vris-embryo",
  "version" : "0.1.0",
  "name" : "EEVRISEmbryo",
  "title" : "BiologicallyDerivedProduct: EE VRIS Embryo",
  "status" : "active",
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
  "description" : "Profile for embryo. (ee Embrüo. NB! IGA embrüo on omaette ressurss!)",
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
    "identity" : "ISBT128Code",
    "uri" : "https://www.isbt128.org/uri/",
    "name" : "ISBT 128 Codes"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 V2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "BiologicallyDerivedProduct",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/BiologicallyDerivedProduct",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "BiologicallyDerivedProduct",
      "path" : "BiologicallyDerivedProduct"
    },
    {
      "id" : "BiologicallyDerivedProduct.extension",
      "path" : "BiologicallyDerivedProduct.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "BiologicallyDerivedProduct.extension:cryopreservationDate",
      "path" : "BiologicallyDerivedProduct.extension",
      "sliceName" : "cryopreservationDate",
      "short" : "(ee Embrüo külmutamise kuupäev)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-cryopreservation-date"]
      }]
    },
    {
      "id" : "BiologicallyDerivedProduct.extension:recipient",
      "path" : "BiologicallyDerivedProduct.extension",
      "sliceName" : "recipient",
      "short" : "(ee retsipient)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/biologicallyderivedproduct-intendedRecipient"]
      }]
    },
    {
      "id" : "BiologicallyDerivedProduct.extension:thawning",
      "path" : "BiologicallyDerivedProduct.extension",
      "sliceName" : "thawning",
      "short" : "(ee Embrüo sulatamise kuupäev ja arv)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-thawing"]
      }]
    },
    {
      "id" : "BiologicallyDerivedProduct.extension:reCryo",
      "path" : "BiologicallyDerivedProduct.extension",
      "sliceName" : "reCryo",
      "short" : "(ee Embrüo taaskülmutamine jah/ei; ja arv)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-recryo"]
      }]
    },
    {
      "id" : "BiologicallyDerivedProduct.extension:cryopreservationReason",
      "path" : "BiologicallyDerivedProduct.extension",
      "sliceName" : "cryopreservationReason",
      "short" : "(ee Embrüo külmutamise põhjus)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-cell-preservation-reason"]
      }]
    },
    {
      "id" : "BiologicallyDerivedProduct.productCategory",
      "path" : "BiologicallyDerivedProduct.productCategory",
      "binding" : {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName",
          "valueString" : "BiologicallyDerivedProductCategory"
        }],
        "strength" : "example",
        "description" : "LOEND! Kas seda andmevälja on üldse vaja?",
        "valueSet" : "http://hl7.org/fhir/ValueSet/product-category"
      }
    },
    {
      "id" : "BiologicallyDerivedProduct.productCode",
      "path" : "BiologicallyDerivedProduct.productCode",
      "min" : 1,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.ee/ValueSet/vris-bioloogilise-materjali-liik"
      }
    },
    {
      "id" : "BiologicallyDerivedProduct.parent",
      "path" : "BiologicallyDerivedProduct.parent",
      "short" : "(ee Embryo moodustub kahest sugurakust, siia viited nendele)",
      "type" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-hierarchy",
          "valueBoolean" : true
        }],
        "code" : "Reference",
        "targetProfile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-sperm",
        "https://fhir.ee/vris/StructureDefinition/ee-vris-oocyte"]
      }]
    },
    {
      "id" : "BiologicallyDerivedProduct.request",
      "path" : "BiologicallyDerivedProduct.request",
      "max" : "0"
    },
    {
      "id" : "BiologicallyDerivedProduct.identifier",
      "path" : "BiologicallyDerivedProduct.identifier",
      "short" : "Tõenäoliselt väga oluline identifikaator?"
    },
    {
      "id" : "BiologicallyDerivedProduct.biologicalSourceEvent",
      "path" : "BiologicallyDerivedProduct.biologicalSourceEvent",
      "short" : "Kas seda on vaja? ANNETATUD EMBRYO???? Viide viljastamise protseduurile?!"
    },
    {
      "id" : "BiologicallyDerivedProduct.processingFacility",
      "path" : "BiologicallyDerivedProduct.processingFacility",
      "short" : "Kas seda on vaja? KLIINIKU viide??"
    },
    {
      "id" : "BiologicallyDerivedProduct.division",
      "path" : "BiologicallyDerivedProduct.division",
      "max" : "0"
    },
    {
      "id" : "BiologicallyDerivedProduct.productStatus",
      "path" : "BiologicallyDerivedProduct.productStatus",
      "min" : 1,
      "binding" : {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName",
          "valueString" : "BiologicallyDerivedProductStatus"
        }],
        "strength" : "example",
        "description" : "LOEND!",
        "valueSet" : "http://hl7.org/fhir/ValueSet/biologicallyderived-product-status"
      }
    },
    {
      "id" : "BiologicallyDerivedProduct.expirationDate",
      "path" : "BiologicallyDerivedProduct.expirationDate",
      "max" : "0"
    },
    {
      "id" : "BiologicallyDerivedProduct.collection",
      "path" : "BiologicallyDerivedProduct.collection",
      "min" : 1
    },
    {
      "id" : "BiologicallyDerivedProduct.collection.source",
      "path" : "BiologicallyDerivedProduct.collection.source",
      "short" : "(ee Doonori viide! NB kas seda on vaja? Kui parent viitab sperma ja munaraku doonoritele?)",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-donor"]
      }]
    },
    {
      "id" : "BiologicallyDerivedProduct.storageTempRequirements",
      "path" : "BiologicallyDerivedProduct.storageTempRequirements",
      "max" : "0"
    },
    {
      "id" : "BiologicallyDerivedProduct.property",
      "path" : "BiologicallyDerivedProduct.property",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "type.coding"
        }],
        "description" : "embrüo(de) omadused",
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "BiologicallyDerivedProduct.property:developmentDay",
      "path" : "BiologicallyDerivedProduct.property",
      "sliceName" : "developmentDay",
      "short" : "Embrüo arengupäev",
      "definition" : "Embrüo arengupäev — päevade arv pärast viljastamist (nt 3, 5, 6)",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "BiologicallyDerivedProduct.property:developmentDay.type.coding",
      "path" : "BiologicallyDerivedProduct.property.type.coding",
      "min" : 1,
      "patternCoding" : {
        "code" : "arengupäev"
      }
    },
    {
      "id" : "BiologicallyDerivedProduct.property:developmentDay.value[x]",
      "path" : "BiologicallyDerivedProduct.property.value[x]",
      "type" : [{
        "code" : "integer"
      }]
    }]
  }
}

```
