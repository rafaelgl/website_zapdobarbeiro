# Zap do Barbeiro - Website

Website oficial do **Zap do Barbeiro** — o assistente de barbearia mais inteligente do mundo.

Site institucional estático, responsivo e preparado para publicação no GitHub Pages.

---

## 🚀 Como hospedar no GitHub Pages

### Opção 1: Script PowerShell (recomendado)

1. Execute o script de configuração:

   ```powershell
   .\setup-github.ps1
   ```

2. Siga as instruções na tela para conectar ao repositório no GitHub.

3. Envie os arquivos para o remoto:

   ```bash
   git push -u origin main
   ```

### Opção 2: Configuração manual

1. **Crie o repositório no GitHub**
   - Acesse https://github.com/new
   - Nome sugerido: `Website_Zapdobarbeiro`
   - Público ou privado
   - Não marque README, .gitignore ou license

2. **Conecte o repositório local ao GitHub**

   ```bash
   git remote add origin https://github.com/SEU-USUARIO/Website_Zapdobarbeiro.git
   git branch -M main
   git push -u origin main
   ```

3. **Ative o GitHub Pages**
   - No repositório: **Settings** → **Pages**
   - Em **Source**: branch **main**, pasta **/ (root)**
   - Salve com **Save**

4. Após alguns minutos, o site estará em:
   `https://SEU-USUARIO.github.io/Website_Zapdobarbeiro/`

---

## 📁 Estrutura do projeto

```
Website_Zapdobarbeiro/
├── index.html              # Página principal
├── politica-privacidade.html
├── termos-uso.html
├── styles.css              # Estilos globais
├── setup-github.ps1        # Script de configuração para GitHub
├── .gitignore
└── README.md
```

---

## 🎨 Características

- Design moderno e responsivo
- Animações suaves
- Gradiente de fundo atraente
- Compatível com dispositivos móveis e desktop
- Páginas de Política de Privacidade e Termos de Uso

---

## 📝 Licença

© 2025 Zap do Barbeiro. Todos os direitos reservados.
