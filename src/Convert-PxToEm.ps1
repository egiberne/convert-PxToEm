# 4. Script with advanced functions

function Convert-PxToEm{
    <#
    .SYNOPSIS 
    Convert pixel value to em value.
    .DESCRIPTION 
    Convert-PxToEm converts one or more pixel values into their equivalent
    em values by dividing each pixel value by the provided font size.
    This allows developers to translate fixed pixel measurements into
    scalable, typography-relative em units.
    .PARAMETER FontSize
    Default font-size of the element.
    .PARAMETER PixelValue
    Pixel Value to convert.
    .INPUTS
    System.Int32. You can pipe one or multiple pixel value to Convert-PxToEm.
    .OUTPUTS
    System.Management.Automation.PSCustomObject. Convert-PxToEm returns a PSCustomObject that provide result of the conversion.
    .EXAMPLE
    PS> Convert-pxToEm 18 36
    DefaultSize Pixel Ratio Result
    ----------- ----- ----- ------
         18    36  0.50 36px:0.5em
    .EXAMPLE 
    PS>$P2E = Convert-PxToEm 16 32 
    PS> $P2E | Format-List
    DefaultSize : 16
    Pixel       : 32
    Ratio       : 0.5
    Result      : 32px:0.5em
    .EXAMPLE
    PS>16, 32 | Convert-PxToEm -FontSize 16
    DefaultSize Pixel Ratio Result
    ----------- ----- ----- ------
             16    16     1 16px:1em
             16    32  0.50 32px:0.5em
    .EXAMPLE
    PS>$array = @(16,32)
    PS>Convert-PxToEm @array
    DefaultPixel TargetedPixel Ratio Compute
    ------------ ------------- ----- -------
              16            32  0.50 16px/32 = 0.5 em
    .EXAMPLE
    PS>$hashtab = @{FontSize=16 ; Pixelvalue=32}
    PS>Convert-PxToEm @hashtab
    DefaultPixel TargetedPixel Ratio Compute
    ------------ ------------- ----- -------
              16            32  0.50 16px/32 = 0.5 em
    .LINK
    GitHub Repo: https://github.com/egiberne/Convert-PxToEm
    .NOTES
    Author  : EMERICK GIBERNE
    Version : 0.10.2
    #>

    [CmdletBinding()]
    param(
        [Parameter(Position = 0)]
        [ValidateRange(1, [int]::MaxValue)]
        [PSDefaultValue(Help= 'Defaults to 16px. Standard browser font size.')]    
        [int]$FontSize = 16,

        [Parameter(
            Position =1,
            ValueFromPipeline, 
            ValueFromPipelineByPropertyName, 
            Mandatory)]
        [ValidateRange(1, [int]::MaxValue)]
        [int]$PixelValue
    )
    begin{}

    process{

        $PxToEm = [PSCustomObject]@{
            "DefaultPixel"=''
            "TargetedPixel"=''
            "Em"=''
        }
        if ($PSItem){
            $PxToEm.DefaultPixel = $FontSize
            $PxToEm.TargetedPixel = $_
            $PxToEm.Em = $FontSize/ $_
            $PxToEm | Add-Member -MemberType ScriptProperty -Name "Operation" -Value {"$($this.DefaultPixel)px/$($this.TargetedPixel)px = $($this.Em)em"} -Force
            return  $PxToEm
        } else {
            $PxToEm.DefaultPixel = $FontSize
            $PxToEm.TargetedPixel = $PixelValue
            $PxToEm.Em=  $FontSize/ $PixelValue
            $PxToEm | Add-Member -MemberType ScriptProperty -Name "Operation" -Value {"$($this.DefaultPixel)px/$($this.TargetedPixel)px = $($this.Em)em"} -Force            
            return  $PxToEm
        }

    }

    end{ }
    
 
}

