Instance: eoc-donationSperm2025
InstanceOf: EEVRISEpisodeOfCare
Usage: #example
Description: "Example of donation event as a whole. Sperm donation to partner. (ee Doonorluse sündmus, mis koondab kokku kõik visiitide käigus tehtud protseduurid jm)"

* identifier.value = "ABC123"
* status = #finished
* type = $vris-episode-type-CS#donorship "Doonorluse sündmus"
* patient = Reference(Patient/patientDonorMale)
* managingOrganization = Reference(Organization/organization-novavita1)
* careManager = Reference(PractitionerRole/practitionerrole-doctor)
* period.start = "2025-02-20"
* period.end = "2025-02-20"