# 4. Script with advanced functions

<--!
.
-->

function Convert-PxToEm{

    param(
        [int] $FontSize,
        [int] $PixelValue
    )

    $ratio = $FontSize/$PixelValue

    $output = "$PixelValue px is equivalent to $ratio em."

    Write-Host  $Output
}

Convert-PxToEm -FontSize 16 -PixelValue 32

# # 3. Script with simple function


# function Convert-PxToEm {

#     param(
#         [int] $FontSize,
#         [int] $PixelValue
#     )

#     $ratio = $FontSize/$PixelValue

#     Write-Host "$PixelValue px is equivalent to $ratio em."
# }


 
# Convert-PxToEm -FontSize 16 -PixelValue 32

# # 2. Script with variable and parameters

# param(
#     # parameters
#     [Int16] $FontSize,
#     [Int16] $PixelValue
# )

# # variable 
# $ratio = $FontSize/$PixelValue

# Write-Host $PixelValue"px is similar to : " $ratio"em."  



# # 1. Script with one-liner commands

# $FontSize = Read-Host "Default font-size of a element" 
# $PixelValue = Read-Host "Pixel value to convert"
# Write-Host $PixelValue"px is : " $($FontSize/$PixelValue) "em."
