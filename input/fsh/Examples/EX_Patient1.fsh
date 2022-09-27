Instance: patient-patient1
InstanceOf: $SD_Patient_Base
Title: "ตัวอย่าง Patient: ผู้ป่วยรายที่ 1 ชายไทย"
Description: "ตัวอย่างข้อมูลผู้ป่วย"
Usage: #example
* extension[0]
  * url = $EX_HL7_Nationality
  * extension[0]
    * url = "code"
    * valueCodeableConcept
      * coding[0] = $ISO3166#THA
      * coding[+] = $CS_THCC_Nationality#099
      * text = "ไทย"
  * extension[+]
    * url = "period"
    * valuePeriod
      * start = "1960-04-25"
* extension[+]
  * url = $EX_TH_PatientRace
  * valueCodeableConcept
    * coding[0] = $ISO3166#THA
    * coding[+] = $CS_THCC_Nationality#099
    * text = "ไทย"
* extension[+]
  * url = $EX_HL7_Religion
  * valueCodeableConcept
    * coding[0] = $CS_HL7_Religion#1051 "Theravada"
    * coding[+] = $CS_THCC_Religion#01 "ศาสนาพุทธ"
    * text = "ศาสนาพุทธ"
* identifier[0]
  * use = #official
  * type
    * coding[0] = $CS_HL7_IdentifierType#NI "National unique individual identifier"
    * coding[+] = $CS_TH_IdentifierType#cid "เลขประจำตัวประชาชนไทย"
  * system = $ID_ThaiCid
  * value = "2650591524440"
  * period
    * start = "2018-04-25"
    * end = "2022-04-25"
* identifier[+]
  * use = #usual
  * type = $CS_HL7_IdentifierType#PPN "Passport number"
  * system = $ID_ThaiPassport
  * value = "XX000009000"
  * period
    * start = "2018-04-25"
    * end = "2022-04-25"
* identifier[+]
  * use = #secondary
  * type
    * coding[0] = $CS_HL7_IdentifierType#MR "Medical record number"
    * coding[+] = $CS_TH_IdentifierType#localHn "เลข Hospital Number (HN) ของหน่วยบริการ"
  * system = $ID_LO_HN
  * value = "65-XXXXX"
* active = true
* name[0]
  * extension
    * url = $EX_HL7_Language
    * valueCode = #th
  * text = "นาย สมชาย ใจดี"
  * family = "ใจดี"
  * given = "สมชาย"
  * prefix = "นาย"
* name[+]
  * extension
    * url = $EX_HL7_Language
    * valueCode = #en
  * text = "Mr. Somchai Jaidee"
  * family = "Jaidee"
  * given = "Somchai"
  * prefix = "Mr."
* telecom[0]
  * system = #phone
  * value = "088-8888888"
  * use = #mobile
* telecom[+]
  * system = #phone
  * value = "02-222-2222"
  * use = #home
* telecom[+]
  * system = #email
  * value = "somchaijaidee@jaidee.com"
* gender = #male
* birthDate = "1960-04-25"
* address[0]
  * text = "123 คอนโดพัฒนานนท์ หมู่ที่ 20 ถนนนครอินทร์ ซอยนครอินทร์ 20 ตำบลตลาดขวัญ อำเภอเมืองนนทบุรี จังหวัดนนทบุรี 11000"
  * line = "123 คอนโดพัฒนานนท์ หมู่ที่ 20 ถนนนครอินทร์ ซอยนครอินทร์ 20"
  * city = "ตลาดขวัญ"
  * district = "เมืองนนทบุรี"
  * state = "นนทบุรี"
  * postalCode = "11000"
* maritalStatus
  * coding[0] = $CS_HL7_MaritalStatus#M "Married"
  * coding[+] = $CS_THCC_Marital#2 "คู่"
