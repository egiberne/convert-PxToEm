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
    .LINK
    Online version: https://github.com/egiberne/Convert-PxToEm
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
            "Ratio"=''
        }
        if ($PSItem){
            $PxToEm.DefaultPixel = $FontSize
            $PxToEm.TargetedPixel = $_
            $PxToEm.Ratio = $FontSize/ $_
            $PxToEm | Add-Member -MemberType ScriptProperty -Name "Compute" -Value {"$($this.DefaultPixel)px/$($this.TargetedPixel) = $($this.Ratio) em"} -Force
            return  $PxToEm
            #return $FontSize/ $_
        } else {
            $PxToEm.DefaultPixel = $FontSize
            $PxToEm.TargetedPixel=$PixelValue
            $PxToEm.Ratio =  $FontSize/ $PixelValue
            $PxToEm | Add-Member -MemberType ScriptProperty -Name "Compute" -Value {"$($this.DefaultPixel)px/$($this.TargetedPixel) = $($this.Ratio) em"} -Force            
            return  $PxToEm
            #return $FontSize/ $PixelValue
        }

    }

    end{ }
    
 
}