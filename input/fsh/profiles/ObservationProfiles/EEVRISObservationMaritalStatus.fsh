Profile: EEVRISObservationMaritalStatus
Parent: EEMPISocialHistoryMaritalStatus
Id: ee-vris-observation-marital-status
Title: "Observation: EE VRIS Marital Status"
Description: "Marital status of a donor or recipient in the Estonian VRIS fertility system. (ee Perekonnaseis.)"
* ^status = #draft

* subject only Reference(EEVRISPatient or EEVRISPatientAnonymous)
* subject ^short = "(ee Doonor või retsipient, kelle perekonnaseis on kirjeldatud)"
* valueCodeableConcept ^short = "(ee Perekonnaseisu loend)"