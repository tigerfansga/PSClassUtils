# Get-CUEnum

## SYNOPSIS
This function returns enums existing in a document.

## SYNTAX

```
Get-CUEnum [-Path] <String[]> [<CommonParameters>]
```

## DESCRIPTION
Returns a custom type \[ClassEnum\]

## EXAMPLES

### EXAMPLE 1
```
Get-CuEnum -Path C:\plop\enum.ps1
```

Returns:

Name Member
---- ------
woop {Absent, Present}

## PARAMETERS

### -Path
{{Fill Path Description}}

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable.
For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### String
## OUTPUTS

### Classenum
## NOTES
Author: St ©phane van Gulick
Version: 0.2.0

## RELATED LINKS

[https://github.com/Stephanevg/PowerShellClassUtils](https://github.com/Stephanevg/PowerShellClassUtils)

