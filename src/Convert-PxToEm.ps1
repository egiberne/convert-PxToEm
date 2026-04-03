# 2- Script with variable and parameters

param(
    # parameters
    [Int16] $FontSize,
    [Int16] $PixelValue
)

# variable 
$ratio = $FontSize/$PixelValue

Write-Host $PixelValue"px is similar to : " $ratio"em."  








# # 1- Script with oneliner commands

# $FontSize = Read-Host "Default font-size of a element" 
# $PixelValue = Read-Host "Pixel value to convert"
# Write-Host $PixelValue"px is : " $($FontSize/$PixelValue) "em."
