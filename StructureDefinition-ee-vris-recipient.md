# Patient: EE VRIS Recipient - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Patient: EE VRIS Recipient**

## Resource Profile: Patient: EE VRIS Recipient 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/vris/StructureDefinition/ee-vris-recipient | *Version*:0.1.0 |
| Draft as of 2026-08-26 | *Computable Name*:EEVRISRecipient |

 
For use of patients who recieve care and are recipients of biologic material. (ee retsipienti profiil. NB! alati MPI-s registreeritud. NB! Kas partner on retsipient?) 

**Usages:**

* Refer to this Profile: [CarePlan: EEVRIS Cycle](StructureDefinition-ee-vris-care-plan.md), [Condition: EE VRIS Cause of Death](StructureDefinition-ee-vris-cause-of-death.md), [Condition: EE VRIS Comorbidity](StructureDefinition-ee-vris-condition-comorbidity.md), [Condition: EE VRIS Female Fertility Treatment Indication](StructureDefinition-ee-vris-condition-fertility-indication-female.md)... Show 36 more, [Condition: EE VRIS Male Fertility Treatment Indication](StructureDefinition-ee-vris-condition-fertility-indication-male.md), [Condition: EE VRIS Condition Pregnancy](StructureDefinition-ee-vris-condition-pregnancy.md), [Condition: EE VRIS Fertility Treatment Complication](StructureDefinition-ee-vris-condition-treatment-complication.md), [Coverage: EE VRIS Coverage](StructureDefinition-ee-vris-coverage.md), [Encounter: EE VRIS Encounter](StructureDefinition-ee-vris-encounter.md), [EpisodeOfCare: EE VRIS EpisodeOfCare Pregnancy](StructureDefinition-ee-vris-episode-of-care-pregnancy.md), [EpisodeOfCare: EE VRIS Episode of Care](StructureDefinition-ee-vris-episode-of-care.md), [Observation: EE VRIS Attempting to Concieve](StructureDefinition-ee-vris-observation-attempting-to-concieve.md), [Observation: EE VRIS Biochemical Pregnancy](StructureDefinition-ee-vris-observation-biochemical-pregnancy.md), [Observation: EE VRIS Blood Group](StructureDefinition-ee-vris-observation-blood-group.md), [Observation: EE VRIS Clinical Pregnancy](StructureDefinition-ee-vris-observation-clinical-pregnancy.md), [Observation: EE VRIS Embryo Lifecycle Counts](StructureDefinition-ee-vris-observation-embryo-lifecycle-counts.md), [Observation: EE VRIS Fertilization Counts](StructureDefinition-ee-vris-observation-fertilization-counts.md), [Observation: EE VRIS Fetus Reduction](StructureDefinition-ee-vris-observation-fetus-reduction.md), [Observation: EE VRIS Height](StructureDefinition-ee-vris-observation-height.md), [Observation: EE VRIS Obstetric History](StructureDefinition-ee-vris-observation-obstetric-history.md), [Observation: EE VRIS Physical Appearance](StructureDefinition-ee-vris-observation-physical-appearance.md), [Observation: EE VRIS Pregnancy Outcome](StructureDefinition-ee-vris-observation-pregnancy-outcome.md), [Observation: EE VRIS Prenatal Care Discontinued](StructureDefinition-ee-vris-observation-prenatal-care-discontinued.md), [Observation: EE VRIS Prior Fertility Treatment](StructureDefinition-ee-vris-observation-prior-fertility-treatment.md), [Observation: EE VRIS Stimulation Protocol for Embryo Transfer](StructureDefinition-ee-vris-observation-stimulation-protocol-embryo.md), [Observation: EE VRIS Ovarian Stimulation Protocol](StructureDefinition-ee-vris-observation-stimulation-protocol.md), [Observation: EE VRIS Tobacco Use](StructureDefinition-ee-vris-observation-tobacco-use.md), [Observation: EE VRIS Waist](StructureDefinition-ee-vris-observation-waist.md), [Observation: EE VRIS Weight](StructureDefinition-ee-vris-observation-weight.md), [BiologicallyDerivedProduct: EE VRIS Oocyte](StructureDefinition-ee-vris-oocyte.md), [Procedure: EE VRIS Cryopreservation](StructureDefinition-ee-vris-procedure-cryopreservation.md), [Procedure: EE VRIS Destruction](StructureDefinition-ee-vris-procedure-destruction.md), [Procedure: EE VRIS Donation](StructureDefinition-ee-vris-procedure-donation.md), [Procedure: EE VRIS Embryo Transfer](StructureDefinition-ee-vris-procedure-embryo-transfer.md), [Procedure: EE VRIS Fertilization](StructureDefinition-ee-vris-procedure-fertilization.md), [Procedure: EE VRIS Intrauterine Insemination (IUI)](StructureDefinition-ee-vris-procedure-insemination.md), [Procedure: EE VRIS Oocyte Retrieval](StructureDefinition-ee-vris-procedure-oocyte-retrieval.md), [Procedure: EE VRIS Preimplantation Genetic Testing](StructureDefinition-ee-vris-procedure-pgt.md), [RelatedPerson: EE VRIS RelatedPerson](StructureDefinition-ee-vris-related-person.md) and [BiologicallyDerivedProduct: EE VRIS Reproductive Tissue](StructureDefinition-ee-vris-reproductive-tissue.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ee.fhir.vris|current/StructureDefinition/StructureDefinition-ee-vris-recipient.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ee-vris-recipient.csv), [Excel](StructureDefinition-ee-vris-recipient.xlsx), [Schematron](StructureDefinition-ee-vris-recipient.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ee-vris-recipient",
  "url" : "https://fhir.ee/vris/StructureDefinition/ee-vris-recipient",
  "version" : "0.1.0",
  "name" : "EEVRISRecipient",
  "title" : "Patient: EE VRIS Recipient",
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
  "description" : "For use of patients who recieve care and are recipients of biologic material. (ee retsipienti profiil. NB! alati MPI-s registreeritud. NB! Kas partner on retsipient?)",
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
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 V2 Mapping"
  },
  {
    "identity" : "loinc",
    "uri" : "http://loinc.org",
    "name" : "LOINC code for the element"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Patient",
  "baseDefinition" : "https://fhir.ee/mpi/StructureDefinition/ee-mpi-patient-verified",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Patient",
      "path" : "Patient"
    },
    {
      "id" : "Patient.extension",
      "path" : "Patient.extension",
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
      "id" : "Patient.extension:birthPlace",
      "path" : "Patient.extension",
      "sliceName" : "birthPlace",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/patient-birthPlace"]
      }]
    },
    {
      "id" : "Patient.extension:nationality",
      "path" : "Patient.extension",
      "sliceName" : "nationality",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/patient-nationality"]
      }]
    },
    {
      "id" : "Patient.extension:birthSex",
      "path" : "Patient.extension",
      "sliceName" : "birthSex",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-birth-sex"]
      }]
    },
    {
      "id" : "Patient.name:official",
      "path" : "Patient.name",
      "sliceName" : "official",
      "short" : "Official name"
    },
    {
      "id" : "Patient.gender",
      "path" : "Patient.gender",
      "short" : "(ee Sugu. VÕIB erineda sünnisoost!)"
    },
    {
      "id" : "Patient.birthDate.extension:age",
      "path" : "Patient.birthDate.extension",
      "sliceName" : "age",
      "short" : "(ee Vanus on kohustuslik)"
    },
    {
      "id" : "Patient.birthDate.extension:age.value[x]",
      "path" : "Patient.birthDate.extension.value[x]",
      "min" : 1
    }]
  }
}

```
