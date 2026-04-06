# Changelog

## 0.10.3 - 2026-04-05
### Fixed
Clean up the code by deleting the unnecessary comments
### Changed
Replace `Ratio` by `Em` in the structured return

## 0.10.2 - 2026-04-05
### Fixed
Correct the misspelled  words  in the file, Changelog
Correct the wording in the file, Changelog to clarify the explanations 
### Added
Complete the roadmap in the README with new steps

## 0.10.1 - 2026-04-05
### Added
- Support array splatting by using statement `Parameter`
with the attribute `Position = 0` for the parameter `$SizeFont` and `Position = 1` for the parameter `$PixelValue`
- Support the pipeline with using the statement `ValueFromPipelineByPropertyName` to assign value with name\value
### Changed
Replace the description to have a detailed explanation of the function’s purpose, behavior, and usage.

## 0.10.0 - 2026-04-05
### Added
- Support parameters validation with the statement `ValidateRange`

## 0.9.0 - 2026-04-05
### Changed
- Support pipeline by using the statement `ValueFromPipeline` to assign variable through the pipe
- Implement `CmdletBinding` with the keyword `Mandatory` for $PixelValue as it is required
- Replace the ordered list in the roadmap section Script module with unordered list
- Refactor the move to `PSCustomObject` to the section `process`

## 0.8.0 - 2026-04-04
### Added
Implement advanced function by using the statement  `CmdletBinding` to leverage Cmdlet features
### Changed
- Remove the type of the parameter `-FontSize` and `-PixelValue` to implement splatting afterwards
### Fixed
Rephrase the content of the roadmap to be more specific

## 0.7.0 - 2026-04-04
### Added
Implement the PowerShell Object with the type `PSCustomObject` to return a object with the default pixel size, 
the targeted pixel size, the operation of the conversion in em and a text result
### Changed
Replace the examples with new outputs because of the `PSObject` returned

## 0.6.0 - 2026-04-04
### Added
Support pipeline by using the statement `ValueFromPipeline` to assign one or multiple pixel values to the function by piping

### Changed
Update the roadmap in the README to detail the features implemented

## 0.5.0 - 2026-04-04
### Changed
Replace the `Write-Host` in the `return` keyword to assign a `String` value to a variable or to pipe to other commands

## 0.4.1 - 2026-04-03
### Fixed
- Correct the script with appropriate comment as know as `Comment-Base Help`
- Correct the misspelled words in the README

## 0.4.0 - 2026-04-03
### Changed
- Update the README with the new badge for Visual Studio Code
- Use a variable to provide the output of the function with Write-Host
- Update the README with Output sections
### Fixed
Correct the misspelled words in the README

## 0.3.0 - 2026-04-03
### Changed
- Update the README with the section, Requirement to be allow to run the script
- Update the README with the section, Example to explain how to use the script 
- Implement a simple function `Convert-PxToEm`

## 0.2.1 - 2026-04-03
### Fixed
Correct the Roadmap in the README to a ordered list

### Changed
Update the README with the badge related to the MIT License

## 0.2.0 - 2026-04-03
### Changed
- Implement the script with variables and parameters
- Update the Roadmap section in the the README with the step, Script with functions

## 0.1.0 - 2026-04-03

### Added
- Implement the script with one-liner commands
- Update the README.md with a badge

## 0.0.0 - 2026-04-03
Initial release