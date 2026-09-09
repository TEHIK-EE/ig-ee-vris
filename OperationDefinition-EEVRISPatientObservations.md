# $patient-observations operation - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **$patient-observations operation**

## OperationDefinition: $patient-observations operation (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/vris/OperationDefinition/patient-observations | *Version*:0.1.0 |
| Draft as of 2026-07-15 | *Computable Name*:PatientObservations |

 
TEST Custom operation to retrieve all Observation resources for a specific patient in Estonian VRIS. Supports optional filtering by profile, category, code, and date range. (ee TEST Operatioon kõikide Observation ressursside pärimiseks VRIS-ist. Tagastab Bundle'i kõikide Observationitega, kus subject viitab antud patsiendile.) 



## Resource Content

```json
{
  "resourceType" : "OperationDefinition",
  "id" : "EEVRISPatientObservations",
  "url" : "https://fhir.ee/vris/OperationDefinition/patient-observations",
  "version" : "0.1.0",
  "name" : "PatientObservations",
  "title" : "$patient-observations operation",
  "status" : "draft",
  "kind" : "operation",
  "experimental" : true,
  "date" : "2026-07-15",
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
  "description" : "TEST Custom operation to retrieve all Observation resources for a specific patient in Estonian VRIS. Supports optional filtering by profile, category, code, and date range. (ee TEST Operatioon kõikide Observation ressursside pärimiseks VRIS-ist. Tagastab Bundle'i kõikide Observationitega, kus subject viitab antud patsiendile.)",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "EE",
      "display" : "Estonia"
    }]
  }],
  "affectsState" : false,
  "code" : "patient-observations",
  "comment" : "This operation returns all Observation resources associated with a given patient, optionally filtered by profile, category, code, or effective date range.",
  "resource" : ["Patient"],
  "system" : false,
  "type" : true,
  "instance" : true,
  "parameter" : [{
    "name" : "patient",
    "use" : "in",
    "min" : 0,
    "max" : "1",
    "documentation" : "Reference to the patient whose observations are being requested. Required when invoked at type level; optional (implied) when invoked at instance level.",
    "type" : "Reference",
    "targetProfile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-patient-universal",
    "https://fhir.ee/mpi/StructureDefinition/ee-mpi-patient-verified",
    "https://fhir.ee/mpi/StructureDefinition/ee-mpi-patient-unknown"]
  },
  {
    "name" : "profile",
    "use" : "in",
    "min" : 0,
    "max" : "*",
    "documentation" : "Filter results to include only Observations conforming to specified profile(s). Multiple profiles can be provided (OR condition).",
    "type" : "canonical"
  },
  {
    "name" : "category",
    "use" : "in",
    "min" : 0,
    "max" : "*",
    "documentation" : "Filter by Observation.category value(s) (e.g., laboratory, exam, procedure, social-history).",
    "type" : "CodeableConcept"
  },
  {
    "name" : "code",
    "use" : "in",
    "min" : 0,
    "max" : "*",
    "documentation" : "Filter by Observation.code value(s) (e.g., specific LOINC or SNOMED CT codes).",
    "type" : "CodeableConcept"
  },
  {
    "name" : "date-from",
    "use" : "in",
    "min" : 0,
    "max" : "1",
    "documentation" : "Include only Observations with effective date on or after this date.",
    "type" : "dateTime"
  },
  {
    "name" : "date-to",
    "use" : "in",
    "min" : 0,
    "max" : "1",
    "documentation" : "Include only Observations with effective date on or before this date.",
    "type" : "dateTime"
  },
  {
    "name" : "status",
    "use" : "in",
    "min" : 0,
    "max" : "*",
    "documentation" : "Filter by Observation.status (e.g., final, amended, corrected, cancelled).",
    "type" : "code"
  },
  {
    "name" : "return",
    "use" : "out",
    "min" : 1,
    "max" : "1",
    "documentation" : "Bundle of type 'searchset' containing all matching Observation resources. Empty Bundle if patient has no observations.",
    "type" : "Bundle"
  }]
}

```
