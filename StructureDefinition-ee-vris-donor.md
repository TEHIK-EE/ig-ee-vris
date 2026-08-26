# Patient: EE VRIS Donor - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Patient: EE VRIS Donor**

## Resource Profile: Patient: EE VRIS Donor 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/vris/StructureDefinition/ee-vris-donor | *Version*:0.1.0 |
| Draft as of 2026-08-26 | *Computable Name*:EEVRISDonor |

 
For use of donors. (ee Doonori profiil, kasutamiseks. Anonüümsete ja anonüümsete-välismaiste doonorite puhul on TEINE PROFIIL!) 

**Usages:**

* Refer to this Profile: [CarePlan: EEVRIS Cycle](StructureDefinition-ee-vris-care-plan.md), [Condition: EE VRIS Cause of Death](StructureDefinition-ee-vris-cause-of-death.md), [Condition: EE VRIS Comorbidity](StructureDefinition-ee-vris-condition-comorbidity.md), [Condition: EE VRIS Donor Genetic Finding](StructureDefinition-ee-vris-condition-donor-genetic-finding.md)... Show 31 more, [Condition: EE VRIS Female Fertility Treatment Indication](StructureDefinition-ee-vris-condition-fertility-indication-female.md), [Condition: EE VRIS Male Fertility Treatment Indication](StructureDefinition-ee-vris-condition-fertility-indication-male.md), [Condition: EE VRIS Fertility Treatment Complication](StructureDefinition-ee-vris-condition-treatment-complication.md), [Related person reference](StructureDefinition-ee-vris-donor-reference.md), [BiologicallyDerivedProduct: EE VRIS Embryo](StructureDefinition-ee-vris-embryo.md), [Encounter: EE VRIS Encounter](StructureDefinition-ee-vris-encounter.md), [EpisodeOfCare: EE VRIS Episode of Care](StructureDefinition-ee-vris-episode-of-care.md), [Observation: EE VRIS Biochemical Pregnancy](StructureDefinition-ee-vris-observation-biochemical-pregnancy.md), [Observation: EE VRIS Blood Group](StructureDefinition-ee-vris-observation-blood-group.md), [Observation: EE VRIS Clinical Pregnancy](StructureDefinition-ee-vris-observation-clinical-pregnancy.md), [Observation: EE VRIS Education Level](StructureDefinition-ee-vris-observation-education-level.md), [Observation: EE VRIS Embryo Lifecycle Counts](StructureDefinition-ee-vris-observation-embryo-lifecycle-counts.md), [Observation: EE VRIS Fertilization Counts](StructureDefinition-ee-vris-observation-fertilization-counts.md), [Observation: EE VRIS Height](StructureDefinition-ee-vris-observation-height.md), [Observation: EE VRIS Marital Status](StructureDefinition-ee-vris-observation-marital-status.md), [Observation: EE VRIS Physical Appearance](StructureDefinition-ee-vris-observation-physical-appearance.md), [Observation: EE VRIS Stimulation Protocol for Embryo Transfer](StructureDefinition-ee-vris-observation-stimulation-protocol-embryo.md), [Observation: EE VRIS Ovarian Stimulation Protocol](StructureDefinition-ee-vris-observation-stimulation-protocol.md), [Observation: EE VRIS Tobacco Use](StructureDefinition-ee-vris-observation-tobacco-use.md), [Observation: EE VRIS Waist](StructureDefinition-ee-vris-observation-waist.md), [Observation: EE VRIS Weight](StructureDefinition-ee-vris-observation-weight.md), [BiologicallyDerivedProduct: EE VRIS Oocyte](StructureDefinition-ee-vris-oocyte.md), [Procedure: EE VRIS Cryopreservation](StructureDefinition-ee-vris-procedure-cryopreservation.md), [Procedure: EE VRIS Destruction](StructureDefinition-ee-vris-procedure-destruction.md), [Procedure: EE VRIS Donation](StructureDefinition-ee-vris-procedure-donation.md), [Procedure: EE VRIS Fertilization](StructureDefinition-ee-vris-procedure-fertilization.md), [Procedure: EE VRIS Oocyte Retrieval](StructureDefinition-ee-vris-procedure-oocyte-retrieval.md), [Procedure: EE VRIS Preimplantation Genetic Testing](StructureDefinition-ee-vris-procedure-pgt.md), [RelatedPerson: EE VRIS RelatedPerson](StructureDefinition-ee-vris-related-person.md), [BiologicallyDerivedProduct: EE VRIS Reproductive Tissue](StructureDefinition-ee-vris-reproductive-tissue.md) and [BiologicallyDerivedProduct: EE VRIS Sperm](StructureDefinition-ee-vris-sperm.md)
* Examples for this Profile: [Patient/patientDonorMale](Patient-patientDonorMale.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ee.fhir.vris|current/StructureDefinition/StructureDefinition-ee-vris-donor.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ee-vris-donor.csv), [Excel](StructureDefinition-ee-vris-donor.xlsx), [Schematron](StructureDefinition-ee-vris-donor.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ee-vris-donor",
  "url" : "https://fhir.ee/vris/StructureDefinition/ee-vris-donor",
  "version" : "0.1.0",
  "name" : "EEVRISDonor",
  "title" : "Patient: EE VRIS Donor",
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
  "description" : "For use of donors. (ee Doonori profiil, kasutamiseks. Anonüümsete ja anonüümsete-välismaiste doonorite puhul on TEINE PROFIIL!)",
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
      "id" : "Patient.identifier",
      "path" : "Patient.identifier",
      "short" : "Identifier for donor (ee DOONORIKOOD. Kasuta erinevaid system-urisi, et eristada. IRCC uri vajaks lisamist patisendi identifikaatorite domeeni!)"
    },
    {
      "id" : "Patient.identifier.type",
      "path" : "Patient.identifier.type",
      "short" : "(ee Kas kasutada doonorite puhul DR Donor registration numberit eristamaks teistest? seda saaks kasutada parameetrina (?) otsingutes, kui on vaja otsida doonoreid?)",
      "patternCodeableConcept" : {
        "coding" : [{
          "code" : "DR"
        }]
      }
    },
    {
      "id" : "Patient.name",
      "path" : "Patient.name",
      "short" : "Name.(ee Doonori nimi)"
    },
    {
      "id" : "Patient.gender",
      "path" : "Patient.gender",
      "short" : "(ee Sugu. Võib erineda sünnisoost!)"
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
      "id" : "Patient.deceased[x]",
      "path" : "Patient.deceased[x]",
      "short" : "(ee Surnud (boolean) ja surmaaeg. Surma põhjus on eraldi observation? Kas seda on vaja?)"
    },
    {
      "id" : "Patient.maritalStatus",
      "path" : "Patient.maritalStatus",
      "short" : "(ee Perekonnaseis. SEE TULEB ERALDI observationi kaudu, mitte siit!)"
    },
    {
      "id" : "Patient.link",
      "path" : "Patient.link",
      "short" : "(ee NB! Seosed MPI kirje ja suhete vahel teha PIGEM identifikaatorite pärimise kaudu. NB! Uurikuidas MPI link töötab, kirjas on et EI salvestata, kas see mõjutab VRIS?)"
    }]
  }
}

```
