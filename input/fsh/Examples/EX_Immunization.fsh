Instance: immunization-baby1
InstanceOf: $SD_Immunization_Base
Title: "ตัวอย่าง Immunization: การมารับบริการฉีดวัคซีน"
Description: "การมารับบริการฉีดวัคซีน"
Usage: #example
* status = #completed
* vaccineCode
  * coding[+] = $CS_TMT#960728 "VAXIGRIP (2015) (SANOFI PASTEUR, FRANCE)"
  * text = "วัคซีนป้องกันไข้หวัดใหญ่"
* patient = Reference(Patient/patient-patient1) "นาย สมชาย ใจดี"
* occurrenceDateTime = "2022-03-21T15:00:02+07:00"
* location
  * display = "OPD GP Clinic 1 โรงพยาบาลตัวอย่าง"
* manufacturer
  * display = "บริษัท ยา แห่งหนึ่ง จำกัด"
* lotNumber = "AAJN11K"
* expirationDate = "2023-02-15"
* performer[0]
  * function = $CS_HL7_ProviderRole#OP
  * actor = Reference(Practitioner/practitioner-doctor1) "พญ. สมหญิง จริงใจ"
* performer[+]
  * function = $CS_HL7_ProviderRole#AP
  * actor = Reference(Practitioner/practitioner-nurse1) "นาง สมอมร จริงใจ"
* note
  * text = "ข้อมูลอื่นเพิ่มเติม"
* reaction
  * detail
    * display = "ไม่พบอาการผิดปกติ"