# MooBanWater — Cloud Ready

เว็บแอปจดค่าน้ำหมู่บ้านสำหรับ iPhone/PWA

## ตอนนี้ใช้งานได้
- เพิ่ม/แก้ไขบ้าน
- บันทึกเลขมิเตอร์รายเดือน
- คำนวณ 6 บาท/หน่วย + ค่ารักษามาตร 5 บาท
- ป้องกันเลขมิเตอร์ลดลง
- ป้องกันการบันทึกเดือนซ้ำโดยไม่ถาม
- ใบแจ้งค่าน้ำตามรูปแบบปุณย์ศิริ
- PDF ผ่านระบบ Print ของเบราว์เซอร์
- PNG
- สถานะชำระ/ค้าง
- ประวัติและสถิติ
- ตั้งค่าหมู่บ้าน/ธนาคาร/เลขบัญชี/LINE
- Backup/Restore JSON
- PWA + Offline shell

## สำคัญ
เวอร์ชันที่เปิดจากไฟล์ในเครื่องจะใช้ localStorage เพื่อทดสอบได้ทันที
การใช้งาน Cloud หลายเครื่องต้องตั้ง Supabase และเชื่อมโค้ดส่วน Sync เพิ่มเติม

## Deploy แบบง่าย
1. สร้าง GitHub repository เช่น `moobanwater`
2. อัปโหลดไฟล์ทั้งหมดในโฟลเดอร์นี้
3. GitHub → Settings → Pages
4. Source = Deploy from a branch
5. Branch = main / root
6. รอ Deploy
7. เปิด URL ที่ GitHub ให้มาใน Safari
8. Share → Add to Home Screen

## Supabase
1. สร้าง project ใหม่
2. เปิด SQL Editor
3. รัน `supabase/schema.sql`
4. เปิด Authentication
5. สร้าง policy สำหรับ authenticated users
6. ใส่ URL และ anon key ใน `config.js`

อย่าใส่ `service_role` key ในหน้าเว็บ

## ใบแจ้ง
PDF ใช้ Print dialog ของ Safari/Chrome/Edge แล้วเลือก Save as PDF
PNG สร้างจาก Canvas โดยตรง
