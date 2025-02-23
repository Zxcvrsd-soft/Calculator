@echo off
chcp 65001
color 3
cls
:start
echo Выберите операцию:
echo 1. Сложение
echo 2. Вычитание
echo 3. Умножение
echo 4. Деление
echo 5. Выход
set /p choice=Ввод: 
if "%choice%"=="1" goto addition
if "%choice%"=="2" goto subtraction
if "%choice%"=="3" goto multiplication
if "%choice%"=="4" goto division
if "%choice%"=="5" exit
goto start

:addition
cls
echo Введите первое число:
set /p num1=
echo Введите второе число:
set /p num2=
set /a result=%num1%+%num2%
echo Результат: %result%
pause
goto start

:subtraction
cls
echo Введите первое число:
set /p num1=
echo Введите второе число:
set /p num2=
set /a result=%num1%-%num2%
echo Результат: %result%
pause
goto start

:multiplication
cls
echo Введите первое число:
set /p num1=
echo Введите второе число:
set /p num2=
set /a result=%num1%*%num2%
echo Результат: %result%
pause
goto start

:division
cls
echo Введите первое число:
set /p num1=
echo Введите второе число:
set /p num2=
if %num2%==0 (
    echo Ошибка: деление на ноль!
    pause
    goto start
)
set /a result=%num1%/%num2%
echo Результат: %result%
pause
goto start