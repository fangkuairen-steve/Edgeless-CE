rem ��WINHEX����[StartIsBack32.dll,StartIsBack64.dll]16������ֵ30750000����3075Ϊ0100
set "oldData=30 75 00 00 0F"
set "newData=01 00 00 00 0F"

if not "%WB_PE_ARCH%"=="x64" (
  set StartIsBackDll="%X%\Program Files\StartIsBack\StartIsBack32.dll"
) else (
  set StartIsBackDll="%X%\Program Files\StartIsBack\StartIsBack64.dll"
)
binmay.exe -U %StartIsBackDll% -s "%oldData%" -r "%newData%"
goto :eof