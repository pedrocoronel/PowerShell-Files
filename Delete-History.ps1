#Delete-History.ps1
param(
    [switch]$c,
    [switch]$l,
    [switch]$b,
    [switch]$t,
    [switch]$help
)

$usuario = "machine"

if ($c) {
    rm "C:\Users\${usuario}\AppData\Roaming\Microsoft\Windows\PowerShell\PSReadLine\ConsoleHost_history.txt" -ErrorAction SilentlyContinue
}

elseif ($l) {
    type "C:\Users\${usuario}\AppData\Roaming\Microsoft\Windows\PowerShell\PSReadLine\ConsoleHost_history.txt"
}

elseif ($b) {
    [Microsoft.PowerShell.PSConsoleReadLine]::ClearHistory()
}

elseif ($t) {
    Write-Host @"
    Arquivo-Historico:
    C:\Users\${usuario}\AppData\Roaming\Microsoft\Windows\PowerShell\PSReadLine\ConsoleHost_history.txt
"@
}

elseif ($help) {
    Write-Host @"

    NOME:
        Delete-History

    SINTAXE:
        Delete-History -c = Limpa o histórico
        Delete-History -l = Lista o histórico
        Delete-History -b = Exibe o caminho do buffer
        Delete-History -t = Informações do script e caminho do arquivo de histórico
        Delete-History -help = Exibe esta mensagem de ajuda

    COMENTÁRIO:
        Apaga o Buffer e o Aquivo de historico do PowerShell
"@
}

else {
    Write-Host "Erro de sintaxe. Use -help para obter ajuda."
}
