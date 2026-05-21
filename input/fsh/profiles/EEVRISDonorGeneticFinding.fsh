Profile: EEVRISDonorGeneticFinding
Parent: Condition
Id: ee-vris-donor-genetic-finding
Title: "Doonori geneetiline leid"
Description: "Tagantjärgi ilmnenud doonori geneetiline haigus või kandlus."
//* ^version = "1.0.0"
* ^status = #active
* . ^short = "Doonori geneetiline leid"
* . ^definition = "Tagantjärgi ilmnenud doonori geneetiline haigus või geenivariandi kandlus"
* clinicalStatus 1..
* clinicalStatus ^binding.description = "LOENDist fix kood!" //$condition-clinical#active
* verificationStatus 1..
* verificationStatus ^binding.description = "LOENDist fix kood!" //from ConditionVerificationStatus (required)
* verificationStatus ^short = "|provisional| = kahtlus; |confirmed| = DNA-testiga kinnitatud"
* category 0..1
* category.coding from $vris-donor-genetic-finding-type-VS
//* category[conditionCategory] ^binding.description = "LOENDist fix kood!" //= $condition-category#encounter-diagnosis
//* category[geneticFindingType] ^binding.description = "Uus loend vaja!!" //from $fertility-donor-genetic-finding-type (required)
* category ^short = "Geneetilise leiu tüüp"
* category ^definition = "Geneetilise leiu klassifikatsioon: |päriliku haiguse kahtlus|, |autosoom-retsessiivse kandlus|, |X-liiteline kandlus| või |mitokondriaalne kandlus|"
* code 1..
* code ^short = "Molekulaarne diagnoos. Kas code alla või note alla?!?!?! KAS on lootust, et kunagi tuleks siia loend? Loend, mille alusel saaks valida kodeeritud diagnoosi?"
* code.text 1..
* code.text ^short = "Diagnoos/haigus vabatekstina"
* code.text ^definition = "Molekulaarne diagnoos vabatekstina. Nt 'CFTR geeni c.1521_1523delCTT (F508del) variant — tsüstilise fibroosi kandlus'"
* subject only Reference($vris-donor)
* subject ^short = "Doonor"
* note ^short = "Täiendav märkus?. Molekulaarne diagnoos. Kas code alla või note alla?!?!?!"
* note ^definition = "Lisainformatsioon geneetilise leiu kohta??"
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