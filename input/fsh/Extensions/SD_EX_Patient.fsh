Extension: EX_TH_PatientRace
Id: ex-patient-race
Title: "Patient: Race"
Description: "เชื้อชาติของบุคคล"
* ^url = $EX_TH_PatientRace
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "Patient"
* . 0..*
* . ^short = "เชื้อชาติของบุคคล"
* . ^definition = "เชื้อชาติของบุคคล"
* url = $EX_TH_PatientRace (exactly)
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_THCC_Nationality (extensible)
