# PackagedProductDefinition: EE VRIS Package - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PackagedProductDefinition: EE VRIS Package**

## Resource Profile: PackagedProductDefinition: EE VRIS Package 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/vris/StructureDefinition/ee-vris-packaged-product-definition | *Version*:0.1.0 |
| Draft as of 2026-08-26 | *Computable Name*:EEVRISPackagedProductDefinition |

 
Profile for packaged doses of reproductive cells. (ee Suguraku pakendite profiil) 

**Usages:**

* Refer to this Profile: [Supplied package reference](StructureDefinition-ee-vris-supplied-package.md)
* Examples for this Profile: [Sperma pakend](PackagedProductDefinition-packaged-sperm1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ee.fhir.vris|current/StructureDefinition/StructureDefinition-ee-vris-packaged-product-definition.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ee-vris-packaged-product-definition.csv), [Excel](StructureDefinition-ee-vris-packaged-product-definition.xlsx), [Schematron](StructureDefinition-ee-vris-packaged-product-definition.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ee-vris-packaged-product-definition",
  "url" : "https://fhir.ee/vris/StructureDefinition/ee-vris-packaged-product-definition",
  "version" : "0.1.0",
  "name" : "EEVRISPackagedProductDefinition",
  "title" : "PackagedProductDefinition: EE VRIS Package",
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
  "description" : "Profile for packaged doses of reproductive cells. (ee Suguraku pakendite profiil)",
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
    "identity" : "idmp",
    "uri" : "https://www.iso.org/obp/ui/#iso:std:iso:11615",
    "name" : "IDMP Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "PackagedProductDefinition",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/PackagedProductDefinition",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "PackagedProductDefinition",
      "path" : "PackagedProductDefinition"
    },
    {
      "id" : "PackagedProductDefinition.packageFor",
      "path" : "PackagedProductDefinition.packageFor",
      "max" : "0"
    },
    {
      "id" : "PackagedProductDefinition.status",
      "path" : "PackagedProductDefinition.status",
      "short" : "(ee KUI viidatud BDP on |unavailable| siis see võiks olla seotud broneeringuga?)"
    },
    {
      "id" : "PackagedProductDefinition.containedItemQuantity",
      "path" : "PackagedProductDefinition.containedItemQuantity",
      "max" : "0"
    },
    {
      "id" : "PackagedProductDefinition.legalStatusOfSupply",
      "path" : "PackagedProductDefinition.legalStatusOfSupply",
      "max" : "0"
    },
    {
      "id" : "PackagedProductDefinition.marketingStatus",
      "path" : "PackagedProductDefinition.marketingStatus",
      "max" : "0"
    },
    {
      "id" : "PackagedProductDefinition.copackagedIndicator",
      "path" : "PackagedProductDefinition.copackagedIndicator",
      "max" : "0"
    },
    {
      "id" : "PackagedProductDefinition.packaging.modifierExtension",
      "path" : "PackagedProductDefinition.packaging.modifierExtension",
      "max" : "0"
    },
    {
      "id" : "PackagedProductDefinition.packaging.componentPart",
      "path" : "PackagedProductDefinition.packaging.componentPart",
      "max" : "0"
    },
    {
      "id" : "PackagedProductDefinition.packaging.quantity",
      "path" : "PackagedProductDefinition.packaging.quantity",
      "max" : "0"
    },
    {
      "id" : "PackagedProductDefinition.packaging.material",
      "path" : "PackagedProductDefinition.packaging.material",
      "max" : "0"
    },
    {
      "id" : "PackagedProductDefinition.packaging.alternateMaterial",
      "path" : "PackagedProductDefinition.packaging.alternateMaterial",
      "max" : "0"
    },
    {
      "id" : "PackagedProductDefinition.packaging.shelfLifeStorage",
      "path" : "PackagedProductDefinition.packaging.shelfLifeStorage",
      "max" : "0"
    },
    {
      "id" : "PackagedProductDefinition.packaging.manufacturer",
      "path" : "PackagedProductDefinition.packaging.manufacturer",
      "max" : "0"
    },
    {
      "id" : "PackagedProductDefinition.packaging.property",
      "path" : "PackagedProductDefinition.packaging.property",
      "max" : "0"
    },
    {
      "id" : "PackagedProductDefinition.packaging.containedItem",
      "path" : "PackagedProductDefinition.packaging.containedItem",
      "short" : "(ee Kogus pakendis ja referents bioloogilisele materjalile)"
    },
    {
      "id" : "PackagedProductDefinition.packaging.containedItem.extension",
      "path" : "PackagedProductDefinition.packaging.containedItem.extension",
      "max" : "0"
    },
    {
      "id" : "PackagedProductDefinition.packaging.containedItem.modifierExtension",
      "path" : "PackagedProductDefinition.packaging.containedItem.modifierExtension",
      "max" : "0"
    },
    {
      "id" : "PackagedProductDefinition.packaging.containedItem.item",
      "path" : "PackagedProductDefinition.packaging.containedItem.item",
      "short" : "(ee SIIA pakendi sisu)",
      "type" : [{
        "code" : "CodeableReference",
        "targetProfile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-sperm",
        "https://fhir.ee/vris/StructureDefinition/ee-vris-embryo",
        "https://fhir.ee/vris/StructureDefinition/ee-vris-oocyte"]
      }]
    },
    {
      "id" : "PackagedProductDefinition.packaging.containedItem.amount",
      "path" : "PackagedProductDefinition.packaging.containedItem.amount",
      "short" : "(ee See on pakend, milles on teatud arv doose. Väljendatud täisarvuna ilma ühikuteta. Siit saab edasi arvutada, mis võeti ja mis jäi?)",
      "min" : 1
    },
    {
      "id" : "PackagedProductDefinition.packaging.packaging",
      "path" : "PackagedProductDefinition.packaging.packaging",
      "max" : "0"
    },
    {
      "id" : "PackagedProductDefinition.characteristic",
      "path" : "PackagedProductDefinition.characteristic",
      "max" : "0"
    }]
  }
}

```
