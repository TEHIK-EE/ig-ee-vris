# SupplyDelivery: EE VRIS Biological material movement - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SupplyDelivery: EE VRIS Biological material movement**

## Resource Profile: SupplyDelivery: EE VRIS Biological material movement 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/vris/StructureDefinition/ee-vris-supply-delivery | *Version*:0.1.0 |
| Draft as of 2026-08-26 | *Computable Name*:EEVRISSupplyDelivery |

 
Use this profile for describing when the biological material (sperm, oocyte, embryo) is transferred from one place to another. (ee Eestis annetatud bioloogiline materjali (sperma, munarakud, embrüo) liikumine TTO-sse/sealt välja 

**Usages:**

* Examples for this Profile: [SupplyDelivery/supplyDeliverySperm1](SupplyDelivery-supplyDeliverySperm1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ee.fhir.vris|current/StructureDefinition/StructureDefinition-ee-vris-supply-delivery.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ee-vris-supply-delivery.csv), [Excel](StructureDefinition-ee-vris-supply-delivery.xlsx), [Schematron](StructureDefinition-ee-vris-supply-delivery.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ee-vris-supply-delivery",
  "url" : "https://fhir.ee/vris/StructureDefinition/ee-vris-supply-delivery",
  "version" : "0.1.0",
  "name" : "EEVRISSupplyDelivery",
  "title" : "SupplyDelivery: EE VRIS Biological material movement",
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
  "description" : "Use this profile for describing when the biological material (sperm, oocyte, embryo) is transferred from one place to another. (ee Eestis annetatud bioloogiline materjali (sperma, munarakud, embrüo) liikumine TTO-sse/sealt välja",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "EE",
      "display" : "Estonia"
    }]
  }],
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
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
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 V2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "SupplyDelivery",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/SupplyDelivery",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "SupplyDelivery",
      "path" : "SupplyDelivery"
    },
    {
      "id" : "SupplyDelivery.extension",
      "path" : "SupplyDelivery.extension",
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
      "id" : "SupplyDelivery.extension:suppliedPackage",
      "path" : "SupplyDelivery.extension",
      "sliceName" : "suppliedPackage",
      "short" : "(ee KUI on vaja viidata pakendile. Äkki saaks identifikaatorite järgi viidata? Või alati on üks BDP 1 pakend? Arutelukoht!)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-supplied-package"]
      }]
    },
    {
      "id" : "SupplyDelivery.identifier",
      "path" : "SupplyDelivery.identifier",
      "short" : "(ee Liikumise identifikaator. Selle järgi saab jälgida materjali. Varasemad materjali liikumised tulevad selle kaudu.)"
    },
    {
      "id" : "SupplyDelivery.basedOn",
      "path" : "SupplyDelivery.basedOn",
      "max" : "0"
    },
    {
      "id" : "SupplyDelivery.partOf",
      "path" : "SupplyDelivery.partOf",
      "max" : "0"
    },
    {
      "id" : "SupplyDelivery.status",
      "path" : "SupplyDelivery.status",
      "short" : "(ee Võtan vastu checkbox? |in-progress| = pole veel vastu võetud; |completed| = vastu võetud; |abandoned| = tagasilükatud/mitte vastu võetud)"
    },
    {
      "id" : "SupplyDelivery.patient",
      "path" : "SupplyDelivery.patient",
      "short" : "(ee KAS seda on vaja? Liigub ainult materjal ja materjali küljes on viide KELLELE)"
    },
    {
      "id" : "SupplyDelivery.type",
      "path" : "SupplyDelivery.type",
      "short" : "Always biologicallyderivedproduct",
      "patternCodeableConcept" : {
        "coding" : [{
          "code" : "biologicallyderivedproduct"
        }]
      }
    },
    {
      "id" : "SupplyDelivery.suppliedItem",
      "path" : "SupplyDelivery.suppliedItem",
      "short" : "(ee MIDA liigutatakse. Bioloogiline materjal. KAS on vaja viidet ka pakendile või piisab BDP viitest?)",
      "min" : 1
    },
    {
      "id" : "SupplyDelivery.suppliedItem.quantity",
      "path" : "SupplyDelivery.suppliedItem.quantity",
      "short" : "(ee Kogus, dooside arv, mida liigutatakse.)"
    },
    {
      "id" : "SupplyDelivery.suppliedItem.item[x]",
      "path" : "SupplyDelivery.suppliedItem.item[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "SupplyDelivery.suppliedItem.item[x]:itemReference",
      "path" : "SupplyDelivery.suppliedItem.item[x]",
      "sliceName" : "itemReference",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-embryo",
        "https://fhir.ee/vris/StructureDefinition/ee-vris-sperm",
        "https://fhir.ee/vris/StructureDefinition/ee-vris-oocyte"]
      }]
    },
    {
      "id" : "SupplyDelivery.occurrence[x]",
      "path" : "SupplyDelivery.occurrence[x]",
      "short" : "(ee Üle andmise/vastu võtmise kuupäev. AEG, millal sündmus aset leiab)",
      "min" : 1
    },
    {
      "id" : "SupplyDelivery.supplier",
      "path" : "SupplyDelivery.supplier",
      "short" : "(ee PÄRITOLU. KES saadab. Viide SPD Organizationile, mille alt tuleb ka aadress ning riik.)",
      "min" : 1
    },
    {
      "id" : "SupplyDelivery.supplier.reference",
      "path" : "SupplyDelivery.supplier.reference",
      "short" : "(ee VÕI referents SPD Organizationile????)"
    },
    {
      "id" : "SupplyDelivery.supplier.display",
      "path" : "SupplyDelivery.supplier.display",
      "short" : "(ee TEKSTIna riigikood VÕI referents SDP Organizationile????)"
    },
    {
      "id" : "SupplyDelivery.destination",
      "path" : "SupplyDelivery.destination",
      "short" : "(ee SIHTKOHT. MIS asukoht vastu võtab)",
      "min" : 1
    },
    {
      "id" : "SupplyDelivery.receiver",
      "path" : "SupplyDelivery.receiver",
      "short" : "(ee KES või MIS organisatsioon vastu võtab. Kas kohustuslik on Organization või Location, mis vastu võtab?)"
    },
    {
      "id" : "SupplyDelivery.receiver.reference",
      "path" : "SupplyDelivery.receiver.reference",
      "short" : "(ee VIIDE SPD-le)"
    },
    {
      "id" : "SupplyDelivery.receiver.display",
      "path" : "SupplyDelivery.receiver.display",
      "short" : "(ee KUI viide puudub, tekstina)"
    }]
  }
}

```
