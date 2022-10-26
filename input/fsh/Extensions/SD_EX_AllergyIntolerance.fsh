Extension: EX_TH_AllergyIntoleranceCertainty
Id: ex-allergyintolerance-allergy-certainty
Title: "AllergyIntolerance: Certainty"
Description: "รหัสประเภทการวินิจฉัยการแพ้ยา"
* ^url = $EX_TH_AllergyIntoleranceCertainty
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "AllergyIntolerance"
* . 0..*
* . ^short = "รหัสประเภทการวินิจฉัยการแพ้ยา"
* . ^definition = "รหัสประเภทการวินิจฉัยการแพ้ยา"
* url = $EX_TH_AllergyIntoleranceCertainty (exactly)
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_THCC_AllergyCertainy (extensible)

