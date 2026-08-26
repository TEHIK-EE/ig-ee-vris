# Patient: EE VRIS Anonymous Patient - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Patient: EE VRIS Anonymous Patient**

## Resource Profile: Patient: EE VRIS Anonymous Patient 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/vris/StructureDefinition/ee-vris-donor-anonymous | *Version*:0.1.0 |
| Draft as of 2026-08-26 | *Computable Name*:EEVRISDonorAnonymous |

 
Anonymous donor in the Estonian VRIS fertility system. (ee Anonüümne (välismaa) doonor VRIS-is.) 

**Usages:**

* Refer to this Profile: [CarePlan: EEVRIS Cycle](StructureDefinition-ee-vris-care-plan.md), [Condition: EE VRIS Cause of Death](StructureDefinition-ee-vris-cause-of-death.md), [Condition: EE VRIS Fertility Treatment Complication](StructureDefinition-ee-vris-condition-treatment-complication.md), [Encounter: EE VRIS Encounter](StructureDefinition-ee-vris-encounter.md)... Show 21 more, [EpisodeOfCare: EE VRIS Episode of Care](StructureDefinition-ee-vris-episode-of-care.md), [Observation: EE VRIS Biochemical Pregnancy](StructureDefinition-ee-vris-observation-biochemical-pregnancy.md), [Observation: EE VRIS Blood Group](StructureDefinition-ee-vris-observation-blood-group.md), [Observation: EE VRIS Clinical Pregnancy](StructureDefinition-ee-vris-observation-clinical-pregnancy.md), [Observation: EE VRIS Education Level](StructureDefinition-ee-vris-observation-education-level.md), [Observation: EE VRIS Embryo Lifecycle Counts](StructureDefinition-ee-vris-observation-embryo-lifecycle-counts.md), [Observation: EE VRIS Fertilization Counts](StructureDefinition-ee-vris-observation-fertilization-counts.md), [Observation: EE VRIS Height](StructureDefinition-ee-vris-observation-height.md), [Observation: EE VRIS Marital Status](StructureDefinition-ee-vris-observation-marital-status.md), [Observation: EE VRIS Physical Appearance](StructureDefinition-ee-vris-observation-physical-appearance.md), [Observation: EE VRIS Tobacco Use](StructureDefinition-ee-vris-observation-tobacco-use.md), [Observation: EE VRIS Waist](StructureDefinition-ee-vris-observation-waist.md), [Observation: EE VRIS Weight](StructureDefinition-ee-vris-observation-weight.md), [Procedure: EE VRIS Cryopreservation](StructureDefinition-ee-vris-procedure-cryopreservation.md), [Procedure: EE VRIS Destruction](StructureDefinition-ee-vris-procedure-destruction.md), [Procedure: EE VRIS Donation](StructureDefinition-ee-vris-procedure-donation.md), [Procedure: EE VRIS Fertilization](StructureDefinition-ee-vris-procedure-fertilization.md), [Procedure: EE VRIS Oocyte Retrieval](StructureDefinition-ee-vris-procedure-oocyte-retrieval.md), [Procedure: EE VRIS Preimplantation Genetic Testing](StructureDefinition-ee-vris-procedure-pgt.md), [RelatedPerson: EE VRIS RelatedPerson](StructureDefinition-ee-vris-related-person.md) and [BiologicallyDerivedProduct: EE VRIS Sperm](StructureDefinition-ee-vris-sperm.md)
* Examples for this Profile: [Patient/patientDonorunknown1](Patient-patientDonorunknown1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ee.fhir.vris|current/StructureDefinition/StructureDefinition-ee-vris-donor-anonymous.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ee-vris-donor-anonymous.csv), [Excel](StructureDefinition-ee-vris-donor-anonymous.xlsx), [Schematron](StructureDefinition-ee-vris-donor-anonymous.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ee-vris-donor-anonymous",
  "url" : "https://fhir.ee/vris/StructureDefinition/ee-vris-donor-anonymous",
  "version" : "0.1.0",
  "name" : "EEVRISDonorAnonymous",
  "title" : "Patient: EE VRIS Anonymous Patient",
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
  "description" : "Anonymous donor in the Estonian VRIS fertility system. (ee Anonüümne (välismaa) doonor VRIS-is.)",
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
  "baseDefinition" : "https://fhir.ee/mpi/StructureDefinition/ee-mpi-patient-unknown",
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
      "id" : "Patient.extension:role",
      "path" : "Patient.extension",
      "sliceName" : "role",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-role"]
      }]
    },
    {
      "id" : "Patient.extension:nationality",
      "path" : "Patient.extension",
      "sliceName" : "nationality",
      "short" : "(ee RAHVUS)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/patient-nationality"]
      }]
    },
    {
      "id" : "Patient.extension:additionalIdentifier",
      "path" : "Patient.extension",
      "sliceName" : "additionalIdentifier",
      "short" : "(ee Kui on vaja rohkem kui 1 identifikaatorit)",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-additional-identifier"]
      }]
    },
    {
      "id" : "Patient.identifier",
      "path" : "Patient.identifier",
      "short" : "(ee Anonüümse patsiendi identifikaator, MR number või kliinikusisene kood)"
    },
    {
      "id" : "Patient.name",
      "path" : "Patient.name"
    },
    {
      "id" : "Patient.name.text",
      "path" : "Patient.name.text",
      "short" : "(ee Anonüümse patsiendi hüüdnimi või kirjeldus. KAS selle võiks süsteem ise täita?)"
    },
    {
      "id" : "Patient.gender",
      "path" : "Patient.gender",
      "short" : "Sex (ee Sugu kohustuslik)"
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
    },
    {
      "id" : "Patient.birthDate.value",
      "path" : "Patient.birthDate.value",
      "short" : "(ee Sünniaeg, ei ole kohustuslik.)"
    },
    {
      "id" : "Patient.address",
      "path" : "Patient.address",
      "short" : "ee RIIK on kohustuslik"
    }]
  }
}

```
