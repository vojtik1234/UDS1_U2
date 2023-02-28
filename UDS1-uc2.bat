@echo off

rem nastavení kódování na UTF-8
chcp 65001

rem generování náhodného čísla v rozmezí 0-9
set /a number=%RANDOM% %% 10

rem výpis instrukcí pro uživatele
echo Hádej číslo v rozmezí 0-9

rem hlavní smyčka
:loop
set /p guess=Zadej svůj tip: 

rem porovnání tipu s generovaným číslem
if %guess%==%number% (
    echo Gratuluju! Uhádl jsi číslo %number%.
    goto end
) else if %guess% gtr %number% (
    echo Tvoje číslo je větší než hledané číslo.
) else (
    echo Tvoje číslo je menší než hledané číslo.
)

rem opakování smyčky
goto loop

:end
pausese