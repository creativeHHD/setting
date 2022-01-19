-----------------------------------------------------
        คำสั่งแก้ apt update && apt upgradeไม่ได้
------------------------------------------------------

    cd ~/../usr/etc/apt/    

    rm -rf sources.list.d   

    cd    

-----------------------------------------------
    AUTO BOOT  version กรณีที่ลอง แบบ ตัว ACTIVE v2.2 ไม่ผ่าน
-----------------------------------------------

apt update && apt upgrade

termux-setup-storage

pkg install nano

mkdir .termux/boot

cd .termux/boot

nano boot.sh

---------------เพิ่มข้อมูลนี้ใน boot.sh-------------------

#!/data/data/com.termux/files/usr/bin/sh

termux-wake-lock

. $PREFIX/etc/profile

------------------------------------------------------
     ปิด termux โดยปัดบนลงมา เลือกขยายเมนูTermux คำว่า exit จากนั้นเข้าใหม่ ลงคำสั่งต่อไป
---------------------------------------------------------

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

------------------------------------------------------------------
     เมื่อขึ้น menu เลือก กด 1 (หัวข้อ ubuntu 1) เพื่อติดตั้ง
-------------------------------------------------------------------------
     ติดตั้งเสร็จ กด 1 เพื่อเปิด
-----------------------------------------------------

---------------พิมพ์คำสั่งเพื่อติดตั้ง ระบบขุด---------------------

apt-get update

apt-get install libcurl4-openssl-dev libssl-dev libjansson-dev automake autotools-dev build-essential git nano

git clone https://github.com/creativeHHD/actives

cd actives

chmod +x edit-miner && chmod +x run-miner

sh setup.sh
 
--------------------------------------------------------
      ระบุรายละเอียด Pool
-------------------------------------------------------

stratum+tcp://ap.luckpool.net:3956     <----ระบุตามนี้

xxxxxxxxxxxเลขกระเป๋าxxxxxxxxxxxxxxxxx.ชื่อเครื่องขุด      <-----กระเป๋า verus

รหัสผ่าน lockpool ให้ใส่ x , รหัส hybrid ให้ใส่ hybrid    <----password x,hybrid

ระบุจำนวน CPU 1- 8 core       <-----จำนวน core ที่สั่งขุด

------------------------------------------------------------
