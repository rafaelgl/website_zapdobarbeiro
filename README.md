# Zap do Barbeiro - Website

Website oficial do Zap do Barbeiro - O Assistente de Barbearia mais inteligente do mundo.

## 🚀 Como hospedar no GitHub Pages

### Opção 1: Usando o script PowerShell (Recomendado)

1. Execute o script de configuração:
```powershell
.\setup-github.ps1
```

2. Siga as instruções na tela para conectar ao seu repositório GitHub

3. Faça o push dos arquivos:
```bash
git push -u origin main
```

### Opção 2: Configuração Manual

1. **Crie o repositório no GitHub:**
   - Acesse https://github.com/new
   - Nome: `Website_Zapdobarbeiro` (ou outro nome de sua escolha)
   - Público ou Privado
   - Não inicialize com README, .gitignore ou license

2. **Conecte o repositório local ao GitHub:**
```bash
git remote add origin https://github.com/SEU-USUARIO/Website_Zapdobarbeiro.git
git branch -M main
git push -u origin main
```

3. **Ative o GitHub Pages:**
   - No GitHub, vá em **Settings** > **Pages**
   - Em **Source**, selecione a branch **main** e a pasta **/ (root)**
   - Clique em **Save**

4. **Aguarde alguns minutos** e seu site estará disponível em:
   `https://SEU-USUARIO.github.io/Website_Zapdobarbeiro/`

### Status Atual

✅ Repositório Git inicializado  
✅ Arquivos commitados  
✅ Branch renomeada para `main`  
⏳ Aguardando conexão com GitHub remoto

## 📁 Estrutura do Projeto

```
Website_Zapdobarbeiro/
├── index.html      # Página principal
├── styles.css      # Estilos da página
└── README.md       # Este arquivo
```

## 🎨 Características

- Design moderno e responsivo
- Animações suaves
- Gradiente de fundo atraente
- Compatível com todos os dispositivos

## 📝 Licença

© 2024 Zap do Barbeiro. Todos os direitos reservados.

