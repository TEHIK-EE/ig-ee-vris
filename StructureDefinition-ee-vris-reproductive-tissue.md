# BiologicallyDerivedProduct: EE VRIS Reproductive Tissue - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BiologicallyDerivedProduct: EE VRIS Reproductive Tissue**

## Resource Profile: BiologicallyDerivedProduct: EE VRIS Reproductive Tissue 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/vris/StructureDefinition/ee-vris-reproductive-tissue | *Version*:0.1.0 |
| Active as of 2026-09-25 | *Computable Name*:EEVRISReproductiveTissue |

 
Profile for reproductive tissue (testicular tissue, ovarian tissue). Used mainly for fertility preservation. (ee Bioloogiline materjal (munandi kude, munasarja kude). Kasutatakse peamiselt viljakuse säilitamiseks.) 

**Usages:**

* Refer to this Profile: [Procedure: EE VRIS Allocation](StructureDefinition-ee-vris-procedure-allocation.md), [Procedure: EE VRIS Cryopreservation](StructureDefinition-ee-vris-procedure-cryopreservation.md), [Procedure: EE VRIS Destruction](StructureDefinition-ee-vris-procedure-destruction.md), [Procedure: EE VRIS Donation](StructureDefinition-ee-vris-procedure-donation.md) and [SupplyDelivery: EE VRIS Biological material movement](StructureDefinition-ee-vris-supply-delivery.md)
* Examples for this Profile: [BiologicallyDerivedProduct/ovariantissue1-1](BiologicallyDerivedProduct-ovariantissue1-1.md) and [BiologicallyDerivedProduct/ovariantissue1](BiologicallyDerivedProduct-ovariantissue1.md)

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
      "path" : "BiologicallyDerivedProduct",
      "constraint" : [{
        "key" : "vris-bdp-1",
        "severity" : "error",
        "human" : "An aliquot must reference its parent product (ee Pakendil peab olema viide vanemmaterjalile)",
        "expression" : "division.exists() implies parent.exists()",
        "source" : "https://fhir.ee/vris/StructureDefinition/ee-vris-reproductive-tissue"
      },
      {
        "key" : "vris-bdp-3",
        "severity" : "error",
        "human" : "Fresh material must have an expiration date (ee Värskel materjalil peab olema kehtivusaeg)",
        "expression" : "property.where(type.coding.code='preservation-state').value.ofType(CodeableConcept).coding.code='fresh' implies expirationDate.exists()",
        "source" : "https://fhir.ee/vris/StructureDefinition/ee-vris-reproductive-tissue"
      },
      {
        "key" : "vris-bdp-4",
        "severity" : "error",
        "human" : "Source material must record collection details (ee Lähtematerjalil peavad olema kogumisandmed)",
        "expression" : "division.empty() implies collection.exists()",
        "source" : "https://fhir.ee/vris/StructureDefinition/ee-vris-reproductive-tissue"
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
      "short" : "(ee Toote kategooria, kude (tissue) KAS SEDA ON  VAJA????)",
      "max" : "0"
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
      "short" : "(ee Viide lähtematerjalile, millest see pakend eraldati)"
    },
    {
      "id" : "BiologicallyDerivedProduct.request",
      "path" : "BiologicallyDerivedProduct.request",
      "max" : "0"
    },
    {
      "id" : "BiologicallyDerivedProduct.biologicalSourceEvent",
      "path" : "BiologicallyDerivedProduct.biologicalSourceEvent",
      "short" : "(ee See on viide pakenditeülesele ühisele identifikaatorile, division näitab erineva pakendi numbrit)"
    },
    {
      "id" : "BiologicallyDerivedProduct.division",
      "path" : "BiologicallyDerivedProduct.division",
      "short" : "(ee Pakendi number kogumissündmuse sees: 1, 2, 3...)"
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
          "path" : "type"
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
      "id" : "BiologicallyDerivedProduct.property:fragmentCount.type",
      "path" : "BiologicallyDerivedProduct.property.type",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhir.ee/ValueSet/vris-tunnuse-tyyp",
          "code" : "fragment-count"
        }]
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
      "id" : "BiologicallyDerivedProduct.property:frozenFragmentCount.type",
      "path" : "BiologicallyDerivedProduct.property.type",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhir.ee/ValueSet/vris-tunnuse-tyyp",
          "code" : "frozen-fragment-count"
        }]
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
      "id" : "BiologicallyDerivedProduct.property:Role.type",
      "path" : "BiologicallyDerivedProduct.property.type",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhir.ee/ValueSet/vris-tunnuse-tyyp",
          "code" : "cell-origin-role"
        }]
      }
    },
    {
      "id" : "BiologicallyDerivedProduct.property:Role.value[x]",
      "path" : "BiologicallyDerivedProduct.property.value[x]",
      "short" : "(ee Koe päritolu roll: enda tarbeks / doonorluseks jne)",
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
      "id" : "BiologicallyDerivedProduct.property:collectionMethod.type",
      "path" : "BiologicallyDerivedProduct.property.type",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhir.ee/ValueSet/vris-tunnuse-tyyp",
          "code" : "collection-method"
        }]
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
    },
    {
      "id" : "BiologicallyDerivedProduct.property:preservationReason",
      "path" : "BiologicallyDerivedProduct.property",
      "sliceName" : "preservationReason",
      "short" : "(ee VILJAKUSE säilitamise PÕHJUS, nt enne onkoloogilist ravi)",
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
    },
    {
      "id" : "BiologicallyDerivedProduct.property:pubertalStatus",
      "path" : "BiologicallyDerivedProduct.property",
      "sliceName" : "pubertalStatus",
      "short" : "(ee Kas kude koguti puberteedieelselt või -järgselt)",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "BiologicallyDerivedProduct.property:pubertalStatus.type",
      "path" : "BiologicallyDerivedProduct.property.type",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhir.ee/ValueSet/vris-tunnuse-tyyp",
          "code" : "pubertal-status"
        }]
      }
    },
    {
      "id" : "BiologicallyDerivedProduct.property:pubertalStatus.value[x]",
      "path" : "BiologicallyDerivedProduct.property.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.ee/ValueSet/vris-puberteedi-staatus"
      }
    },
    {
      "id" : "BiologicallyDerivedProduct.property:preservationState",
      "path" : "BiologicallyDerivedProduct.property",
      "sliceName" : "preservationState",
      "short" : "(ee värske|külmutatud|sulatatud|)",
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
    }]
  }
}

```
