-------------คำสั่งแก้ apt update && apt upgradeไม่ได้---------
cd ~/../usr/etc/apt/
rm -rf sources.list.d
cd
-------------------------------------------------------------------
-------------version กรณีที่ลง แบบ ตัว ACTIVE v2.2 ไม่ผ่าน-------------
		AUTO BOOT
-------------------------------------------------------------------
apt update && apt upgrade
termux-setup-storage
pkg install nano
mkdir .termux/boot
cd .termux/boot
nano boot.sh

---------------เพิ่มข้อมูลนี้ใน boot.sh-----------------------------------

#!/data/data/com.termux/files/usr/bin/sh
termux-wake-lock
. $PREFIX/etc/profile

------------------------------------------------------
ปิด termux โดยปัดบนลงมา เลือกขยายเมนู ของ Termux จะเห็นคำว่า exit จากนั้นเข้าใหม่ ลงคำสั่งต่อไป

cd /data/data/com.termux/files/usr/etc

nano profile

-------------เพิ่มข้อมูลนี้ใน profile บรรทัดสุดท้าย ---------------------
cd && cd /data/data/com.termux/files/usr/etc/os-install
sh ubun.sh
------------------Save และ ออก แล้วลงคำสั่งต่อไป--------------------

cd
pkg install git -y

------------------ติดตั้ง OS installer--------------------
git clone https://github.com/creativeHHD/setting

cd setting

chmod +x os-installer

sh build.sh

วิธีเรียกใช้งาน สามารถเรียกในหน้าไหนก็ได้โดยใช้คำสัง
os-installer
เลือก ubuntu 1 เพื่อติดตั้ง
ติดตั้งเสร็จ กด 1 เพื่อเปิด
---------------พิมพ์คำสั่งเพื่อติดตั้ง ระบบขุด---------------------
apt-get update

apt-get install libcurl4-openssl-dev libssl-dev libjansson-dev automake autotools-dev build-essential git nano

git clone https://github.com/creativeHHD/actives

cd actives

chmod +x edit-miner && chmod +x run-miner

sh setup.sh

---------------------ระบุรายละเอียด Pool----------------------
stratum+tcp://ap.luckpool.net:3956
xxxxxxxxxxxเลขกระเป๋าxxxxxxxxxxxxxxxxx.ชื่อเครื่องขุด
รหัสผ่าน lockpool ให้ใส่ x - รหัส hybrid ให้ใส่ hybrid
ระบุจำนวน CPU 1- 8 core
------------------------------------------------------------
