function Invoke-BashSum {
    param (
        [Parameter(Mandatory = $true)]
        $Num1,
        [Parameter(Mandatory = $true)]
        $Num2
    )
    try {
        # Validate and convert inputs to integers
        $Num1 = [int]$Num1
        $Num2 = [int]$Num2

        # Capture output from bash
        $result = bash ./TestBash.sh $Num1 $Num2
    }
    catch {
        Write-Host "ERROR: Either inputs are not integers or bash script failed." -ForegroundColor Red
        exit 1  
    }

    Write-Host "OutPut from Powershell" $result
}

# Function call
Invoke-BashSum -Num1 $Num1 -Num2 $Num2



