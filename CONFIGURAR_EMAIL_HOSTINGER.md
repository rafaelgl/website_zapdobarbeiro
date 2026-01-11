# 📧 Configurar Envio de Email usando Hostinger

Como você tem o email `suporte@zapdobarbeiro.com.br` hospedado na Hostinger, vamos configurar o envio usando as credenciais SMTP da Hostinger através do EmailJS.

## 🎯 Por que EmailJS com SMTP da Hostinger?

- ✅ Usa seu próprio email da Hostinger
- ✅ Sem limites de terceiros
- ✅ Emails enviados diretamente do seu domínio
- ✅ Gratuito até 200 emails/mês no EmailJS

---

## 📋 Passo a Passo Completo

### 1️⃣ Obter Credenciais SMTP da Hostinger

1. **Acesse o painel da Hostinger:**
   - Faça login em: https://hpanel.hostinger.com/
   - Ou acesse: https://www.hostinger.com.br/hpanel

2. **Encontrar configurações de email:**
   - No menu, procure por **"Email"** ou **"E-mails"**
   - Clique em **"Gerenciar"** ou **"Configurações"**

3. **Obter informações SMTP:**
   - **Servidor SMTP:** `smtp.hostinger.com`
   - **Porta SMTP:** `465` (SSL) ou `587` (TLS)
   - **Usuário:** `suporte@zapdobarbeiro.com.br` (seu email completo)
   - **Senha:** A senha da sua conta de email
   - **Segurança:** SSL/TLS

   ⚠️ **Nota:** Se não encontrar essas informações, entre em contato com o suporte da Hostinger.

---

### 2️⃣ Criar Conta no EmailJS

1. **Acesse o EmailJS:**
   - Vá para: https://www.emailjs.com/
   - Clique em **"Sign Up"** (gratuito)

2. **Criar conta:**
   - Use seu email ou faça login com Google
   - Confirme seu email se necessário

---

### 3️⃣ Configurar Serviço SMTP no EmailJS

1. **No dashboard do EmailJS:**
   - Clique em **"Email Services"** no menu lateral
   - Clique em **"Add New Service"**

2. **Escolher SMTP:**
   - Role até encontrar **"Custom SMTP Server"**
   - Clique em **"Connect"**

3. **Preencher dados SMTP da Hostinger:**
   ```
   Service Name: Hostinger SMTP
   SMTP Server: smtp.hostinger.com
   SMTP Port: 465 (ou 587 se preferir TLS)
   SMTP Username: suporte@zapdobarbeiro.com.br
   SMTP Password: [sua senha do email]
   Security: SSL/TLS
   ```

4. **Testar conexão:**
   - Clique em **"Test Connection"**
   - Se funcionar, você verá uma mensagem de sucesso
   - Clique em **"Create Service"**

5. **Anotar o Service ID:**
   - Após criar, você verá algo como: `service_abc123`
   - **Copie este ID** - você precisará dele depois

---

### 4️⃣ Criar Template de Email

1. **No dashboard do EmailJS:**
   - Clique em **"Email Templates"** no menu lateral
   - Clique em **"Create New Template"**

2. **Configurar template:**
   - **Template Name:** `Contato Zap do Barbeiro`
   - **Subject:** `Contato - Zap do Barbeiro`
   - **Content (HTML ou Text):**
     ```
     Novo contato recebido através do site:
     
     Nome: {{from_name}}
     Email: {{from_email}}
     
     Mensagem:
     {{message}}
     
     ---
     Responder para: {{reply_to}}
     ```

3. **Configurar destinatário:**
   - **To Email:** `suporte@zapdobarbeiro.com.br`
   - **From Name:** `Site Zap do Barbeiro`
   - **From Email:** `suporte@zapdobarbeiro.com.br`

4. **Salvar template:**
   - Clique em **"Save"**
   - **Anotar o Template ID** (ex: `template_xyz789`)

---

### 5️⃣ Obter Public Key

1. **No dashboard do EmailJS:**
   - Clique em **"Account"** > **"General"**
   - Procure por **"Public Key"**
   - **Copie a Public Key** (ex: `abcdefghijklmnop`)

