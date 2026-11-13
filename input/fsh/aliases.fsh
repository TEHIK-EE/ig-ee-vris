// ===== Rahvusvahelised terminoloogiad =====
Alias: $sct = http://snomed.info/sct
Alias: $loinc = http://loinc.org
Alias: $ucum = http://unitsofmeasure.org

// ===== HL7 CodeSystemid / ValueSetid =====
Alias: $condition-clinical = http://terminology.hl7.org/CodeSystem/condition-clinical
Alias: $condition-ver-status = http://terminology.hl7.org/CodeSystem/condition-ver-status
Alias: $condition-category = http://terminology.hl7.org/CodeSystem/condition-category
Alias: $obsCategory = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $sugu = http://hl7.org/fhir/administrative-gender //https://fhir.ee/CodeSystem/administratiivne-sugu
Alias: $product-category = http://hl7.org/fhir/product-category
Alias: $bdp-status-hl7 = http://hl7.org/fhir/biologicallyderived-product-status

// ===== Profiilid (StructureDefinition) =====
Alias: $mpi-patient = https://fhir.ee/mpi/StructureDefinition/ee-mpi-patient-verified
Alias: $mpi-patient-unknown = https://fhir.ee/mpi/StructureDefinition/ee-mpi-patient-unknown
Alias: $mpi-related-person = https://fhir.ee/mpi/StructureDefinition/ee-mpi-related-person
Alias: $vris-donor = https://fhir.ee/vris/StructureDefinition/ee-vris-donor
Alias: $vris-recipient = https://fhir.ee/vris/StructureDefinition/ee-vris-recipient

// ===== Extensionid =====
Alias: $birth-place = http://hl7.org/fhir/StructureDefinition/patient-birthPlace
Alias: $citizenship = http://hl7.org/fhir/StructureDefinition/patient-citizenship
Alias: $nationality = http://hl7.org/fhir/StructureDefinition/patient-nationality
Alias: $intended-recipient = http://hl7.org/fhir/StructureDefinition/biologicallyderivedproduct-intendedRecipient

// ===== ValueSetid =====
Alias: $rtk-VS = https://fhir.ee/ValueSet/rtk-alpha-2
Alias: $RHK-10 = https://fhir.ee/ValueSet/rhk-10
Alias: $abo = https://fhir.ee/ValueSet/abo-veregrupp
Alias: $kvalitatiivne = https://fhir.ee/ValueSet/kvalitatiivse-uuringu-vastus
Alias: $patient-identifier-domain-VS = https://fhir.ee/ValueSet/patsiendi-identifikaatorite-domeen
Alias: $relationship-type-VS = https://fhir.ee/ValueSet/isiku-seos-patsiendiga
Alias: $relationship-relation-VS = https://fhir.ee/ValueSet/patsiendi-kontaktisikute-liigid

Alias: $vris-property-type = https://fhir.ee/ValueSet/vris-tunnuse-tyyp
Alias: $vris-donor-type-VS = https://fhir.ee/ValueSet/vris-doonori-tyyp
Alias: $vris-donor-genetic-finding-type-VS = https://fhir.ee/ValueSet/vris-geneetilise-leiu-tyyp
Alias: $biological-material-type-VS = https://fhir.ee/ValueSet/vris-bioloogilise-materjali-liik
Alias: $bdp-status = https://fhir.ee/ValueSet/vris-bdp-staatus

Alias: $appearance = https://fhir.ee/ValueSet/vris-valimuse-tyyp
Alias: $eye = https://fhir.ee/ValueSet/vris-silmade-varvus
Alias: $eyeDetail = https://fhir.ee/ValueSet/vris-silmade-varvuse-tapsustus
Alias: $hair = https://fhir.ee/ValueSet/vris-juuste-varvus
Alias: $skin = https://fhir.ee/ValueSet/vris-naha-varvus
Alias: $body = https://fhir.ee/ValueSet/vris-kehaehitus

Alias: $indication-category = https://fhir.ee/ValueSet/vris-naidustuse-kategooria
Alias: $vris-episode-type = https://fhir.ee/ValueSet/vris-episoodi-tyyp
Alias: $vris-procedure-category = https://fhir.ee/ValueSet/vris-protseduuri-kategooria
Alias: $vris-procedure-code = https://fhir.ee/ValueSet/vris-protseduuri-kood
Alias: $vris-observation-code = https://fhir.ee/ValueSet/vris-vaatluse-tyyp
Alias: $vris-observation-component-code = https://fhir.ee/ValueSet/vris-vaatluse-komponendi-tyyp
Alias: $vris-stim-component = https://fhir.ee/ValueSet/vris-stimulatsiooni-komponendi-tyyp

Alias: $terk-coverage = https://fhir.ee/ValueSet/vris-tervisekassa-rahastatav-tsykkel
Alias: $tsykli-liik = https://fhir.ee/ValueSet/vris-viljatusravi-tsykli-liik
Alias: $vris-cycle-discontinuation-reason = https://fhir.ee/ValueSet/vris-tsykli-katkestamise-pohjus

