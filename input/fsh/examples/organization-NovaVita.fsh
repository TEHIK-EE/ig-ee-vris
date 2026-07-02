Instance: organization-novavita1
InstanceOf: EEBaseOrganization
Usage: #example
Description: "Example Organization. (ee Näidis-Asutus. NB! Hiljem tuleb vahetada SPD vastu!)"
* language = #et
* identifier.value = "10285009"
* identifier.system = "https://fhir.ee/sid/org/est/br"
* active = true
* name = "Nova Vita Kliinik AS"
//* contact.telecom[email].system = #email
//* contact.telecom[email].value = "info@novavita.ee"
//* contact.telecom[phone].system = #phone
//* contact.telecom[phone].value = "+372 600 0000" 
//* type[organizationType].coding.system = $org-type
//* type[organizationType].coding.code = #prov
//* type[organizationType].coding.display = "TTO"
//* type[=].coding.code = #prov //"http://terminology.hl7.org/CodeSystem/organization-type"
//* type[hospitalType].text = "Üld haigla"
//* type[hospitalType].coding.system = $haigla-liik //"https://fhir.ee/ValueSet/medre-haigla-liik"
//* type[hospitalType].coding.system = "https://fhir.ee/ValueSet/medre-haigla-liik"
//* qualification[=].identifier.value = "L02565"
//* qualification[=].identifier.system = "https://fhir.ee/sid/org/est/fi"
//* qualification[=].code = $tegevusloa-liik#1 "Eriarstiabi teenus"
//* qualification[=].period.start = "2012-01-12" 