---

### 6️⃣ Configurar no Código

1. **Abrir o arquivo `index.html`**

2. **Localizar as constantes de configuração:**
   Procure por estas linhas (por volta da linha 500):
   ```javascript
   const EMAILJS_SERVICE_ID = 'YOUR_SERVICE_ID';
   const EMAILJS_TEMPLATE_ID = 'YOUR_TEMPLATE_ID';
   const EMAILJS_PUBLIC_KEY = 'YOUR_PUBLIC_KEY';
   ```

3. **Substituir pelos valores obtidos:**
   ```javascript
   const EMAILJS_SERVICE_ID = 'service_abc123';      // Seu Service ID
   const EMAILJS_TEMPLATE_ID = 'template_xyz789';    // Seu Template ID
   const EMAILJS_PUBLIC_KEY = 'abcdefghijklmnop';    // Sua Public Key
   ```

4. **Salvar o arquivo**

5. **Fazer commit e push:**
   ```bash
   git add index.html
   git commit -m "Configure EmailJS with Hostinger SMTP"
   git push origin main
   ```

---

## ✅ Testar o Formulário

1. **Acesse o site:**
   - Vá para: `https://zapdobarbeiro.com.br`
   - Navegue até **"Fale Conosco"**

2. **Preencher o formulário:**
   - Digite seu nome
   - Digite um email de teste
   - Digite uma mensagem de teste

3. **Enviar:**
   - Clique em **"Enviar Mensagem"**
   - Você deve ver uma mensagem de sucesso

4. **Verificar email:**
   - Acesse `suporte@zapdobarbeiro.com.br`
   - Verifique se o email chegou (incluindo spam)

---

## 🔧 Configurações SMTP da Hostinger (Referência)

Se precisar verificar ou reconfigurar:

| Configuração | Valor |
|--------------|-------|
| **Servidor SMTP** | `smtp.hostinger.com` |
| **Porta SSL** | `465` |
| **Porta TLS** | `587` |
| **Segurança** | SSL/TLS |
| **Autenticação** | Sim |
| **Usuário** | `suporte@zapdobarbeiro.com.br` |
| **Senha** | [sua senha do email] |

---

## 🆘 Problemas Comuns

### "Connection failed" no EmailJS
- ✅ Verifique se o servidor SMTP está correto: `smtp.hostinger.com`
- ✅ Verifique se a porta está correta: `465` ou `587`
- ✅ Verifique se o usuário está completo: `suporte@zapdobarbeiro.com.br`
- ✅ Verifique se a senha está correta
- ✅ Tente usar porta `587` com TLS se `465` não funcionar

### Email não chega
- ✅ Verifique a caixa de spam
- ✅ Verifique se o template está configurado corretamente
- ✅ Verifique se o "To Email" no template está correto
- ✅ Teste enviando para outro email primeiro

### "Invalid credentials"
- ✅ Verifique se está usando o email completo como usuário
- ✅ Verifique se a senha está correta
- ✅ Tente redefinir a senha do email na Hostinger

### Erro 429 (Too Many Requests)
- ✅ Você excedeu o limite de 200 emails/mês do plano gratuito
- ✅ Considere fazer upgrade no EmailJS ou aguardar o próximo mês

---

## 📞 Suporte

### Hostinger
- **Suporte:** https://www.hostinger.com.br/contato
- **Chat:** Disponível no painel hPanel
- **Email:** suporte@hostinger.com.br

### EmailJS
- **Documentação:** https://www.emailjs.com/docs/
- **Suporte:** https://www.emailjs.com/support/

---

## 🎯 Resultado Final

Após configurar tudo:
- ✅ Formulário envia emails diretamente
- ✅ Emails chegam em `suporte@zapdobarbeiro.com.br`
- ✅ Sem necessidade de abrir cliente de email
- ✅ Usando seu próprio servidor SMTP da Hostinger
- ✅ Mensagem de sucesso elegante no site

---

**Dica:** Mantenha suas credenciais seguras. Nunca compartilhe sua Public Key ou senha SMTP publicamente.
