# 📋 Guia de Configuração do GitHub

## Status Atual ✅

- ✅ Repositório Git inicializado
- ✅ Arquivos commitados (4 arquivos)
- ✅ Branch configurada como `main`
- ⏳ Aguardando conexão com GitHub remoto

## Passo a Passo para Conectar ao GitHub

### 1️⃣ Criar Repositório no GitHub

**Opção A - Via Navegador (Recomendado):**
1. Acesse: https://github.com/new
2. Nome do repositório: `Website_Zapdobarbeiro`
3. Descrição: `Website do Zap do Barbeiro - Assistente de Barbearia Inteligente`
4. Escolha: **Público** ou **Privado**
5. ⚠️ **NÃO** marque nenhuma opção (README, .gitignore, license)
6. Clique em **Create repository**

**Opção B - Via Script PowerShell:**
Execute o script `setup-github.ps1` que irá guiá-lo no processo.

### 2️⃣ Conectar Repositório Local ao GitHub

Após criar o repositório no GitHub, execute:

```powershell
# Substitua 'rafaelgl' pelo seu usuário do GitHub
git remote add origin https://github.com/rafaelgl/Website_Zapdobarbeiro.git
git push -u origin main
```

**OU** execute o script automatizado:
```powershell
.\setup-github.ps1
```

### 3️⃣ Ativar GitHub Pages

1. No GitHub, vá até seu repositório
2. Clique em **Settings** (Configurações)
3. No menu lateral, clique em **Pages**
4. Em **Source**, selecione:
   - Branch: `main`
   - Folder: `/ (root)`
5. Clique em **Save**

### 4️⃣ Acessar seu Site

Após alguns minutos, seu site estará disponível em:
```
https://rafaelgl.github.io/Website_Zapdobarbeiro/
```

## 🔧 Comandos Úteis

```bash
# Verificar status
git status

# Ver remotes configurados
git remote -v

# Fazer push das alterações
git push origin main

# Ver histórico de commits
git log --oneline
```

## ❓ Problemas Comuns

**Erro: "remote origin already exists"**
```bash
git remote remove origin
git remote add origin https://github.com/SEU-USUARIO/Website_Zapdobarbeiro.git
```

**Erro: "failed to push"**
- Verifique se o repositório existe no GitHub
- Verifique suas credenciais do GitHub
- Tente usar autenticação via token: `git remote set-url origin https://SEU-TOKEN@github.com/SEU-USUARIO/Website_Zapdobarbeiro.git`

## 📞 Suporte

Se encontrar problemas, verifique:
- ✅ Repositório existe no GitHub
- ✅ Nome do repositório está correto
- ✅ Credenciais do GitHub estão configuradas
- ✅ Branch está como `main`

