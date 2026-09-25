# BiologicallyDerivedProduct: EE VRIS Oocyte - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BiologicallyDerivedProduct: EE VRIS Oocyte**

## Resource Profile: BiologicallyDerivedProduct: EE VRIS Oocyte 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/vris/StructureDefinition/ee-vris-oocyte | *Version*:0.1.0 |
| Active as of 2026-09-25 | *Computable Name*:EEVRISOocyte |

 
Profile for oocyte. (ee Bioloogiline materjal (munarakk/munarakud) 

**Usages:**

* Refer to this Profile: [BiologicallyDerivedProduct: EE VRIS Embryo](StructureDefinition-ee-vris-embryo.md), [Observation: EE VRIS Fertilization Counts](StructureDefinition-ee-vris-observation-fertilization-counts.md), [Procedure: EE VRIS Allocation](StructureDefinition-ee-vris-procedure-allocation.md), [Procedure: EE VRIS Cryopreservation](StructureDefinition-ee-vris-procedure-cryopreservation.md)... Show 5 more, [Procedure: EE VRIS Destruction](StructureDefinition-ee-vris-procedure-destruction.md), [Procedure: EE VRIS Donation](StructureDefinition-ee-vris-procedure-donation.md), [Procedure: EE VRIS Fertilization](StructureDefinition-ee-vris-procedure-fertilization.md), [Procedure: EE VRIS Oocyte Retrieval](StructureDefinition-ee-vris-procedure-oocyte-retrieval.md) and [SupplyDelivery: EE VRIS Biological material movement](StructureDefinition-ee-vris-supply-delivery.md)
* Examples for this Profile: [BiologicallyDerivedProduct/oocyte1-1](BiologicallyDerivedProduct-oocyte1-1.md), [BiologicallyDerivedProduct/oocyte1-2](BiologicallyDerivedProduct-oocyte1-2.md), [BiologicallyDerivedProduct/oocyte1-3](BiologicallyDerivedProduct-oocyte1-3.md) and [BiologicallyDerivedProduct/oocyte1](BiologicallyDerivedProduct-oocyte1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ee.fhir.vris|current/StructureDefinition/StructureDefinition-ee-vris-oocyte.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ee-vris-oocyte.csv), [Excel](StructureDefinition-ee-vris-oocyte.xlsx), [Schematron](StructureDefinition-ee-vris-oocyte.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ee-vris-oocyte",
  "url" : "https://fhir.ee/vris/StructureDefinition/ee-vris-oocyte",
  "version" : "0.1.0",
  "name" : "EEVRISOocyte",
  "title" : "BiologicallyDerivedProduct: EE VRIS Oocyte",
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
  "description" : "Profile for oocyte. (ee Bioloogiline materjal (munarakk/munarakud)",
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
      "short" : "Bioloogiline materjal, munarakk.",
      "constraint" : [{
        "key" : "vris-bdp-1",
        "severity" : "error",
        "human" : "An aliquot must reference its parent product (ee Pakendil peab olema viide vanemmaterjalile)",
        "expression" : "division.exists() implies parent.exists()",
        "source" : "https://fhir.ee/vris/StructureDefinition/ee-vris-oocyte"
      },
      {
        "key" : "vris-bdp-2",
        "severity" : "error",
        "human" : "Cryopreserved material must have storage temperature requirements (ee Külmutatud materjalil peab olema hoiustamistemperatuur)",
        "expression" : "property.where(type.coding.code='preservation-state').value.ofType(CodeableConcept).coding.code='cryopreserved' implies storageTempRequirements.exists()",
        "source" : "https://fhir.ee/vris/StructureDefinition/ee-vris-oocyte"
      },
      {
        "key" : "vris-bdp-3",
        "severity" : "error",
        "human" : "Fresh material must have an expiration date (ee Värskel materjalil peab olema kehtivusaeg)",
        "expression" : "property.where(type.coding.code='preservation-state').value.ofType(CodeableConcept).coding.code='fresh' implies expirationDate.exists()",
        "source" : "https://fhir.ee/vris/StructureDefinition/ee-vris-oocyte"
      },
      {
        "key" : "vris-bdp-4",
        "severity" : "error",
        "human" : "Source material must record collection details (ee Lähtematerjalil peavad olema kogumisandmed)",
        "expression" : "division.empty() implies collection.exists()",
        "source" : "https://fhir.ee/vris/StructureDefinition/ee-vris-oocyte"
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
      "short" : "(ee Retsipiendi viide, kui on määratud)",
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
      "short" : "(ee Sulatamise kuupäev ja arv)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-thawing"]
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
      "short" : "Munarakk. FIX KOOD! (NB! Embryol on oma profiil EEVRISEmbryo). Vaja loendit!",
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
        "https://fhir.ee/vris/StructureDefinition/ee-vris-recipient"]
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
        "description" : "Characteristics of biologic material. (ee Bioloogilise materjali omadused)",
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "BiologicallyDerivedProduct.property:donatedCount",
      "path" : "BiologicallyDerivedProduct.property",
      "sliceName" : "donatedCount",
      "short" : "(ee Annetatud/saadud munarakkude arv)",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "BiologicallyDerivedProduct.property:donatedCount.type",
      "path" : "BiologicallyDerivedProduct.property.type",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhir.ee/ValueSet/vris-tunnuse-tyyp",
          "code" : "donated-count"
        }]
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
      "short" : "(ee Külmutatud munarakkude arv)",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "BiologicallyDerivedProduct.property:frozenCount.type",
      "path" : "BiologicallyDerivedProduct.property.type",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhir.ee/ValueSet/vris-tunnuse-tyyp",
          "code" : "frozen-count"
        }]
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
      "id" : "BiologicallyDerivedProduct.property:metaPhase2Count",
      "path" : "BiologicallyDerivedProduct.property",
      "sliceName" : "metaPhase2Count",
      "short" : "(ee Metafaas II (MII) munarakkude arv)",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "BiologicallyDerivedProduct.property:metaPhase2Count.type",
      "path" : "BiologicallyDerivedProduct.property.type",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhir.ee/ValueSet/vris-tunnuse-tyyp",
          "code" : "meta-phase-2-count"
        }]
      }
    },
    {
      "id" : "BiologicallyDerivedProduct.property:metaPhase2Count.value[x]",
      "path" : "BiologicallyDerivedProduct.property.value[x]",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "BiologicallyDerivedProduct.property:Role",
      "path" : "BiologicallyDerivedProduct.property",
      "sliceName" : "Role",
      "short" : "(ee Munaraku päritolu roll: enda tarbeks / doonorluseks / anonüümne jne)",
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
      "short" : "(ee Munaraku kogumise meetod)",
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
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.ee/ValueSet/vris-kogumise-meetod"
      }
    },
    {
      "id" : "BiologicallyDerivedProduct.property:oocyteOrigin",
      "path" : "BiologicallyDerivedProduct.property",
      "sliceName" : "oocyteOrigin",
      "short" : "(ee Munaraku päritolu: patsiendi enda munarakk, PA munarakk jne)",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "BiologicallyDerivedProduct.property:oocyteOrigin.type",
      "path" : "BiologicallyDerivedProduct.property.type",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhir.ee/ValueSet/vris-tunnuse-tyyp",
          "code" : "oocyte-origin"
        }]
      }
    },
    {
      "id" : "BiologicallyDerivedProduct.property:oocyteOrigin.value[x]",
      "path" : "BiologicallyDerivedProduct.property.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.ee/ValueSet/vris-munaraku-paritolu"
      }
    },
    {
      "id" : "BiologicallyDerivedProduct.property:oocyteType",
      "path" : "BiologicallyDerivedProduct.property",
      "sliceName" : "oocyteType",
      "short" : "(ee Munaraku tüüp: viljastamise päeval hangitud / külmutatud-sulatatud jne)",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "BiologicallyDerivedProduct.property:oocyteType.type",
      "path" : "BiologicallyDerivedProduct.property.type",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhir.ee/ValueSet/vris-tunnuse-tyyp",
          "code" : "oocyte-type"
        }]
      }
    },
    {
      "id" : "BiologicallyDerivedProduct.property:oocyteType.value[x]",
      "path" : "BiologicallyDerivedProduct.property.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.ee/ValueSet/vris-munaraku-tyyp"
      }
    },
    {
      "id" : "BiologicallyDerivedProduct.property:intendedUse",
      "path" : "BiologicallyDerivedProduct.property",
      "sliceName" : "intendedUse",
      "short" : "(ee Munaraku kasutusotstarve: doonorluseks või enda tarbeks)",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "BiologicallyDerivedProduct.property:intendedUse.type",
      "path" : "BiologicallyDerivedProduct.property.type",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhir.ee/ValueSet/vris-tunnuse-tyyp",
          "code" : "intended-use"
        }]
      }
    },
    {
      "id" : "BiologicallyDerivedProduct.property:intendedUse.value[x]",
      "path" : "BiologicallyDerivedProduct.property.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.ee/ValueSet/vris-munaraku-kasutusotstarve"
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
    },
    {
      "id" : "BiologicallyDerivedProduct.property:preservationState",
      "path" : "BiologicallyDerivedProduct.property",
      "sliceName" : "preservationState",
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
