# BiologicallyDerivedProduct: EE VRIS Sperm - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BiologicallyDerivedProduct: EE VRIS Sperm**

## Resource Profile: BiologicallyDerivedProduct: EE VRIS Sperm 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/vris/StructureDefinition/ee-vris-sperm | *Version*:0.1.0 |
| Active as of 2026-08-26 | *Computable Name*:EEVRISSperm |

 
Profile for sperm. (ee Bioloogiline materjal (Seemnerakud) 

**Usages:**

* Refer to this Profile: [BiologicallyDerivedProduct: EE VRIS Embryo](StructureDefinition-ee-vris-embryo.md), [PackagedProductDefinition: EE VRIS Package](StructureDefinition-ee-vris-packaged-product-definition.md), [Procedure: EE VRIS Cryopreservation](StructureDefinition-ee-vris-procedure-cryopreservation.md), [Procedure: EE VRIS Destruction](StructureDefinition-ee-vris-procedure-destruction.md)... Show 4 more, [Procedure: EE VRIS Donation](StructureDefinition-ee-vris-procedure-donation.md), [Procedure: EE VRIS Fertilization](StructureDefinition-ee-vris-procedure-fertilization.md), [Procedure: EE VRIS Intrauterine Insemination (IUI)](StructureDefinition-ee-vris-procedure-insemination.md) and [SupplyDelivery: EE VRIS Biological material movement](StructureDefinition-ee-vris-supply-delivery.md)
* Examples for this Profile: [BiologicallyDerivedProduct/sperm1](BiologicallyDerivedProduct-sperm1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ee.fhir.vris|current/StructureDefinition/StructureDefinition-ee-vris-sperm.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ee-vris-sperm.csv), [Excel](StructureDefinition-ee-vris-sperm.xlsx), [Schematron](StructureDefinition-ee-vris-sperm.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ee-vris-sperm",
  "url" : "https://fhir.ee/vris/StructureDefinition/ee-vris-sperm",
  "version" : "0.1.0",
  "name" : "EEVRISSperm",
  "title" : "BiologicallyDerivedProduct: EE VRIS Sperm",
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
  "description" : "Profile for sperm. (ee Bioloogiline materjal (Seemnerakud)",
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
      "short" : "Bioloogiline materjal, Seemnerakud."
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
      "short" : "(ee Külmutamise kuupäev)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-cryopreservation-date"]
      }]
    },
    {
      "id" : "BiologicallyDerivedProduct.extension:cryopreservationReason",
      "path" : "BiologicallyDerivedProduct.extension",
      "sliceName" : "cryopreservationReason",
      "short" : "(ee Külmutamise põhjus)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-cell-preservation-reason"]
      }]
    },
    {
      "id" : "BiologicallyDerivedProduct.extension:recipient",
      "path" : "BiologicallyDerivedProduct.extension",
      "sliceName" : "recipient",
      "short" : "(ee Kui on vaja retsipiendi seost, siis see tuleb täita patsiendi referentsiga.)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/biologicallyderivedproduct-intendedRecipient"]
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
      "short" : "(ee Sperma, fix kood! Vaja loendit! KAS on vaja kui igal sugurakul on oma profiil???)",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.ee/ValueSet/vris-bioloogilise-materjali-liik"
      }
    },
    {
      "id" : "BiologicallyDerivedProduct.parent",
      "path" : "BiologicallyDerivedProduct.parent",
      "max" : "0"
    },
    {
      "id" : "BiologicallyDerivedProduct.request",
      "path" : "BiologicallyDerivedProduct.request",
      "max" : "0"
    },
    {
      "id" : "BiologicallyDerivedProduct.biologicalSourceEvent",
      "path" : "BiologicallyDerivedProduct.biologicalSourceEvent",
      "short" : "Kas selle kaudu saaks viidata KÜLMUTAMISELE/vm protseduurile?"
    },
    {
      "id" : "BiologicallyDerivedProduct.division",
      "path" : "BiologicallyDerivedProduct.division",
      "short" : "KAS seda saaks kasutada osaproovide identifikaatoriks? Kas on vaja sellist jaotust?"
    },
    {
      "id" : "BiologicallyDerivedProduct.productStatus",
      "path" : "BiologicallyDerivedProduct.productStatus",
      "short" : "(ee Staatuse kaudu saab broneeringut teha? NB Vaja loendit!)",
      "min" : 1
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
      "id" : "BiologicallyDerivedProduct.collection.collector",
      "path" : "BiologicallyDerivedProduct.collection.collector",
      "max" : "0"
    },
    {
      "id" : "BiologicallyDerivedProduct.collection.source",
      "path" : "BiologicallyDerivedProduct.collection.source",
      "short" : "Reference of the donor. (ee Doonori viide, kes on annetanud bioloogilise materjali. Võib olla anonüümne aga patient.link kaudu ka MPIst.)",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-donor",
        "https://fhir.ee/vris/StructureDefinition/ee-vris-donor-anonymous"]
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
        "description" : "Characteristics of biologic material. (ee Bioloogilise materjali omadused)",
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "BiologicallyDerivedProduct.property:donatedCount",
      "path" : "BiologicallyDerivedProduct.property",
      "sliceName" : "donatedCount",
      "short" : "(ee Annetatud dooside arv)",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "BiologicallyDerivedProduct.property:donatedCount.type.coding",
      "path" : "BiologicallyDerivedProduct.property.type.coding",
      "min" : 1,
      "patternCoding" : {
        "system" : "https://fhir.ee/ValueSet/vris-tunnuse-tyyp",
        "code" : "donated-count"
      }
    },
    {
      "id" : "BiologicallyDerivedProduct.property:donatedCount.value[x]",
      "path" : "BiologicallyDerivedProduct.property.value[x]",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "BiologicallyDerivedProduct.property:frozenCount",
      "path" : "BiologicallyDerivedProduct.property",
      "sliceName" : "frozenCount",
      "short" : "(ee Külmutatud spermadooside arv)",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "BiologicallyDerivedProduct.property:frozenCount.type.coding",
      "path" : "BiologicallyDerivedProduct.property.type.coding",
      "min" : 1,
      "patternCoding" : {
        "system" : "https://fhir.ee/ValueSet/vris-tunnuse-tyyp",
        "code" : "frozen-count"
      }
    },
    {
      "id" : "BiologicallyDerivedProduct.property:frozenCount.value[x]",
      "path" : "BiologicallyDerivedProduct.property.value[x]",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "BiologicallyDerivedProduct.property:Role",
      "path" : "BiologicallyDerivedProduct.property",
      "sliceName" : "Role",
      "short" : "(ee Suguraku päritolu roll: partner-annetaja, mittepartner, anonüümne doonor, säilitaja jne)",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "BiologicallyDerivedProduct.property:Role.type.coding",
      "path" : "BiologicallyDerivedProduct.property.type.coding",
      "min" : 1,
      "patternCoding" : {
        "system" : "https://fhir.ee/ValueSet/vris-tunnuse-tyyp",
        "code" : "cell-origin-role"
      }
    },
    {
      "id" : "BiologicallyDerivedProduct.property:Role.value[x]",
      "path" : "BiologicallyDerivedProduct.property.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.ee/ValueSet/vris-suguraku-paritolu-roll"
      }
    },
    {
      "id" : "BiologicallyDerivedProduct.property:collectionMethod",
      "path" : "BiologicallyDerivedProduct.property",
      "sliceName" : "collectionMethod",
      "short" : "(ee Seemnerakkude kogumise meetod, nt ejakulatsioon, kirurgiline eemaldamine, elektroejakulatsioon)",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "BiologicallyDerivedProduct.property:collectionMethod.type.coding",
      "path" : "BiologicallyDerivedProduct.property.type.coding",
      "min" : 1,
      "patternCoding" : {
        "system" : "https://fhir.ee/ValueSet/vris-tunnuse-tyyp",
        "code" : "collection-method"
      }
    },
    {
      "id" : "BiologicallyDerivedProduct.property:collectionMethod.value[x]",
      "path" : "BiologicallyDerivedProduct.property.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.ee/ValueSet/vris-kogumise-meetod"
      }
    },
    {
      "id" : "BiologicallyDerivedProduct.property:usageState",
      "path" : "BiologicallyDerivedProduct.property",
      "sliceName" : "usageState",
      "short" : "(ee Seemnerakkude SAAMISE meetod: värske, külmutatud-sulatatud, kombineeritud)",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "BiologicallyDerivedProduct.property:usageState.type.coding",
      "path" : "BiologicallyDerivedProduct.property.type.coding",
      "min" : 1,
      "patternCoding" : {
        "system" : "https://fhir.ee/ValueSet/vris-tunnuse-tyyp",
        "code" : "usage-state"
      }
    },
    {
      "id" : "BiologicallyDerivedProduct.property:usageState.value[x]",
      "path" : "BiologicallyDerivedProduct.property.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.ee/ValueSet/vris-suguraku-saamise-meetod"
      }
    },
    {
      "id" : "BiologicallyDerivedProduct.property:donorStimulationMethod",
      "path" : "BiologicallyDerivedProduct.property",
      "sliceName" : "donorStimulationMethod",
      "short" : "(ee Seemnerakkude annetaja stimulatsioon: Follitropiin, Kooriongonadotropiin, Follitropiin+Kooriongonadotropiin, Muu)",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "BiologicallyDerivedProduct.property:donorStimulationMethod.type.coding",
      "path" : "BiologicallyDerivedProduct.property.type.coding",
      "min" : 1,
      "patternCoding" : {
        "system" : "https://fhir.ee/ValueSet/vris-tunnuse-tyyp",
        "code" : "donor-stimulation-method"
      }
    },
    {
      "id" : "BiologicallyDerivedProduct.property:donorStimulationMethod.value[x]",
      "path" : "BiologicallyDerivedProduct.property.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.ee/ValueSet/vris-spermadoonori-stimulatsiooni-meetod"
      }
    }]
  }
}

```
