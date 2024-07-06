#!/bin/bash

while true
do
    # تشغيل CodeSpace داخل جلسة screen جديدة
    screen -S codespace_session -d -m bash -c "codespace start"
    
    # الانتظار لمدة 10 ثوانٍ قبل التحقق من حالة الجلسة
    sleep 10
    
    # التحقق مما إذا كانت جلسة CodeSpace لا تزال قيد التشغيل
    if ! screen -list | grep -q "codespace_session"; then
        echo "CodeSpace stopped, restarting..."
    fi
    
    # الانتظار لفترة قبل التحقق مرة أخرى
    sleep 300
done
