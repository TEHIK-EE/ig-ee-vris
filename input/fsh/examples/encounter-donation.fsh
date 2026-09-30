Instance: encounter-donationSperm2025
InstanceOf: EEVRISEncounter
Usage: #example
Description: "Visit. Sperm collection and cryopreservation"
* status = #completed
//* class = $v3-ActCode#AMB "ambulatory"
* subject = Reference(Patient/patientDonorMale)
* episodeOfCare = Reference(EpisodeOfCare/eoc-donationSperm2025)
* actualPeriod.start = "2025-02-20T09:00:00+02:00"
* actualPeriod.end = "2025-02-20T11:30:00+02:00"
* participant.actor = Reference(PractitionerRole/practitionerrole-doctor)
* serviceProvider = Reference(Organization/organization-novavita1)