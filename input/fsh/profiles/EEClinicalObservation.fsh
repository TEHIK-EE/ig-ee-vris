/*
Profile: EEClinicalObservation
Parent: Observation
Id: ee-clinical-observation
Title: "Clinical Observation"
Description: "An example profile for clinical observations."

* status = #final
* code from EEObservationCodeVS (required)
* category 1..1
* category.coding 1..1
* category.coding = $observation-category#vital-signs
* extension contains EEBodyPositionExtension named bodyPosition 0..1
*/