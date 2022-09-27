Profile: MophPcImmunizationBase
Parent: Immunization
Id: mophncd-immunization-base
Title: "MoPH-NCD Immunization"
Description: "การมารับบริการฉีดวัคซีน"
* ^url = $SD_Immunization_Base
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* status = #completed
* vaccineCode MS
* vaccineCode.coding ^slicing.discriminator[0].type = #value
* vaccineCode.coding ^slicing.discriminator[=].path = "system"
* vaccineCode.coding ^slicing.rules = #open
* vaccineCode.coding contains
    24-digit 0..1 MS and
    tmt 0..1 MS
* vaccineCode.coding[24-digit] ^short = "รหัสยามาตรฐาน 24 หลัก"
* vaccineCode.coding[24-digit].system 1..
* vaccineCode.coding[24-digit].system = $CS_24Drug (exactly)
* vaccineCode.coding[24-digit].code 1..
* vaccineCode.coding[tmt] ^short = "รหัสยามาตรฐาน TMT"
* vaccineCode.coding[tmt].system 1..
* vaccineCode.coding[tmt].system = $CS_TMT (exactly)
* vaccineCode.coding[tmt].code 1..
* patient only Reference($SD_Patient_Base)
* patient MS
* encounter only Reference($SD_Encounter_Base)
* encounter MS
* occurrence[x] MS
* occurrence[x] only dateTime
* occurrenceDateTime 1.. MS
* location MS
* location ^short = "คลินิก / สถานที่ฉีด"
* manufacturer MS
* manufacturer ^short = "ผู้ผลิต"
* lotNumber MS
* expirationDate MS
* note ^short = "บันทึกเพิ่มเติม"
* reaction
  * date MS
  * detail MS

