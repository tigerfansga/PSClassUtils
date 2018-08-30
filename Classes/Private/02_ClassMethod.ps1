Class ClassMethod {
    [String]$Name
    [String]$ReturnType
    [ClassParameter[]]$Parameter

    ClassMethod([String]$Name,[String]$ReturnType,[ClassParameter[]]$Parameters){
        $this.Name = $Name
        $This.ReturnType = $ReturnType
        $This.Parameter = $Parameters
    }

}