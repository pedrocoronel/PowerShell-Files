#calc.ps1
param(
    [int]$n1,
    [string]$op,
    [int]$n2
)
switch ($op) {
    '+' {$r = $n1 + $n2}
    '-' {$r = $n1 - $n2}
    '/' {$r = $n1 / $n2}
    '*' {$r = $n1 * $n2}
    Default {"Operador invalido!"}
}
Write-Output $r
