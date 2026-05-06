//Alias: $condition-clinical = http://terminology.hl7.org/CodeSystem/condition-clinical
//Alias: $condition-category = http://terminology.hl7.org/CodeSystem/condition-category
//Alias: $EEFertilityPatient = https://fhir.ee/StructureDefinition/EEFertilityPatient
//Alias: $fertility-donor-genetic-finding-type = https://fhir.ee/ValueSet/fertility-donor-genetic-finding-type

Profile: EEVRISDonorGeneticFinding
Parent: Condition
Id: ee-vris-donor-genetic-finding
Title: "Doonori geneetiline leid"
Description: "Tagantjärgi ilmnenud doonori geneetiline haigus või kandlus."
//* ^url = "https://fhir.ee/StructureDefinition/EEFertilityCondition-DonorGeneticFinding"
//* ^version = "1.0.0"
* ^status = #active
* . ^short = "Doonori geneetiline leid"
* . ^definition = "Tagantjärgi ilmnenud doonori geneetiline haigus või geenivariandi kandlus"
* clinicalStatus 1..
* clinicalStatus ^binding.description = "LOENDist fix kood!" //$condition-clinical#active
* verificationStatus 1..
* verificationStatus ^binding.description = "LOENDist fix kood!" //from ConditionVerificationStatus (required)
* verificationStatus ^short = "|provisional| = kahtlus; |confirmed| = DNA-testiga kinnitatud"
* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category 0..*
* category contains
    conditionCategory 1..1 and
    geneticFindingType 1..1
* category[conditionCategory] ^binding.description = "LOENDist fix kood!" //= $condition-category#encounter-diagnosis
* category[geneticFindingType] ^binding.description = "Uus loend vaja!!" //from $fertility-donor-genetic-finding-type (required)
* category[geneticFindingType] ^short = "Geneetilise leiu tüüp"
* category[geneticFindingType] ^definition = "Geneetilise leiu klassifikatsioon: |päriliku haiguse kahtlus|, |autosoom-retsessiivse kandlus|, |X-liiteline kandlus| või |mitokondriaalne kandlus|"
* code 1..
* code ^short = "Molekulaarne diagnoos"
* code.text 1..
* code.text ^short = "Diagnoos/haigus vabatekstina"
* code.text ^definition = "Molekulaarne diagnoos vabatekstina. Nt 'CFTR geeni c.1521_1523delCTT (F508del) variant — tsüstilise fibroosi kandlus'"
* subject only Reference($mpi-patient)
* subject ^short = "Doonor"
* note ^short = "Täiendav märkus"
* note ^definition = "Lisainformatsioon geneetilise leiu kohta"
* identifier 0..*
* bodySite 0..0
* encounter 0..0
* onset[x] 0..0
* abatement[x] 0..0
* recordedDate 0..0
* participant 0..*
  * function 0..1
  * actor 1..1
* stage 0..0
* evidence 0..0