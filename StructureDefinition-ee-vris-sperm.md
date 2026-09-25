# BiologicallyDerivedProduct: EE VRIS Sperm - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BiologicallyDerivedProduct: EE VRIS Sperm**

## Resource Profile: BiologicallyDerivedProduct: EE VRIS Sperm 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/vris/StructureDefinition/ee-vris-sperm | *Version*:0.1.0 |
| Active as of 2026-09-25 | *Computable Name*:EEVRISSperm |

 
Profile for sperm. (ee Bioloogiline materjal (Seemnerakud) 

**Usages:**

* Refer to this Profile: [BiologicallyDerivedProduct: EE VRIS Embryo](StructureDefinition-ee-vris-embryo.md), [Procedure: EE VRIS Allocation](StructureDefinition-ee-vris-procedure-allocation.md), [Procedure: EE VRIS Cryopreservation](StructureDefinition-ee-vris-procedure-cryopreservation.md), [Procedure: EE VRIS Destruction](StructureDefinition-ee-vris-procedure-destruction.md)... Show 4 more, [Procedure: EE VRIS Donation](StructureDefinition-ee-vris-procedure-donation.md), [Procedure: EE VRIS Fertilization](StructureDefinition-ee-vris-procedure-fertilization.md), [Procedure: EE VRIS Intrauterine Insemination (IUI)](StructureDefinition-ee-vris-procedure-insemination.md) and [SupplyDelivery: EE VRIS Biological material movement](StructureDefinition-ee-vris-supply-delivery.md)
* Examples for this Profile: [BiologicallyDerivedProduct/sperm1-1](BiologicallyDerivedProduct-sperm1-1.md), [BiologicallyDerivedProduct/sperm1-2](BiologicallyDerivedProduct-sperm1-2.md), [BiologicallyDerivedProduct/sperm1-3](BiologicallyDerivedProduct-sperm1-3.md) and [BiologicallyDerivedProduct/sperm1](BiologicallyDerivedProduct-sperm1.md)

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
      "short" : "Bioloogiline materjal, Seemnerakud.",
      "constraint" : [{
        "key" : "vris-bdp-1",
        "severity" : "error",
        "human" : "An aliquot must reference its parent product (ee Pakendil peab olema viide vanemmaterjalile)",
        "expression" : "division.exists() implies parent.exists()",
        "source" : "https://fhir.ee/vris/StructureDefinition/ee-vris-sperm"
      },
      {
        "key" : "vris-bdp-2",
        "severity" : "error",
        "human" : "Cryopreserved material must have storage temperature requirements (ee Külmutatud materjalil peab olema hoiustamistemperatuur)",
        "expression" : "property.where(type.coding.code='preservation-state').value.ofType(CodeableConcept).coding.code='cryopreserved' implies storageTempRequirements.exists()",
        "source" : "https://fhir.ee/vris/StructureDefinition/ee-vris-sperm"
      },
      {
        "key" : "vris-bdp-3",
        "severity" : "error",
        "human" : "Fresh material must have an expiration date (ee Värskel materjalil peab olema kehtivusaeg)",
        "expression" : "property.where(type.coding.code='preservation-state').value.ofType(CodeableConcept).coding.code='fresh' implies expirationDate.exists()",
        "source" : "https://fhir.ee/vris/StructureDefinition/ee-vris-sperm"
      },
      {
        "key" : "vris-bdp-4",
        "severity" : "error",
        "human" : "Source material must record collection details (ee Lähtematerjalil peavad olema kogumisandmed)",
        "expression" : "division.empty() implies collection.exists()",
        "source" : "https://fhir.ee/vris/StructureDefinition/ee-vris-sperm"
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
      "short" : "(ee Staatuse kaudu saab broneeringut teha? NB Vaja loendit!)",
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
      "id" : "BiologicallyDerivedProduct.collection.collected[x]",
      "path" : "BiologicallyDerivedProduct.collection.collected[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "BiologicallyDerivedProduct.collection.collected[x]:collectedDateTime",
      "path" : "BiologicallyDerivedProduct.collection.collected[x]",
      "sliceName" : "collectedDateTime",
      "short" : "(ee AEG, millal sugurakud koguti ehk ANNETATI)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
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
      "id" : "BiologicallyDerivedProduct.property.type",
      "path" : "BiologicallyDerivedProduct.property.type",
      "short" : "(ee Omaduse tüüp VRIS loendist. NB! LOEND ja koodid võivad veel muutuda!)",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.ee/ValueSet/vris-tunnuse-tyyp"
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
      "id" : "BiologicallyDerivedProduct.property:Role",
      "path" : "BiologicallyDerivedProduct.property",
      "sliceName" : "Role",
      "short" : "(ee Suguraku päritolu roll: partner-annetaja, mittepartner, anonüümne doonor, säilitaja jne)",
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
      "short" : "(ee Seemnerakkude kogumise meetod, nt ejakulatsioon, kirurgiline eemaldamine, elektroejakulatsioon)",
      "min" : 0,
      "max" : "*"
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
      "id" : "BiologicallyDerivedProduct.property:usageState",
      "path" : "BiologicallyDerivedProduct.property",
      "sliceName" : "usageState",
      "short" : "(ee Seemnerakkude SAAMISE meetod: värske, külmutatud-sulatatud, kombineeritud)",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "BiologicallyDerivedProduct.property:usageState.type",
      "path" : "BiologicallyDerivedProduct.property.type",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhir.ee/ValueSet/vris-tunnuse-tyyp",
          "code" : "usage-state"
        }]
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
      "short" : "(ee Seemnerakkude annetaja STIMULATSIOON: Follitropiin, Kooriongonadotropiin, Follitropiin+Kooriongonadotropiin, Muu)",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "BiologicallyDerivedProduct.property:donorStimulationMethod.type",
      "path" : "BiologicallyDerivedProduct.property.type",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhir.ee/ValueSet/vris-tunnuse-tyyp",
          "code" : "donor-stimulation-method"
        }]
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
    },
    {
      "id" : "BiologicallyDerivedProduct.property:preservationReason",
      "path" : "BiologicallyDerivedProduct.property",
      "sliceName" : "preservationReason",
      "short" : "(ee VILJAKUSE säilitamise PÕHJUS)",
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
        "valueSet" : "https://fhir.ee/ValueSet/vris-suguraku-sailitamise-pohjus"
      }
    },
    {
      "id" : "BiologicallyDerivedProduct.property:preservationMethod",
      "path" : "BiologicallyDerivedProduct.property",
      "sliceName" : "preservationMethod",
      "short" : "(ee VILJAKUSE säilitamise MEETOD)",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "BiologicallyDerivedProduct.property:preservationMethod.type",
      "path" : "BiologicallyDerivedProduct.property.type",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhir.ee/ValueSet/vris-tunnuse-tyyp",
          "code" : "preservation-method"
        }]
      }
    },
    {
      "id" : "BiologicallyDerivedProduct.property:preservationMethod.value[x]",
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
