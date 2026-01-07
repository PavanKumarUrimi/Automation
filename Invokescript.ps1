function Invoke-BashSum {
    param (
        [int]$Num1,
        [int]$Num2
    )

    # Capture output from bash
    $result = bash ./TestBash.sh $Num1 $Num2

    Write-Host "OutPut from Powershell" $result
}

# Function call
Invoke-BashSum -Num1 10 -Num2 20
