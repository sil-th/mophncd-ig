Instance: practitionerrole-doctor1
InstanceOf: $SD_PractitionerRole_Base
Title: "ตัวอย่าง PractitionerRole: บทบาทแพทย์ รายที่ 1"
Description: "บทบาทแพทย์ รายที่ 1 ในสถานพยาบาลหลัก"
Usage: #example
* identifier[0]
  * use = #secondary
  * type
    * coding[0] = $CS_HL7_IdentifierType#PN "Person number"
    * coding[+] = $CS_TH_IdentifierType#localProv "รหัสผู้ให้บริการสุขภาพ ของหน่วยบริการ"
  * system = $ID_LO_Provider
  * value = "XXXXXXXX"
  * period
    * start = "2018-04-25"
* active = true
* period
  * start = "2015-01-01"
  * end = "2028-03-31"
* practitioner = Reference(Practitioner/practitioner-doctor1) "พญ. สมหญิง จริงใจ"
* organization = Reference(Organization/organization-main) "โรงพยาบาลตัวอย่าง"
* code = $SCT#158965000 "Doctor"
* telecom[0]
  * system = #phone
  * value = "088-8888888"
  * use = #work
* telecom[+]
  * system = #email
  * value = "sonyingjingjai@jingjai.com"