Profile: EEVRISCoverage
Parent: Coverage
Id: ee-vris-coverage
Title: "Coverage: EE VRIS Coverage"
Description: "Coverage profile for fertility treatment in Estonian VRIS. Identifies the payer of treatment (Health Insurance Fund or self-pay). (ee Viljatusravi rahastamise allikas, Tervisekassa või omaosalus)"
* identifier 0..*
* identifier ^short = "(ee Kindlustuse identifikaator)"

* status 1..1
* kind 1..1
* kind ^short = "(ee Kindlustuse liik insurance / self-pay / other)"

* paymentBy 0..*
* paymentBy ^short = "(ee Kes maksab, kas patsient ise või kolmas osapool)"
* paymentBy.party 1..1
* paymentBy.party ^short = "(ee Maksja viide. Siia Tervisekassa)"
* paymentBy.responsibility 0..1

* type 0..0
* policyHolder 0..0
* subscriber 0..0
* subscriberId 0..0
* beneficiary 1..1
* beneficiary only Reference(EEVRISRecipient or EEMPIPatientVerified)
* beneficiary ^short = "(ee Kindlustushüvitise saaja on patsient, kes ravi saab)"

* dependent 0..0
* relationship 0..0
* period 0..1
* period ^short = "(ee Kindlustuse kehtivuse periood)"

* insurer 0..0
* class 0..0
* order 0..0
* network 0..0
* costToBeneficiary 0..0
* subrogation 0..0
* contract 0..0