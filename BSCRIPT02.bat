@echo off
setlocal enabledelayedexpansion

:menu
echo Choose a shape:
echo  Circle
echo  Triangle
echo  Quadrilateral
set /p shape=Enter your choice: 

if %shape%==Circle goto circle
if %shape%==Triangle goto triangle
if %shape%==Quadrilateral goto quadrilateral
goto menu

:circle
set /p radius=Enter the radius of the circle: 
set /a area=3.14*%radius%*%radius%
echo The area of the circle is %area%
goto end

:triangle
set /p a=Enter the length of the first side: 
set /p b=Enter the length of the second side: 
set /p c=Enter the length of the third side: 
set /a s=(%a% + %b% + %c%) / 2
set /a area=sqrt(%s% * (%s% - %a%) * (%s% - %b%) * (%s% - %c%))
echo The area of the triangle is %area%

if %a%==%b% if %b%==%c% (
    echo The triangle is equilateral
) else if %a%==%b% if not %b%==%c% (
    echo The triangle is isosceles
) else if not %a%==%b% if not %b%==%c% (
    echo The triangle is scalene
)
goto end

:quadrilateral
set /p length=Enter the length: 
set /p width=Enter the width: 
set /a area=%length%*%width%
echo The area of the quadrilateral is %area%

if %length%==%width% (
    echo The quadrilateral is a square
) else (
    echo The quadrilateral is a rectangle
)
goto end

:end
pause
