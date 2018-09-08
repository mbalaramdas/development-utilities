@echo OFF
echo "Setting JAVA_HOME"
setx -m JAVA_HOME "C:\Progra~1\Java\jdk1.7.0_80"
echo "Setting up registry entires..."
echo|set /p="Registring jre. "
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\JavaSoft\Java Runtime Environment" /v CurrentVersion /t REG_SZ /d 1.7 /f
echo|set /p="Registring jdk. "
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\JavaSoft\Java Development Kit" /v CurrentVersion /t REG_SZ /d 1.7 /f
echo "Creating Symbolic links under C:\ProgramData\Oracle\Java\javapath\"
cd C:\ProgramData\Oracle\Java\javapath\
del java.exe
del javaw.exe
del javaws.exe
mklink java.exe "C:\Program Files\Java\jre7\bin\java.exe"
mklink javaw.exe "C:\Program Files\Java\jre7\bin\javaw.exe"
mklink javaws.exe "C:\Program Files\Java\jre7\bin\javaws.exe"
echo "Done..."
pause