Instance: EEVRISPatientObservations
InstanceOf: OperationDefinition
Usage: #definition
Title: "$patient-observations operation"
Description: "TEST Custom operation to retrieve all Observation resources for a specific patient in Estonian VRIS. Supports optional filtering by profile, category, code, and date range. (ee TEST Operatioon kõikide Observation ressursside pärimiseks VRIS-ist. Tagastab Bundle'i kõikide Observationitega, kus subject viitab antud patsiendile.)"

* url = "https://fhir.ee/vris/OperationDefinition/patient-observations"
* version = "0.1.0"
* name = "PatientObservations"
* status = #draft
* kind = #operation
* experimental = true
* date = "2026-07-15"

//* contact[0].name = "HL7 Estonia"
//* contact[0].telecom[0].system = #url
//* contact[0].telecom[=].value = "https://fhir.ee"

* affectsState = false
* code = #patient-observations
* comment = "This operation returns all Observation resources associated with a given patient, optionally filtered by profile, category, code, or effective date range."

* resource[0] = #Patient
* system = false
* type = true
* instance = true

// Input parameters
* parameter[0].name = #patient
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Reference to the patient whose observations are being requested. Required when invoked at type level; optional (implied) when invoked at instance level."
* parameter[=].type = #Reference
* parameter[=].targetProfile[0] = "https://fhir.ee/vris/StructureDefinition/ee-vris-patient-universal"
* parameter[=].targetProfile[+] = "https://fhir.ee/mpi/StructureDefinition/ee-mpi-patient-verified"
* parameter[=].targetProfile[+] = "https://fhir.ee/mpi/StructureDefinition/ee-mpi-patient-unknown"

* parameter[+].name = #profile
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "*"
* parameter[=].documentation = "Filter results to include only Observations conforming to specified profile(s). Multiple profiles can be provided (OR condition)."
* parameter[=].type = #canonical

* parameter[+].name = #category
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "*"
* parameter[=].documentation = "Filter by Observation.category value(s) (e.g., laboratory, exam, procedure, social-history)."
* parameter[=].type = #CodeableConcept

* parameter[+].name = #code
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "*"
* parameter[=].documentation = "Filter by Observation.code value(s) (e.g., specific LOINC or SNOMED CT codes)."
* parameter[=].type = #CodeableConcept

* parameter[+].name = #date-from
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Include only Observations with effective date on or after this date."
* parameter[=].type = #dateTime

* parameter[+].name = #date-to
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Include only Observations with effective date on or before this date."
* parameter[=].type = #dateTime

* parameter[+].name = #status
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "*"
* parameter[=].documentation = "Filter by Observation.status (e.g., final, amended, corrected, cancelled)."
* parameter[=].type = #code

// Output parameter
* parameter[+].name = #return
* parameter[=].use = #out
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Bundle of type 'searchset' containing all matching Observation resources. Empty Bundle if patient has no observations."
* parameter[=].type = #Bundle