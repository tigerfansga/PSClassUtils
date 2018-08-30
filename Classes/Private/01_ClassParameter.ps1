Class ClassParameter {
    [String]$Name
    [String]$Type

    ClassParameter([String]$Name,[String]$Type){

        $this.Name = $Name
        $This.Type = $Type
    }
}