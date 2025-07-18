#!/bin/bash

clear
echo -e "🔧 جاري تثبيت مشروع HAMADA ..."

# تحديث النظام
echo -e "\n🔄 تحديث النظام..."
apt update -y && apt upgrade -y && apt dist-upgrade -y && apt autoremove -y

# تثبيت المتطلبات
echo -e "\n📦 تثبيت الأدوات الأساسية..."
apt install -y curl wget git unzip screen ca-certificates socat net-tools cron

# منح صلاحيات تنفيذ لكل السكربتات
echo -e "\n✅ تجهيز السكربتات..."
chmod +x *.sh

# تنفيذ السكربتات الأساسية
echo -e "\n🌐 ضبط اللغة..."
./language.sh

echo -e "\n🧠 تحسين الـ DNS..."
./dns-optimizer.sh

echo -e "\n⚙️ بدء إدارة XRAY..."
./xray-manager.sh

echo -e "\n👥 تفعيل مراقبة عدد المستخدمين..."
./auto-kill.sh

echo -e "\n🔍 تفعيل مراقبة الخدمات (Watchdog)..."
./watchdog.sh

echo -e "\n✅ تم التثبيت بنجاح! استمتع بخدمات HAMADA 🚀"
