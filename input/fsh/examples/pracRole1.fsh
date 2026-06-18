Instance: practitionerrole-doctor
InstanceOf: PractitionerRole
Usage: #example
Description: "Example of PractitionerRole D99876 working at PERH"
* language = #et
* active = true
* identifier.value = "D99876"
* identifier.system = "https://fhir.ee/sid/pro/est/pho"  //practitioner-identifier-domain-VS
* period.start = "2008-01-01"
* practitioner = Reference(Practitioner/practitioner-doctor)
* organization = Reference(Organization/organization-perh123)