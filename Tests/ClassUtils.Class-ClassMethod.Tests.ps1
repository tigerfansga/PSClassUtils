Import-Module -Force $PSScriptRoot\..\PSClassUtils.psm1

InModuleScope PSClassUtils -ScriptBlock {

    Describe "Testing Class: 'ClassMethod'" {

        Context "[ClassMethod] Constructors and Instantiation" {

        
            it '[ClassMethod][Instantiation] (Empty ClassParameter Array) should create an instance without throwing' {
                $Properties = [ClassParameter[]]@()
                {[ClassMethod]::New("DoStuffPlease", "String", $Properties)} | should not throw
            }

            it '[ClassMethod][Instantiation] (ClassParameter 1 element) should create an instance without throwing' {
                $Properties = [ClassParameter[]]@()
                $Properties += [ClassParameter]::New("PropName", "String")
                {[ClassMethod]::New("DoStuffPlease", "String", $Properties)} | should not throw
            }

            it '[ClassMethod][Instantiation] (ClassProperty 10 elements) should create an instance without throwing' {
                $Properties = [ClassProperty[]]@()
                for ($i = 0; $i++; $i -eq 10) {
                    $Properties += [ClassProperty]::New("Prop$1", "String")
                }
            
                {[ClassMethod]::New("DoStuffPlease", "String", $Properties)} | should not throw
            }
        }
        Context "[ClassMethod] Properties" {

        
            it '[ClassMethod][Properties] Instance should have 3 Properties' {
            
                $Properties = [ClassParameter[]]@()
                $Instance = [ClassMethod]::New("DoStuffPlease", "String", $Properties)
                ($Instance | gm | ? {$_.MemberType -eq "Property"} | measure).Count | should be 3
            }

            $Properties = [ClassParameter[]]@()
            $Properties += [ClassParameter]::New("PropName", "String")
            $Instance = [ClassMethod]::New("DoStuffPlease", "String", $Properties)
            $Values = @("Name", "ReturnType", "Parameter")
            Foreach ($prop in $values) {
        
                it "[ClassMethod][Properties][$($prop)] Should be present on instance" {
                
                    ($Instance | gm | ? {$_.MemberType -eq "Property" -and $_.Name -eq $prop}).Name | should be $prop
            
                }
            }

        }
    }
}