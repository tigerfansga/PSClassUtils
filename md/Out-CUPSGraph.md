# Out-CUPSGraph

## SYNOPSIS
Generates the graph output.
It requires input from Get-CUAST (input of type ASTDOcument)

## SYNTAX

```
Out-CUPSGraph [-inputObject] <ASTDocument[]> [-IgnoreCase] [<CommonParameters>]
```

## DESCRIPTION
This function is based on psgraph, which wih is a module to generate diagrams using GraphViz.
If psgraph is not present, it will throw.

## EXAMPLES

### EXAMPLE 1
```

```

## PARAMETERS

### -inputObject
This parameter expects an array of ASTDocument.
(Can be generated using Get-CUAST).

```yaml
Type: ASTDocument[]
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -IgnoreCase
If there is a difference in the casesensitivity of the a parent class, and it's child class, drawing the inheritence might not work as expected.
Forcing the case sensitivy to be everywhere the same when creating the objects in PSGraph resolves this issue (See issue here -\> https://github.com/KevinMarquette/PSGraph/issues/68 )
Using -IgnoreCase will force all class names to be set to 'TitleCase', reglardless of the case sensitivity they had before.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable.
For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### Pipeline input from a ASTDocument Object
## OUTPUTS

### Output (if any)
## NOTES
General notes

## RELATED LINKS
