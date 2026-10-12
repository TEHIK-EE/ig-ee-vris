Profile: EEVRISObservationMaritalStatus
Parent: EEMPISocialHistoryMaritalStatus
Id: ee-vris-observation-marital-status
Title: "Observation: EE VRIS Marital Status"
Description: "Marital status of a donor or recipient in the Estonian VRIS fertility system. (ee Perekonnaseis. NB! Pärimisel kasutada MPI profiili, sisestamisel või kui patsienti pole rahvastikuregistris, kasuta VRIS profiili.)"
* meta.source ^short = "(ee Siia tuleb viide välisele andmeallikale, kui vajalik. Näiteks RR, raseduse infosüsteem jne.)"
* subject only Reference(EEVRISDonor or EEVRISDonorAnonymous)
* subject ^short = "(ee Doonor või retsipient, kelle perekonnaseis on kirjeldatud)"
* valueCodeableConcept ^short = "(ee Perekonnaseisu loend)"