Instance: allergyintolerance-patient1
InstanceOf: $SD_AllergyIntolerance_Base
Title: "ตัวอย่าง AllergyIntolerance: ประวัติการแพ้ยาและสิ่งอื่น ๆ"
Description: "ประวัติการแพ้ยา อาหาร เวชภัณฑ์ สิ่งแวดล้อม สารเคมี ฯลฯ"
Usage: #example
* extension[0]
  * url = $EX_TH_AllergyIntoleranceCertainy
  * valueCodeableConcept
    * coding[0] = $CS_THCC_AllergyCertainty#1 "certain"
* clinicalStatus
  * coding[0] = $CS_HL7_AlleryActive#active "Active"
* verificationStatus
  * coding[0] = $CS_HL7_AllergyVerify#confirmed "Confirmed"
* category = #medication
* code
  * coding[0] = $CS_TMT#227162 "AAMOX 500 (ห้างขายยาตราเจ็ดดาว) (amoxicillin 500 mg) film-coated tablet, 1 tablet"
  * coding[+] = $CS_24Drug#100176000004493120381620 "AMOXICILLIN 500 MG TABLET, ORAL"
  * text = "Amoxycillin 500 mg"
* patient = Reference(Patient/patient-patient1)
* recordedDate = "2022-05-29"
* recorder = Reference(Practitioner/practitioner-doctor1)
* reaction
  * manifestation
    * coding[0] = $SCT#28926001 "Eruption caused by drug"
    * text = "ผื่นขึ้นหลังได้ยา"