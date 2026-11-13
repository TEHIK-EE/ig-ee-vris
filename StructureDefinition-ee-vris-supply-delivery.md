# SupplyDelivery: EE VRIS Biological material movement - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SupplyDelivery: EE VRIS Biological material movement**

## Resource Profile: SupplyDelivery: EE VRIS Biological material movement 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/vris/StructureDefinition/ee-vris-supply-delivery | *Version*:0.1.0 |
| Draft as of 2026-11-13 | *Computable Name*:EEVRISSupplyDelivery |

 
Use this profile for describing when the biological material (sperm, oocyte, embryo) is transferred from one place to another. (ee Eestis annetatud bioloogiline materjali (sperma, munarakud, embrüo) liikumine TTO-sse/sealt välja 

**Usages:**

* Examples for this Profile: [SupplyDelivery/supplyDeliverySperm1](SupplyDelivery-supplyDeliverySperm1.md) and [SupplyDelivery/supplydeliveryEmbryo1](SupplyDelivery-supplydeliveryEmbryo1.md)

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
  "date" : "2026-11-13T13:10:42+00:00",
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
      "id" : "SupplyDelivery.extension:destinationCountry",
      "path" : "SupplyDelivery.extension",
      "sliceName" : "destinationCountry",
      "short" : "(ee KUI bioloogiline materjal saadetakse VÄLISRIIKI siis selle laienduse kaudu tuleb riigi kood.)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-destination-country"]
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
      "short" : "(ee Ühes üleandmises võib olla vastuvõetud ja enne vastuvõtmisotsust tagasi võetud pakendeid st ei ole AINULT ühe pakendi kohta. |in-progress| = väljasaatmine on registreeritud, otsust pole tehtud; end puudub!; |completed| = vastuvõttev TTO on teinud otsuse, sõltumata sellest, mitu pakendit vastu võeti; end on otsuse aeg.; |abandoned| = saatev TTO võttis saadetise tagasi enne vastuvõtva TTO otsust; end on tagasivõtmise otsuse aeg.",
      "min" : 1
    },
    {
      "id" : "SupplyDelivery.patient",
      "path" : "SupplyDelivery.patient",
      "short" : "(ee Liigub ainult materjal ja materjali küljes on viide KELLELE)",
      "max" : "0"
    },
    {
      "id" : "SupplyDelivery.type",
      "path" : "SupplyDelivery.type",
      "short" : "Always biologicallyderivedproduct",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "code" : "biologicallyderivedproduct"
        }]
      }
    },
    {
      "id" : "SupplyDelivery.suppliedItem",
      "path" : "SupplyDelivery.suppliedItem",
      "short" : "(ee MIDA liigutatakse. Bioloogiline materjal. Iga pakend on omaette item)",
      "min" : 1
    },
    {
      "id" : "SupplyDelivery.suppliedItem.quantity",
      "path" : "SupplyDelivery.suppliedItem.quantity",
      "max" : "0"
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
        "https://fhir.ee/vris/StructureDefinition/ee-vris-oocyte",
        "https://fhir.ee/vris/StructureDefinition/ee-vris-reproductive-tissue"]
      }]
    },
    {
      "id" : "SupplyDelivery.occurrence[x]",
      "path" : "SupplyDelivery.occurrence[x]",
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
      "id" : "SupplyDelivery.occurrence[x]:occurrencePeriod",
      "path" : "SupplyDelivery.occurrence[x]",
      "sliceName" : "occurrencePeriod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }]
    },
    {
      "id" : "SupplyDelivery.occurrence[x]:occurrencePeriod.start",
      "path" : "SupplyDelivery.occurrence[x].start",
      "short" : "(ee Väljasaatmise aeg on kohustuslik üleandmise algatamisel.)",
      "min" : 1
    },
    {
      "id" : "SupplyDelivery.occurrence[x]:occurrencePeriod.end",
      "path" : "SupplyDelivery.occurrence[x].end",
      "short" : "(ee Üleandmise lõpetamise aeg, mis täidetakse vastuvõtva TTO otsuse või saatva TTO tagasivõtmise registreerimisel.)"
    },
    {
      "id" : "SupplyDelivery.supplier",
      "path" : "SupplyDelivery.supplier",
      "short" : "(ee TTO, kes üleandmise teostab. Viide SPD Organizationile äriregistri koodi kaudu.)",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Organization"]
      }]
    },
    {
      "id" : "SupplyDelivery.supplier.identifier",
      "path" : "SupplyDelivery.supplier.identifier",
      "min" : 1
    },
    {
      "id" : "SupplyDelivery.supplier.identifier.system",
      "path" : "SupplyDelivery.supplier.identifier.system",
      "min" : 1,
      "fixedUri" : "https://fhir.ee/sid/org/est/br"
    },
    {
      "id" : "SupplyDelivery.supplier.identifier.value",
      "path" : "SupplyDelivery.supplier.identifier.value",
      "short" : "(ee Äriregistri kood.)",
      "min" : 1
    },
    {
      "id" : "SupplyDelivery.destination",
      "path" : "SupplyDelivery.destination",
      "short" : "(ee Supplier-receiver katab saatja-vastuvõtja ära, seda elementi ei kasuta. KUI on vaja konkreetset asukohta Location kasutada, siis võib selle siia panna.)"
    },
    {
      "id" : "SupplyDelivery.receiver",
      "path" : "SupplyDelivery.receiver",
      "short" : "(ee KES või MIS organisatsioon vastu võtab. Kas kohustuslik on Organization või Location, mis vastu võtab?)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Organization"]
      }]
    },
    {
      "id" : "SupplyDelivery.receiver.identifier.system",
      "path" : "SupplyDelivery.receiver.identifier.system",
      "min" : 1
    },
    {
      "id" : "SupplyDelivery.receiver.identifier.value",
      "path" : "SupplyDelivery.receiver.identifier.value",
      "min" : 1
    },
    {
      "id" : "SupplyDelivery.receiver.display",
      "path" : "SupplyDelivery.receiver.display",
      "short" : "(ee KUI viide puudub, tekstina. Näiteks välismaise vastuvõtja riik tekstina.)"
    }]
  }
}

```
