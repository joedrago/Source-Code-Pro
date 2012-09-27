@echo off

set FAMILY=DragonMono

del /S /F /Q target
rd target
md target

FOR %%W IN (Black,Bold,ExtraLight,Light,Regular,Semibold) DO (
makeotf -sp target/%FAMILY%-%%W-otf.fpr -f Roman/%%W/font.pfa -r -o target/%FAMILY%-%%W.otf
REM makeotf -sp target/%FAMILY%-%%W-ttf.fpr -f Roman/%%W/font.ttf -gf GlyphOrderAndAliasDB_TT -r -o target/%FAMILY%-%%W.ttf
)
