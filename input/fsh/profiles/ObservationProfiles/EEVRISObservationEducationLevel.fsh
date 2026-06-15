//Alias: $mpi-education = https://fhir.ee/mpi/StructureDefinition/ee-mpi-socialhistory-education-level

Profile: EEVRISObservationEducationLevel
Parent: EEMPISocialHistoryEducationLevel
Id: ee-vris-observation-education-level
Title: "Observation: EE VRIS Education Level"
Description: "Education level of a donor or recipient in the Estonian VRIS fertility system. (ee Haridustase.)"
* ^status = #draft

* subject only Reference(EEVRISDonor or EEVRISDonorAnonymous)
* subject ^short = "(ee Doonor või retsipient, kelle haridustase on kirjeldatud)"
* valueCodeableConcept ^short = "(ee Siin on Hariduse LOEND!)"