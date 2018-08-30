Class ClassConstructor {
    [String]$Name
    [ClassParameter[]]$Parameter

    ClassConstructor([String]$Name,[ClassParameter[]]$Parameter){
        $this.Name = $Name
        $This.Parameter = $Parameter
    }

}