#$ScriptPath = Split-Path $MyInvocation.MyCommand.Path

Import-Module -Force $PSScriptRoot\..\PSClassUtils.psm1

InModuleScope PSClassUtils -ScriptBlock {

    Describe "Testing Class: 'ClassConstructor'" {

        Context "[ClassConstructor] Constructors and Instantiation" {

        
            it '[ClassConstructor][Instantiation] (Empty ClassProperty Array) should create an instance without throwing' {
                $Properties = [ClassParameter[]]@()
                {[ClassConstructor]::New("DoStuffPlease", $Properties)} | should not throw
            }

            it '[ClassConstructor][Instantiation] (ClassParameter 1 element) should create an instance without throwing' {
                $Properties = [ClassParameter[]]@()
                $Properties += [ClassParameter]::New("PropName", "String")
                {[ClassConstructor]::New("DoStuffPlease", $Properties)} | should not throw
            }

            it '[ClassConstructor][Instantiation] (ClassParameter 10 elements) should create an instance without throwing' {
                $Properties = [ClassParameter[]]@()
                for ($i = 0; $i++; $i -eq 10) {
                    $Properties += [ClassParameter]::New("Prop$1", "String")
                }
            
                {[ClassConstructor]::New("DoStuffPlease", $Properties)} | should not throw
            }
        }
        Context "[ClassConstructor] Properties" {

        
            it '[ClassConstructor][ClassParameter] Instance should have 2 Properties' {
            
                $Properties = [ClassParameter[]]@()
                $Instance = [ClassConstructor]::New("DoStuffPlease", $Properties)
                ($Instance | gm | ? {$_.MemberType -eq "Property"} | measure).Count | should be 2
            }

            $Properties = [ClassParameter[]]@()
            $Properties += [ClassParameter]::New("PropName", "String")
            $Instance = [ClassConstructor]::New("DoStuffPlease", $Properties)
            $Values = @("Name", "Parameter")
            Foreach ($prop in $values) {
        
                it "[ClassConstructor][Properties][$($prop)] Should be present on instance" {
                
                    ($Instance | gm | ? {$_.MemberType -eq "Property" -and $_.Name -eq $prop}).Name | should be $prop
            
                }
            }

            it "[ClassConstructor][Properties][Type] Should be of type 'ClassParameter[]'" {
                
                ($Instance.parameter.GetType()).FullName | should be "ClassParameter[]"
        
            }

        }
    }
}