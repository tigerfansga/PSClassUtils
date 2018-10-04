---
external help file: PSClassUtils-help.xml
Module Name: PSClassUtils
online version:
schema: 2.0.0
---

# Get-CUAst

## SYNOPSIS
Helper function to get AST Class and Enum data from files or strings.

## SYNTAX

```
Get-CUAst [[-InputObject] <String[]>] [[-Path] <FileInfo[]>] [<CommonParameters>]
```

## DESCRIPTION
Get-CUAst returns an object of type \[ASTDocument\] which contains Classes, Enums, and the source file of the items.

## EXAMPLES

### EXAMPLE 1
```
Get-CUAst -Path "c:\Scripts\JeffHicks_StarShipModule.ps1"
```

#Returns

Classes                            Enums                         Source
-------                            -----                         ------
{mystarshIp, Cruiser, Dreadnought} {ShipClass, ShipSpeed, Cloak} JeffHicks_StarShipModule.ps1

### EXAMPLE 2
```
#It is possible to pass an array of paths as well.
```

$Arr = Get-CUAst -Path "C:\Scripts\JeffHicks_StarShipModule.ps1","C:\Scripts\BenGelens_CWindowsContainer.ps1"
$Arr

#Returns
Classes                            Enums                               Source
-------                            -----                               ------
{mystarshIp, Cruiser, Dreadnought} {ShipClass, ShipSpeed, Cloak}       JeffHicks_StarShipModule.ps1
{cWindowsContainer}                {Ensure, ContainerType, AccessMode} BenGelens_CWindowsContainer.ps1

### EXAMPLE 3
```
"C:\Scripts\JeffHicks_StarShipModule.ps1" | Get-CUAst
```

Classes                            Enums                               Source
-------                            -----                               ------
{mystarshIp, Cruiser, Dreadnought} {ShipClass, ShipSpeed, Cloak}       JeffHicks_StarShipModule.ps1

## PARAMETERS

### -InputObject
Accepts a single or array of strings.
If it contains powershell Classes or Enums, it will output an object.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Path
Must point to a file.
If it contains powershell Classes or Enums, it will output an object.

```yaml
Type: FileInfo[]
Parameter Sets: (All)
Aliases: FullName

Required: False
Position: 2
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable.
For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### An array of ASTDocuments
### [ASTDocument[]]
## NOTES

## RELATED LINKS
