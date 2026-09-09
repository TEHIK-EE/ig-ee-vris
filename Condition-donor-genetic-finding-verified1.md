# donor-genetic-finding-verified1 - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **donor-genetic-finding-verified1**

## Example Condition: donor-genetic-finding-verified1

Profile: [Condition: EE VRIS Donor Genetic Finding](StructureDefinition-ee-vris-condition-donor-genetic-finding.md)

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**category**: Autosoom-retsessiivse geenivariandi kandlus

**code**: CFTR geeni c.1521_1523delCTT (p.Phe508del) variant — tsüstilise fibroosi kandlus

**subject**: [Leena Lööve (official) Female, DoB: 1983-01-11 ( https://fhir.ee/sid/pid/est/ni#38301105216)](Patient-patientFemale.md)

**note**: 

> 

Doonori lapsel diagnoositi tsüstiline fibroos. Doonori DNA-test kinnitas CFTR geeni heterosügootset kandlust.




## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "donor-genetic-finding-verified1",
  "meta" : {
    "profile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-condition-donor-genetic-finding"]
  },
  "clinicalStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
      "code" : "active"
    }]
  },
  "verificationStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
      "code" : "confirmed",
      "display" : "Confirmed"
    }]
  },
  "category" : [{
    "coding" : [{
      "system" : "https://fhir.ee/CodeSystem/vris-geneetilise-leiu-tyyp",
      "code" : "autosomal-recessive-carrier",
      "display" : "Autosoom-retsessiivse geenivariandi kandlus"
    }]
  }],
  "code" : {
    "text" : "CFTR geeni c.1521_1523delCTT (p.Phe508del) variant — tsüstilise fibroosi kandlus"
  },
  "subject" : {
    "reference" : "Patient/patientFemale"
  },
  "note" : [{
    "text" : "Doonori lapsel diagnoositi tsüstiline fibroos. Doonori DNA-test kinnitas CFTR geeni heterosügootset kandlust."
  }]
}

```
