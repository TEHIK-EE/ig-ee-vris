# CarePlan: EEVRIS Cycle - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CarePlan: EEVRIS Cycle**

## Resource Profile: CarePlan: EEVRIS Cycle 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/vris/StructureDefinition/ee-vris-care-plan | *Version*:0.1.0 |
| Draft as of 2026-08-26 | *Computable Name*:EEVRISCarePlan |

 
Profile for capturing infertility treatment cycle(s) on woman. (ee Ravisükkel. VÄRSKE või KÜLMUTATUD-SULATATUD) 

**Usages:**

* Refer to this Profile: [MedicationAdministration: EE VRIS Medication administred during procedure(s)](StructureDefinition-ee-vris-medication-administration.md)
* Examples for this Profile: [CarePlan/carePlanIvfCycle2025](CarePlan-carePlanIvfCycle2025.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ee.fhir.vris|current/StructureDefinition/StructureDefinition-ee-vris-care-plan.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ee-vris-care-plan.csv), [Excel](StructureDefinition-ee-vris-care-plan.xlsx), [Schematron](StructureDefinition-ee-vris-care-plan.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ee-vris-care-plan",
  "url" : "https://fhir.ee/vris/StructureDefinition/ee-vris-care-plan",
  "version" : "0.1.0",
  "name" : "EEVRISCarePlan",
  "title" : "CarePlan: EEVRIS Cycle",
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
  "description" : "Profile for capturing infertility treatment cycle(s) on woman. (ee Ravisükkel. VÄRSKE või KÜLMUTATUD-SULATATUD)",
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
  "type" : "CarePlan",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/CarePlan",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "CarePlan",
      "path" : "CarePlan"
    },
    {
      "id" : "CarePlan.extension",
      "path" : "CarePlan.extension",
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
      "id" : "CarePlan.extension:cycleDiscontinuationReason",
      "path" : "CarePlan.extension",
      "sliceName" : "cycleDiscontinuationReason",
      "short" : "(ee Täidetakse kui status = revoked. Katkestamise põhjus.)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-cycle-discontinuation-reason"]
      }]
    },
    {
      "id" : "CarePlan.extension:coverage",
      "path" : "CarePlan.extension",
      "sliceName" : "coverage",
      "short" : "(ee KAS on Tervisekassa poolt kompenseeritud või mitte. KAS kasutame seda või viidet Coverage-profiilile?!!)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-terk-coverage"]
      }]
    },
    {
      "id" : "CarePlan.instantiatesCanonical",
      "path" : "CarePlan.instantiatesCanonical",
      "max" : "0"
    },
    {
      "id" : "CarePlan.instantiatesUri",
      "path" : "CarePlan.instantiatesUri",
      "max" : "0"
    },
    {
      "id" : "CarePlan.basedOn",
      "path" : "CarePlan.basedOn",
      "short" : "(ee KAS SIIA viide varasematele tsükklitele? SEOS?)"
    },
    {
      "id" : "CarePlan.replaces",
      "path" : "CarePlan.replaces",
      "short" : "(ee Siia tuleb viide eelmisele tsükklile mida praegune tsükkel asendab.)"
    },
    {
      "id" : "CarePlan.partOf",
      "path" : "CarePlan.partOf",
      "short" : "(ee Siia tuleb viide kui tsükkel on osa SUUREMASt peamisest viljatusraviplaanist.)"
    },
    {
      "id" : "CarePlan.category",
      "path" : "CarePlan.category",
      "short" : "(ee Siia LOEND, mis tüüpi ravitsükkel on. |Värske tsükkel|Külmutatud embrüo siirdamine|Emakasisene inseminatsioon (IUI))",
      "min" : 1
    },
    {
      "id" : "CarePlan.title",
      "path" : "CarePlan.title",
      "short" : "(ee Vabatekstiline inimloetav NIMETUS tsüklile.)"
    },
    {
      "id" : "CarePlan.subject",
      "path" : "CarePlan.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-recipient",
        "https://fhir.ee/mpi/StructureDefinition/ee-mpi-patient-verified"]
      }]
    },
    {
      "id" : "CarePlan.encounter",
      "path" : "CarePlan.encounter",
      "short" : "(ee Viide VISIIDILE/KONTAKTILE. Ja läbi Encounterite tekib (aastaid?) kestev EoC, mis seob kõik kokku. Encounter-EoC-teenus, siis kui valmis!)",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-encounter"]
      }]
    },
    {
      "id" : "CarePlan.period",
      "path" : "CarePlan.period",
      "short" : "(ee Tsükli alguskuupäev on kohustuslik. KAS lõppu pole vaja?)"
    },
    {
      "id" : "CarePlan.period.start",
      "path" : "CarePlan.period.start",
      "min" : 1
    },
    {
      "id" : "CarePlan.created",
      "path" : "CarePlan.created",
      "short" : "(ee KAS sed on vaja, dokumenteerimise alguspäev?)"
    },
    {
      "id" : "CarePlan.custodian",
      "path" : "CarePlan.custodian",
      "short" : "(ee KES vastutab, ehk viide arstile, SPD-st!)"
    },
    {
      "id" : "CarePlan.contributor",
      "path" : "CarePlan.contributor",
      "max" : "0"
    },
    {
      "id" : "CarePlan.careTeam",
      "path" : "CarePlan.careTeam",
      "max" : "0"
    },
    {
      "id" : "CarePlan.addresses",
      "path" : "CarePlan.addresses",
      "type" : [{
        "code" : "CodeableReference",
        "targetProfile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-condition-fertility-indication-female",
        "https://fhir.ee/vris/StructureDefinition/ee-vris-condition-fertility-indication-male",
        "https://fhir.ee/vris/StructureDefinition/ee-vris-condition-pregnancy",
        "https://fhir.ee/vris/StructureDefinition/ee-vris-condition-treatment-complication"]
      }]
    },
    {
      "id" : "CarePlan.supportingInfo",
      "path" : "CarePlan.supportingInfo",
      "short" : "(ee Partneri viide, RelatedPerson või Patient)",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-related-person",
        "https://fhir.ee/vris/StructureDefinition/ee-vris-recipient",
        "https://fhir.ee/vris/StructureDefinition/ee-vris-donor",
        "https://fhir.ee/vris/StructureDefinition/ee-vris-donor-anonymous"]
      }]
    },
    {
      "id" : "CarePlan.goal",
      "path" : "CarePlan.goal",
      "max" : "0"
    },
    {
      "id" : "CarePlan.activity",
      "path" : "CarePlan.activity",
      "short" : "(ee Siin on (kõik) protseduurid, mida viljastumiseks TEHTI. Lisaks viited ravimitele MedicationAdministration profiiliga?)"
    },
    {
      "id" : "CarePlan.activity.performedActivity",
      "path" : "CarePlan.activity.performedActivity",
      "slicing" : {
        "discriminator" : [{
          "type" : "profile",
          "path" : "reference.resolve()"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "CarePlan.activity.performedActivity:medicationAdministration",
      "path" : "CarePlan.activity.performedActivity",
      "sliceName" : "medicationAdministration",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableReference",
        "targetProfile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-medication-administration"]
      }]
    },
    {
      "id" : "CarePlan.activity.performedActivity:procedure",
      "path" : "CarePlan.activity.performedActivity",
      "sliceName" : "procedure",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableReference",
        "targetProfile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-procedure",
        "https://fhir.ee/vris/StructureDefinition/ee-vris-procedure-embryo-transfer",
        "https://fhir.ee/vris/StructureDefinition/ee-vris-procedure-fertilization",
        "https://fhir.ee/vris/StructureDefinition/ee-vris-procedure-pgt",
        "https://fhir.ee/vris/StructureDefinition/ee-vris-procedure-oocyte-retrieval",
        "https://fhir.ee/vris/StructureDefinition/ee-vris-procedure-insemination"]
      }]
    },
    {
      "id" : "CarePlan.activity.performedActivity:observation",
      "path" : "CarePlan.activity.performedActivity",
      "sliceName" : "observation",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableReference",
        "targetProfile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-observation-stimulation-protocol",
        "https://fhir.ee/vris/StructureDefinition/ee-vris-observation-stimulation-protocol-embryo",
        "https://fhir.ee/vris/StructureDefinition/ee-vris-observation-fertilization-counts",
        "https://fhir.ee/vris/StructureDefinition/ee-vris-observation-neonatal-intensive-care",
        "https://fhir.ee/vris/StructureDefinition/ee-vris-observation-embryo-lifecycle-counts"]
      }]
    },
    {
      "id" : "CarePlan.activity.plannedActivityReference",
      "path" : "CarePlan.activity.plannedActivityReference",
      "max" : "0"
    },
    {
      "id" : "CarePlan.note",
      "path" : "CarePlan.note",
      "short" : "(ee Kui on vaja veel midagi lisada.)"
    }]
  }
}

```
