# BiologicallyDerivedProduct: EE VRIS Reproductive Tissue - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BiologicallyDerivedProduct: EE VRIS Reproductive Tissue**

## Resource Profile: BiologicallyDerivedProduct: EE VRIS Reproductive Tissue 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/vris/StructureDefinition/ee-vris-reproductive-tissue | *Version*:0.1.0 |
| Active as of 2026-08-26 | *Computable Name*:EEVRISReproductiveTissue |

 
Profile for reproductive tissue (testicular tissue, ovarian tissue). Used mainly for fertility preservation. (ee Bioloogiline materjal (munandi kude, munasarja kude). Kasutatakse peamiselt viljakuse säilitamiseks.) 

**Usages:**

* Refer to this Profile: [Procedure: EE VRIS Cryopreservation](StructureDefinition-ee-vris-procedure-cryopreservation.md) and [Procedure: EE VRIS Destruction](StructureDefinition-ee-vris-procedure-destruction.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ee.fhir.vris|current/StructureDefinition/StructureDefinition-ee-vris-reproductive-tissue.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ee-vris-reproductive-tissue.csv), [Excel](StructureDefinition-ee-vris-reproductive-tissue.xlsx), [Schematron](StructureDefinition-ee-vris-reproductive-tissue.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ee-vris-reproductive-tissue",
  "url" : "https://fhir.ee/vris/StructureDefinition/ee-vris-reproductive-tissue",
  "version" : "0.1.0",
  "name" : "EEVRISReproductiveTissue",
  "title" : "BiologicallyDerivedProduct: EE VRIS Reproductive Tissue",
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
  "description" : "Profile for reproductive tissue (testicular tissue, ovarian tissue). Used mainly for fertility preservation. (ee Bioloogiline materjal (munandi kude, munasarja kude). Kasutatakse peamiselt viljakuse säilitamiseks.)",
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
      "short" : "(ee Külmutamise põhjus, nt enne onkoloogilist ravi)",
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
      "short" : "(ee Retsipiendi viide. Tavaliselt on retsipient sama isik kes doonor (autoloogne säilitamine).)",
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
      "short" : "(ee Toote kategooria, kude (tissue) KAS SEDA ON  VAJA????)"
    },
    {
      "id" : "BiologicallyDerivedProduct.productCode",
      "path" : "BiologicallyDerivedProduct.productCode",
      "short" : "(ee Munandi kude või munasarja kude. NB! Vaja loendit!)",
      "min" : 1,
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
      "short" : "(ee Kas selle kaudu saaks viidata KOGUMISELE/biopsiale vm protseduurile?)"
    },
    {
      "id" : "BiologicallyDerivedProduct.division",
      "path" : "BiologicallyDerivedProduct.division",
      "short" : "(ee KAS seda saaks kasutada osaproovide/koetükkide identifikaatoriks?)"
    },
    {
      "id" : "BiologicallyDerivedProduct.productStatus",
      "path" : "BiologicallyDerivedProduct.productStatus",
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
      "short" : "(ee Kude koguv tervishoiutöötaja)"
    },
    {
      "id" : "BiologicallyDerivedProduct.collection.source",
      "path" : "BiologicallyDerivedProduct.collection.source",
      "short" : "(ee Doonori/patsiendi viide, kellelt kude kogutud. Sama isik on doonor ja tulevane retsipient?)",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-donor",
        "https://fhir.ee/vris/StructureDefinition/ee-vris-recipient"]
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
        "description" : "(ee Bioloogilise materjali (koe) omadused)",
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "BiologicallyDerivedProduct.property:fragmentCount",
      "path" : "BiologicallyDerivedProduct.property",
      "sliceName" : "fragmentCount",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "BiologicallyDerivedProduct.property:fragmentCount.type.coding",
      "path" : "BiologicallyDerivedProduct.property.type.coding",
      "min" : 1,
      "patternCoding" : {
        "system" : "https://fhir.ee/ValueSet/vris-tunnuse-tyyp",
        "code" : "fragment-count"
      }
    },
    {
      "id" : "BiologicallyDerivedProduct.property:fragmentCount.value[x]",
      "path" : "BiologicallyDerivedProduct.property.value[x]",
      "short" : "(ee Koetükkide arv)",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "BiologicallyDerivedProduct.property:frozenFragmentCount",
      "path" : "BiologicallyDerivedProduct.property",
      "sliceName" : "frozenFragmentCount",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "BiologicallyDerivedProduct.property:frozenFragmentCount.type.coding",
      "path" : "BiologicallyDerivedProduct.property.type.coding",
      "min" : 1,
      "patternCoding" : {
        "system" : "https://fhir.ee/ValueSet/vris-tunnuse-tyyp",
        "code" : "frozen-fragment-count"
      }
    },
    {
      "id" : "BiologicallyDerivedProduct.property:frozenFragmentCount.value[x]",
      "path" : "BiologicallyDerivedProduct.property.value[x]",
      "short" : "(ee Külmutatud koetükkide arv)",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "BiologicallyDerivedProduct.property:Role",
      "path" : "BiologicallyDerivedProduct.property",
      "sliceName" : "Role",
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
      "short" : "(ee Koe päritolu roll: autoloogne / doonorluseks jne)",
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
      "min" : 0,
      "max" : "1"
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
      "short" : "(ee Koe kogumise meetod, nt biopsia)",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.ee/ValueSet/vris-kogumise-meetod"
      }
    }]
  }
}

```
