# Procedure: EE VRIS Procedure - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Procedure: EE VRIS Procedure**

## Resource Profile: Procedure: EE VRIS Procedure 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/vris/StructureDefinition/ee-vris-procedure | *Version*:0.1.0 |
| Draft as of 2026-08-26 | *Computable Name*:EEVRISProcedure |

 
Base profile for Procedure. For each specific procedure use their profiles(freezing, destroying, donating, dispensing etc)… (ee Baasprofiil erinevate protseduuride kirjeldamiseks. (Nt. Külmutamine, annetamine…)) 

**Usages:**

* Derived from this Profile: [Procedure: EE VRIS Cryopreservation](StructureDefinition-ee-vris-procedure-cryopreservation.md), [Procedure: EE VRIS Destruction](StructureDefinition-ee-vris-procedure-destruction.md), [Procedure: EE VRIS Donation](StructureDefinition-ee-vris-procedure-donation.md), [Procedure: EE VRIS Embryo Transfer](StructureDefinition-ee-vris-procedure-embryo-transfer.md)... Show 4 more, [Procedure: EE VRIS Fertilization](StructureDefinition-ee-vris-procedure-fertilization.md), [Procedure: EE VRIS Intrauterine Insemination (IUI)](StructureDefinition-ee-vris-procedure-insemination.md), [Procedure: EE VRIS Oocyte Retrieval](StructureDefinition-ee-vris-procedure-oocyte-retrieval.md) and [Procedure: EE VRIS Preimplantation Genetic Testing](StructureDefinition-ee-vris-procedure-pgt.md)
* Refer to this Profile: [CarePlan: EEVRIS Cycle](StructureDefinition-ee-vris-care-plan.md) and [MedicationAdministration: EE VRIS Medication administred during procedure(s)](StructureDefinition-ee-vris-medication-administration.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ee.fhir.vris|current/StructureDefinition/StructureDefinition-ee-vris-procedure.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ee-vris-procedure.csv), [Excel](StructureDefinition-ee-vris-procedure.xlsx), [Schematron](StructureDefinition-ee-vris-procedure.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ee-vris-procedure",
  "url" : "https://fhir.ee/vris/StructureDefinition/ee-vris-procedure",
  "version" : "0.1.0",
  "name" : "EEVRISProcedure",
  "title" : "Procedure: EE VRIS Procedure",
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
  "description" : "Base profile for Procedure. For each specific procedure use their profiles(freezing, destroying, donating, dispensing etc)... (ee Baasprofiil erinevate protseduuride kirjeldamiseks. (Nt. Külmutamine, annetamine...)) ",
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
  "type" : "Procedure",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Procedure",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Procedure",
      "path" : "Procedure"
    },
    {
      "id" : "Procedure.status",
      "path" : "Procedure.status",
      "short" : "(ee See on kohustuslik!)"
    },
    {
      "id" : "Procedure.statusReason",
      "path" : "Procedure.statusReason",
      "short" : "(ee STAATUSE Põhjuste LOEND?)"
    },
    {
      "id" : "Procedure.category",
      "path" : "Procedure.category",
      "short" : "(ee (laiem) kategooria määrab ära kas tegu on külmutamise, hävitamise, annetamise või väljastamisega. LOENDit VAJA! Igal profiilil fix kood)"
    },
    {
      "id" : "Procedure.code",
      "path" : "Procedure.code",
      "short" : "(ee Siia TÄPNE protseduur, nt kui on tegu IUI-ga. Kui koodi pole siis text-i täpne kirjeldus.)"
    },
    {
      "id" : "Procedure.subject",
      "path" : "Procedure.subject",
      "short" : "(ee Siia tuleb viide KELLELE protseduur tehti.)"
    },
    {
      "id" : "Procedure.focus",
      "path" : "Procedure.focus",
      "short" : "(ee Kui on vaja lisaks subjektile teist patsienti ka. Nt. doonori viide siia, retsipiendi viide subject-i alla?)"
    },
    {
      "id" : "Procedure.occurrence[x]",
      "path" : "Procedure.occurrence[x]",
      "short" : "(ee Kuupäev, millal tegevus toimus)"
    },
    {
      "id" : "Procedure.reason",
      "path" : "Procedure.reason",
      "short" : "(ee Näiteks: Hävitamise põhjus, mitte-siirdamise põhjus jne. LOEND(id?))"
    },
    {
      "id" : "Procedure.bodySite",
      "path" : "Procedure.bodySite",
      "max" : "0"
    },
    {
      "id" : "Procedure.outcome",
      "path" : "Procedure.outcome",
      "short" : "(ee Tegevuse/toimingu/protseduuri/jne jne... TULEMUS. Nb! LOEND)"
    },
    {
      "id" : "Procedure.complication",
      "path" : "Procedure.complication",
      "short" : "(ee TÜSISTUS. Referents Condition-ressursile või loend. NB! LOEND vajalik)"
    },
    {
      "id" : "Procedure.note",
      "path" : "Procedure.note",
      "short" : "(ee lisainfo)"
    },
    {
      "id" : "Procedure.focalDevice",
      "path" : "Procedure.focalDevice",
      "max" : "0"
    },
    {
      "id" : "Procedure.used",
      "path" : "Procedure.used",
      "short" : "(ee Siia referents biolooogilisele materjalile sperma/embrüo/munarakk, mille ümber protseduur toimub)"
    },
    {
      "id" : "Procedure.supportingInfo",
      "path" : "Procedure.supportingInfo",
      "short" : "(ee siia saab panna ükskõik mis referentsi kui vaja! Nt SupplyDelivery?)"
    }]
  }
}

```
