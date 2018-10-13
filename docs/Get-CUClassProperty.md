---
external help file: PSClassUtils-help.xml
Module Name: PSClassUtils
online version:
schema: 2.0.0
---

# Get-CUClassProperty

## SYNOPSIS
This function returns all existing properties of a specific powershell class.

## SYNTAX

```
Get-CUClassProperty [-ClassName] <String> [<CommonParameters>]
```

## DESCRIPTION
The Powershell Class must be loaded in memory for this function to work.

## EXAMPLES

### EXAMPLE 1
```
Get-CUClassProperty -ClassName wap
```

Name   Type
----   ----
prop3  String
String String
number Int32

## PARAMETERS

### -ClassName
{{Fill ClassName Description}}

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable.
For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### String
## OUTPUTS

### ClassMethod
## NOTES
Author: Stéphane van Gulick
Version: 0.7.1
www.powershellDistrict.com
Report bugs or submit feature requests here:
https://github.com/Stephanevg/PowerShellClassUtils

## RELATED LINKS