Alias: $vris-pre-stimulation-treatment-VS = https://fhir.ee/ValueSet/vris-munasarjade-stimulatsioonieelsed-ravimid
Alias: $vris-lh-suppression-protocol-VS = https://fhir.ee/ValueSet/vris-luteiniseeriva-hormooni-supressiooniravimid
Alias: $vris-gonadotropin-use-VS = https://fhir.ee/ValueSet/vris-munasarjade-stimulatsiooniravimid
Alias: $vris-oocyte-trigger-VS = https://fhir.ee/ValueSet/vris-munarakkude-lopliku-kypsemise-kaivitamise-meetod
Alias: $vris-luteal-phase-support-VS = https://fhir.ee/ValueSet/vris-luteaalfaasi-toetuse-meetod
Alias: $vris-female-stimulation-method-VS = https://fhir.ee/ValueSet/vris-naise-stimulatsiooni-meetod
Alias: $vris-sperm-donor-stimulation-method = https://fhir.ee/ValueSet/vris-seemnerakkude-annetaja-stimulatsiooniravimid
Alias: $vris-preparation-protocol-VS = https://fhir.ee/ValueSet/vris-ettevalmistuse-protokoll

Alias: $vris-cell-origin-role = https://fhir.ee/ValueSet/vris-bioloogilise-materjali-paritolu-roll
Alias: $vris-collection-method = https://fhir.ee/ValueSet/vris-kogumise-meetod
Alias: $vris-sperm-collection-method = https://fhir.ee/ValueSet/vris-seemnerakkude-kogumise-meetod
Alias: $vris-cell-usage-state = https://fhir.ee/ValueSet/vris-suguraku-saamise-meetod
Alias: $vris-fertilization-method = https://fhir.ee/ValueSet/vris-viljastamise-meetod
Alias: $vris-pgt-type = https://fhir.ee/ValueSet/vris-pgt-tyyp

Alias: $vris-oocyte-origin = https://fhir.ee/ValueSet/vris-munaraku-paritolu
Alias: $vris-oocyte-type = https://fhir.ee/ValueSet/vris-munaraku-tyyp
Alias: $vris-oocyte-intended-use = https://fhir.ee/ValueSet/vris-munaraku-kasutusotstarve

Alias: $vris-preservation-state = https://fhir.ee/ValueSet/vris-sailitamise-olek
Alias: $vris-pubertal-status = https://fhir.ee/ValueSet/vris-koe-kylmsailitamise-aeg
Alias: $vris-cell-preservation-reason = https://fhir.ee/ValueSet/vris-suguraku-sailitamise-pohjus
Alias: $vris-fertility-preservation-reason = https://fhir.ee/ValueSet/vris-viljakuse-sailitamise-pohjus
Alias: $vris-fertility-preservation-method = https://fhir.ee/ValueSet/vris-viljakuse-sailitamise-meetod
Alias: $vris-cryopreservation-reason-VS = https://fhir.ee/ValueSet/vris-embryo-kylmutamise-pohjus
Alias: $vris-destruction-reason-VS = https://fhir.ee/ValueSet/vris-bioloogilise-materjali-havitamise-pohjus

// ===== CodeSystemid =====
Alias: $rtk = https://fhir.ee/CodeSystem/rtk
Alias: $RHK-10-CS = https://fhir.ee/CodeSystem/rhk-10
Alias: $identifier-domain = https://fhir.ee/CodeSystem/identifikaatorite-domeen

Alias: $vris-property-type-CS = https://fhir.ee/CodeSystem/vris-tunnuse-tyyp
Alias: $vris-donor-genetic-finding-type = https://fhir.ee/CodeSystem/vris-geneetilise-leiu-tyyp
Alias: $biological-material-type = https://fhir.ee/CodeSystem/vris-bioloogilise-materjali-liik
Alias: $bdp-statusCS = https://fhir.ee/CodeSystem/bdp-productstatus-other

Alias: $appearance-CS = https://fhir.ee/CodeSystem/vris-valimuse-tyyp
Alias: $eye-CS = https://fhir.ee/CodeSystem/vris-silmade-varvus
Alias: $hair-CS = https://fhir.ee/CodeSystem/vris-juuste-varvus
Alias: $skin-CS = https://fhir.ee/CodeSystem/vris-naha-varvus
Alias: $body-CS = https://fhir.ee/CodeSystem/vris-kehaehitus

Alias: $obstetric-component-CS = https://fhir.ee/CodeSystem/vris-synnitusanamneesi-komponent
Alias: $fertility-treatment-component-CS = https://fhir.ee/CodeSystem/vris-viljatusravi-komponent
Alias: $vris-episode-type-CS = https://fhir.ee/CodeSystem/vris-episoodi-tyyp
Alias: $stim-CS = https://fhir.ee/CodeSystem/vris-stimulatsiooni-komponendi-tyyp
Alias: $reasons = https://fhir.ee/CodeSystem/vris-pohjused


// ===== Väljakommenteeritud =====
// Alias: $fertility-cryopreservation-date = ee-vris-cryopreservation-date
// Alias: $additional-identifier = http://hl7.org/fhir/StructureDefinition/additionalIdentifier
// Alias: $rtk = https://fhir.ee/CodeSystem/rtk
// Alias: $obstetric-component-CS = https://fhir.ee/CodeSystem/vris-obstetric-component
// Alias: $vris-sperm-origin-role = https://fhir.ee/ValueSet/vris-seemneraku-paritolu-roll
// Alias: $vris-cell-preservation-reason = https://fhir.ee/ValueSet/vris-viljakuse-sailitamise-pohjus
// Alias: $vris-cryopreservation-code-VS = https://fhir.ee/ValueSet/vris-kylmutamise-kood
// Alias: $vris-cryopreservation-outcome-VS = https://fhir.ee/ValueSet/vris-kylmutamise-tulemus
// Alias: $vris-destruction-code-VS = https://fhir.ee/ValueSet/vris-havitamine
