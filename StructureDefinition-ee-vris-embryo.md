# BiologicallyDerivedProduct: EE VRIS Embryo - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BiologicallyDerivedProduct: EE VRIS Embryo**

## Resource Profile: BiologicallyDerivedProduct: EE VRIS Embryo 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/vris/StructureDefinition/ee-vris-embryo | *Version*:0.1.0 |
| Active as of 2026-09-25 | *Computable Name*:EEVRISEmbryo |

 
Profile for embryo. (ee Embrüo. Iga embrüo on omaette BDP-ressurss, mis kannab enda andmeid (arengupäev, parent-viited munarakule ja spermale). Füüsiline pakend (kõrs) on eraldi BDP-instants, mis kannab division-i ja säilitusandmeid (preservationState, temperatuur, sulatamine, taaskülmutamine). ) 

**Usages:**

* Refer to this Profile: [Observation: EE VRIS Embryo Lifecycle Counts](StructureDefinition-ee-vris-observation-embryo-lifecycle-counts.md), [Procedure: EE VRIS Allocation](StructureDefinition-ee-vris-procedure-allocation.md), [Procedure: EE VRIS Cryopreservation](StructureDefinition-ee-vris-procedure-cryopreservation.md), [Procedure: EE VRIS Destruction](StructureDefinition-ee-vris-procedure-destruction.md)... Show 4 more, [Procedure: EE VRIS Donation](StructureDefinition-ee-vris-procedure-donation.md), [Procedure: EE VRIS Embryo Transfer](StructureDefinition-ee-vris-procedure-embryo-transfer.md), [Procedure: EE VRIS Preimplantation Genetic Testing](StructureDefinition-ee-vris-procedure-pgt.md) and [SupplyDelivery: EE VRIS Biological material movement](StructureDefinition-ee-vris-supply-delivery.md)
* Examples for this Profile: [BiologicallyDerivedProduct/embryo1-1](BiologicallyDerivedProduct-embryo1-1.md), [BiologicallyDerivedProduct/embryo1-2](BiologicallyDerivedProduct-embryo1-2.md), [BiologicallyDerivedProduct/embryo1](BiologicallyDerivedProduct-embryo1.md), [BiologicallyDerivedProduct/embryo2-1](BiologicallyDerivedProduct-embryo2-1.md) and [BiologicallyDerivedProduct/embryo2](BiologicallyDerivedProduct-embryo2.md)

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
  "date" : "2026-09-25T09:40:45+00:00",
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
  "description" : "Profile for embryo. (ee Embrüo. Iga embrüo on omaette BDP-ressurss, mis kannab enda andmeid (arengupäev, parent-viited munarakule ja spermale). Füüsiline pakend (kõrs) on eraldi BDP-instants, mis kannab division-i ja säilitusandmeid (preservationState, temperatuur, sulatamine, taaskülmutamine). )",
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
      "path" : "BiologicallyDerivedProduct",
      "constraint" : [{
        "key" : "vris-bdp-3",
        "severity" : "error",
        "human" : "Fresh material must have an expiration date (ee Värskel materjalil peab olema kehtivusaeg)",
        "expression" : "property.where(type.coding.code='preservation-state').value.ofType(CodeableConcept).coding.code='fresh' implies expirationDate.exists()",
        "source" : "https://fhir.ee/vris/StructureDefinition/ee-vris-embryo"
      },
      {
        "key" : "vris-bdp-4",
        "severity" : "error",
        "human" : "Source material must record collection details (ee Lähtematerjalil peavad olema kogumisandmed)",
        "expression" : "division.empty() implies collection.exists()",
        "source" : "https://fhir.ee/vris/StructureDefinition/ee-vris-embryo"
      },
      {
        "key" : "vris-embryo-2",
        "severity" : "error",
        "human" : "Instants on kas pakend (division) või üksikembrüo (extension[package]), mitte mõlemat korraga",
        "expression" : "division.exists() xor extension('https://fhir.ee/vris/StructureDefinition/ee-vris-package').exists()",
        "source" : "https://fhir.ee/vris/StructureDefinition/ee-vris-embryo"
      },
      {
        "key" : "vris-embryo-4",
        "severity" : "warning",
        "human" : "Üksikembrüol peavad olema nii munaraku- kui spermaviide",
        "expression" : "extension('https://fhir.ee/vris/StructureDefinition/ee-vris-package').empty() or parent.count() >= 2",
        "source" : "https://fhir.ee/vris/StructureDefinition/ee-vris-embryo"
      },
      {
        "key" : "vris-embryo-5",
        "severity" : "error",
        "human" : "Pakendil ei tohi olla parent-viiteid; sisu viitab pakendile",
        "expression" : "division.empty() or parent.empty()",
        "source" : "https://fhir.ee/vris/StructureDefinition/ee-vris-embryo"
      }]
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
      "id" : "BiologicallyDerivedProduct.extension:thawing",
      "path" : "BiologicallyDerivedProduct.extension",
      "sliceName" : "thawing",
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
      "id" : "BiologicallyDerivedProduct.extension:package",
      "path" : "BiologicallyDerivedProduct.extension",
      "sliceName" : "package",
      "short" : "(ee Pakend, milles on mitu individuaalset embryot. NB! See on ainult üksikembrüol, kes viitab pakendile. Üksikembrüo viitab pakendile extension[package] kaudu, pakend ise ei viita sisule.)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-package"]
      }]
    },
    {
      "id" : "BiologicallyDerivedProduct.productCategory",
      "path" : "BiologicallyDerivedProduct.productCategory",
      "max" : "0"
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
      "short" : "(ee Identifikaator, igal embrüol on oma eraldi identifikaator.)",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "BiologicallyDerivedProduct.biologicalSourceEvent",
      "path" : "BiologicallyDerivedProduct.biologicalSourceEvent",
      "short" : "(ee Viljastamise sündmuse identifikaator, EI seo embrüot pakendiga)"
    },
    {
      "id" : "BiologicallyDerivedProduct.processingFacility",
      "path" : "BiologicallyDerivedProduct.processingFacility",
      "short" : "(ee Kliiniku/labori viide)",
      "max" : "1"
    },
    {
      "id" : "BiologicallyDerivedProduct.division",
      "path" : "BiologicallyDerivedProduct.division",
      "short" : "(ee Pakendi number viljastamise sündmuse sees: 1, 2, 3...)"
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
      "id" : "BiologicallyDerivedProduct.property",
      "path" : "BiologicallyDerivedProduct.property",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "type"
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
      "definition" : "Embrüo arengupäev ehk päevade arv pärast viljastamist (nt 3, 5, 6)",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "BiologicallyDerivedProduct.property:developmentDay.type",
      "path" : "BiologicallyDerivedProduct.property.type",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhir.ee/ValueSet/vris-tunnuse-tyyp",
          "code" : "development-day"
        }]
      }
    },
    {
      "id" : "BiologicallyDerivedProduct.property:developmentDay.value[x]",
      "path" : "BiologicallyDerivedProduct.property.value[x]",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "BiologicallyDerivedProduct.property:preservationState",
      "path" : "BiologicallyDerivedProduct.property",
      "sliceName" : "preservationState",
      "short" : "(ee Säilitusseisund: värske|külmutatud|sulatatud — pakendil)",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "BiologicallyDerivedProduct.property:preservationState.type",
      "path" : "BiologicallyDerivedProduct.property.type",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhir.ee/ValueSet/vris-tunnuse-tyyp",
          "code" : "preservation-state"
        }]
      }
    },
    {
      "id" : "BiologicallyDerivedProduct.property:preservationState.value[x]",
      "path" : "BiologicallyDerivedProduct.property.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.ee/ValueSet/vris-sailitamise-olek"
      }
    },
    {
      "id" : "BiologicallyDerivedProduct.property:preservationReason",
      "path" : "BiologicallyDerivedProduct.property",
      "sliceName" : "preservationReason",
      "short" : "(ee Viljakuse säilitamise põhjus: onkoloogiline, sooline üleminek jne)",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "BiologicallyDerivedProduct.property:preservationReason.type",
      "path" : "BiologicallyDerivedProduct.property.type",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhir.ee/ValueSet/vris-tunnuse-tyyp",
          "code" : "preservation-reason"
        }]
      }
    },
    {
      "id" : "BiologicallyDerivedProduct.property:preservationReason.value[x]",
      "path" : "BiologicallyDerivedProduct.property.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.ee/ValueSet/vris-viljakuse-sailitamise-pohjus"
      }
    }]
  }
}

```
