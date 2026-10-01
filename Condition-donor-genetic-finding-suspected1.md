# donor-genetic-finding-suspected1 - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **donor-genetic-finding-suspected1**

## Example Condition: donor-genetic-finding-suspected1

Profile: [Condition: EE VRIS Donor Genetic Finding](StructureDefinition-ee-vris-condition-donor-genetic-finding.md)

**clinicalStatus**: Active

**verificationStatus**: Provisional

**category**: Päriliku haiguse kahtlus

**code**: Kahtlustatav spinaalne lihasatroofia (SMA), doonori lapsel on ilmnenud sümptomid

**subject**: [Ygrek Mister (official) Male, DoB: 1983-01-11 ( DR)](Patient-patientDonorMale.md)

**note**: 

> 

Doonori lapsel tekkinud lihasnõrkus, SMA kahtlus. DNA-test veel pooleli.




## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "donor-genetic-finding-suspected1",
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
      "code" : "provisional",
      "display" : "Provisional"
    }]
  },
  "category" : [{
    "coding" : [{
      "system" : "https://fhir.ee/CodeSystem/vris-geneetilise-leiu-tyyp",
      "code" : "hereditary-disease-suspicion",
      "display" : "Päriliku haiguse kahtlus"
    }]
  }],
  "code" : {
    "text" : "Kahtlustatav spinaalne lihasatroofia (SMA), doonori lapsel on ilmnenud sümptomid"
  },
  "subject" : {
    "reference" : "Patient/patientDonorMale"
  },
  "note" : [{
    "text" : "Doonori lapsel tekkinud lihasnõrkus, SMA kahtlus. DNA-test veel pooleli."
  }]
}

```
