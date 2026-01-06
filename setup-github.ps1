# Script para configurar e conectar ao GitHub
# Execute este script após criar o repositório no GitHub

Write-Host "=== Configuração do GitHub para Zap do Barbeiro ===" -ForegroundColor Cyan
Write-Host ""

# Solicitar o nome do repositório
$repoName = Read-Host "Digite o nome do repositório no GitHub (ex: Website_Zapdobarbeiro)"
$username = Read-Host "Digite seu usuário do GitHub (ex: rafaelgl)"

# URL do repositório
$repoUrl = "https://github.com/$username/$repoName.git"

Write-Host ""
Write-Host "Configurando remote origin..." -ForegroundColor Yellow
git remote add origin $repoUrl

if ($LASTEXITCODE -eq 0) {
    Write-Host "✓ Remote origin configurado com sucesso!" -ForegroundColor Green
} else {
    Write-Host "Tentando atualizar remote existente..." -ForegroundColor Yellow
    git remote set-url origin $repoUrl
    Write-Host "✓ Remote origin atualizado!" -ForegroundColor Green
}

Write-Host ""
Write-Host "Verificando configuração..." -ForegroundColor Yellow
git remote -v

Write-Host ""
Write-Host "=== Próximos passos ===" -ForegroundColor Cyan
Write-Host "1. Certifique-se de que o repositório '$repoName' existe no GitHub" -ForegroundColor White
Write-Host "2. Execute: git push -u origin main" -ForegroundColor White
Write-Host "3. No GitHub, vá em Settings > Pages e configure:" -ForegroundColor White
Write-Host "   - Source: Branch 'main' e pasta '/ (root)'" -ForegroundColor White
Write-Host "4. Seu site estará disponível em: https://$username.github.io/$repoName/" -ForegroundColor Green
Write-Host ""

