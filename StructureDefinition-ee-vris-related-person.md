# RelatedPerson: EE VRIS RelatedPerson - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RelatedPerson: EE VRIS RelatedPerson**

## Resource Profile: RelatedPerson: EE VRIS RelatedPerson 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/vris/StructureDefinition/ee-vris-related-person | *Version*:0.1.0 |
| Draft as of 2026-08-26 | *Computable Name*:EEVRISRelatedPerson |

 
Related person profile for VRIS. (ee Seotud isiku profiil näitab seost patsiendi või retsipiendiga. Doonori ja retsipiendi vahelise SUHTE kirjeldus.) 

**Usages:**

* Refer to this Profile: [CarePlan: EEVRIS Cycle](StructureDefinition-ee-vris-care-plan.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ee.fhir.vris|current/StructureDefinition/StructureDefinition-ee-vris-related-person.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ee-vris-related-person.csv), [Excel](StructureDefinition-ee-vris-related-person.xlsx), [Schematron](StructureDefinition-ee-vris-related-person.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ee-vris-related-person",
  "url" : "https://fhir.ee/vris/StructureDefinition/ee-vris-related-person",
  "version" : "0.1.0",
  "name" : "EEVRISRelatedPerson",
  "title" : "RelatedPerson: EE VRIS RelatedPerson",
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
  "description" : "Related person profile for VRIS. (ee Seotud isiku profiil näitab seost patsiendi või retsipiendiga. Doonori ja retsipiendi vahelise SUHTE kirjeldus.)",
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
    "identity" : "interface",
    "uri" : "http://hl7.org/fhir/interface",
    "name" : "Interface Pattern"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 V2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "RelatedPerson",
  "baseDefinition" : "https://fhir.ee/base/StructureDefinition/ee-related-person",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "RelatedPerson",
      "path" : "RelatedPerson"
    },
    {
      "id" : "RelatedPerson.identifier",
      "path" : "RelatedPerson.identifier",
      "short" : "Contact person identifiers."
    },
    {
      "id" : "RelatedPerson.active",
      "path" : "RelatedPerson.active",
      "min" : 1
    },
    {
      "id" : "RelatedPerson.patient",
      "path" : "RelatedPerson.patient",
      "short" : "(ee Olenevalt doonori tüübist saab seose luua eri aegadel. SIIA VIIDE PATSIENDILE. Patsient võib olla doonor või retsipient.)",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-donor",
        "https://fhir.ee/vris/StructureDefinition/ee-vris-recipient",
        "https://fhir.ee/mpi/StructureDefinition/ee-mpi-patient-verified",
        "https://fhir.ee/vris/StructureDefinition/ee-vris-donor-anonymous"]
      }]
    },
    {
      "id" : "RelatedPerson.relationship",
      "path" : "RelatedPerson.relationship",
      "short" : "Relationship types, including contact type, personal relationship and donor type.",
      "min" : 1
    },
    {
      "id" : "RelatedPerson.relationship:donorClass",
      "path" : "RelatedPerson.relationship",
      "sliceName" : "donorClass",
      "short" : "Specifies the VRIS-specific donor or related person type, such as sperm donor, oocyte dono, embryo donor or partner. (ee Näiteks spermadoonor.KAS SEDA on VAJA?).",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "RelatedPerson.relationship:donortype",
      "path" : "RelatedPerson.relationship",
      "sliceName" : "donortype",
      "short" : "Specifies the relationship between recipient and donor. (ee |Partnerannetaja|Anonüümne doonor||Mitteparnerist doonor| NB! LOENDIT vaja!)",
      "definition" : "Specifies the relationship between recipient and donor. (mitt-partnerannetaja, partnerannetaja jne)",
      "min" : 0,
      "max" : "1",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.ee/ValueSet/vris-doonori-tyyp"
      }
    },
    {
      "id" : "RelatedPerson.name",
      "path" : "RelatedPerson.name",
      "short" : "Contact person name.",
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "RelatedPerson.address",
      "path" : "RelatedPerson.address",
      "max" : "0"
    },
    {
      "id" : "RelatedPerson.photo",
      "path" : "RelatedPerson.photo",
      "max" : "0"
    },
    {
      "id" : "RelatedPerson.period",
      "path" : "RelatedPerson.period",
      "min" : 1
    },
    {
      "id" : "RelatedPerson.communication",
      "path" : "RelatedPerson.communication",
      "max" : "0"
    }]
  }
}

```
