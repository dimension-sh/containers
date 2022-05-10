if [ ! -f "/app/.twgs_installed" ]; then
    /usr/bin/wget -O /tmp/TWGS220B.EXE http://wiki.classictw.com/filearchive/apps/TWGS220B.EXE
    /usr/bin/wine /tmp/TWGS220B.EXE /s /v"/qn INSTALLDIR=C:\EIS\TWGS"
    touch "/app/.twgs_installed"
fi

/usr/bin/wine /app/drive_c/EIS/TWGS/twgs.exe