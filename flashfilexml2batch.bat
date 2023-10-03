echo off
	
	echo   ----------------------------------------------------------------------------
	echo   """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
	echo			WWW.STOCKROM.NET  - forum.hovatek.com
    echo   """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    echo ------------------------------------------------------------------------------
	echo [*] Welcome to Motorola flashfile.xml to batch converter for windows
	echo ------------------------------------------------------------------------------
    pause
	echo echo off > flashfile.bat
	echo fastboot getvar max-sparse-size >> flashfile.bat
	echo fastboot oem fb_mode_set >> flashfile.bat
	findstr "\<filename\>" flashfile.xml > filename.txt
	findstr "\<erase\>" flashfile.xml > erase.txt
	findstr "\<mbn\>" flashfile.xml > mbn.txt
	findstr "\<BTFM\>" flashfile.xml > BTFM.txt
	for /F delims^=^"^ Tokens^=4^,6^,8^* %%G in (filename.txt) DO @echo fastboot %%H %%I %%G >> flashfile.bat
	for /F delims^=^"^ Tokens^=2^,4^,6^* %%G in (erase.txt) DO @echo fastboot %%G %%H >> flashfile.bat
	for /F delims^=^"^ Tokens^=4^,6^,8^* %%G in (mbn.txt) DO @echo fastboot %%H %%I %%G >> flashfile.bat
	for /F delims^=^"^ Tokens^=4^,6^,8^* %%G in (BTFM.txt) DO @echo fastboot %%H %%I %%G >> flashfile.bat
	echo fastboot oem fb_mode_clear >> flashfile.bat
	echo echo ------------------------------------------------------------------------- >> flashfile.bat
	echo echo TERMINADO ! Role p cima, verifique se ha erros no flash >> flashfile.bat
	echo echo ------------------------------------------------------------------------- >> flashfile.bat
	echo pause >> flashfile.bat
	echo fastboot reboot >> flashfile.bat
	echo exit >> flashfile.bat
	echo [*] O flashfile.xml foi convertido em flashfile.bat
	echo [*] Pressione qualquer tecla para sair, coloque o arquivo flashfile.bat junto 
	echo [*] com os arquivos da rom e arquivos adb, clique 2 vezes no flashfile.bat 
	echo [*] para iniciar a restauracao do firmware em seu dispositivo motorola. 
	echo [*] Certifique-se de que seu dispositivo esta no modo fastboot antes de iniciar
	echo ------------------------------------------------------------------------------
	del BTFM.txt
	del mbn.txt
	del erase.txt
	del filename.txt
	pause 
exit