# 📧 Configurar Envio de Email - Formulário de Contato

O formulário "Fale Conosco" precisa ser configurado para enviar emails diretamente para `suporte@zapdobarbeiro.com.br`.

## 🚀 Opção 1: Formspree (Recomendado - Mais Simples)

### Passo a Passo:

1. **Criar conta no Formspree:**
   - Acesse: https://formspree.io/
   - Clique em "Sign Up" (gratuito)
   - Faça login com Google ou crie conta

2. **Criar um novo formulário:**
   - No dashboard, clique em "New Form"
   - Nome: "Zap do Barbeiro - Contato"
   - Email de destino: `suporte@zapdobarbeiro.com.br`
   - Clique em "Create"

3. **Copiar o Form ID:**
   - Após criar, você verá algo como: `https://formspree.io/f/xpzgkqyz`
   - O Form ID é a parte final: `xpzgkqyz`

4. **Configurar no código:**
   - Abra o arquivo `index.html`
   - Procure por: `const FORMSPREE_FORM_ID = 'YOUR_FORM_ID';`
   - Substitua `YOUR_FORM_ID` pelo seu Form ID
   - Exemplo: `const FORMSPREE_FORM_ID = 'xpzgkqyz';`

5. **Pronto!** O formulário funcionará automaticamente.

### Limites do Plano Gratuito:
- 50 envios por mês
- Para mais envios, considere o plano pago ($10/mês = 1000 envios)

---

## 🔧 Opção 2: EmailJS (Alternativa)

### Passo a Passo:

1. **Criar conta no EmailJS:**
   - Acesse: https://www.emailjs.com/
   - Clique em "Sign Up" (gratuito)
   - Faça login

2. **Adicionar Serviço de Email:**
   - No dashboard, vá em "Email Services"
   - Clique em "Add New Service"
   - Escolha seu provedor (Gmail, Outlook, etc.)
   - Siga as instruções para conectar sua conta
   - Anote o **Service ID** (ex: `service_abc123`)

3. **Criar Template de Email:**
   - Vá em "Email Templates"
   - Clique em "Create New Template"
   - Configure:
     - **To Email:** `suporte@zapdobarbeiro.com.br`
     - **Subject:** `Contato - Zap do Barbeiro`
     - **Content:**
       ```
       Nome: {{from_name}}
       Email: {{from_email}}
       
       Mensagem:
       {{message}}
       
       ---
       Responder para: {{reply_to}}
       ```
   - Salve e anote o **Template ID** (ex: `template_xyz789`)

4. **Obter Public Key:**
   - Vá em "Account" > "General"
   - Copie a **Public Key** (ex: `abcdefghijklmnop`)

5. **Configurar no código:**
   - Abra o arquivo `index.html`
   - Procure pelas constantes:
     ```javascript
     const EMAILJS_SERVICE_ID = 'YOUR_SERVICE_ID';
     const EMAILJS_TEMPLATE_ID = 'YOUR_TEMPLATE_ID';
     const EMAILJS_PUBLIC_KEY = 'YOUR_PUBLIC_KEY';
     ```
   - Substitua pelos valores obtidos:
     ```javascript
     const EMAILJS_SERVICE_ID = 'service_abc123';
     const EMAILJS_TEMPLATE_ID = 'template_xyz789';
     const EMAILJS_PUBLIC_KEY = 'abcdefghijklmnop';
     ```

6. **Pronto!** O formulário funcionará automaticamente.

### Limites do Plano Gratuito:
- 200 emails por mês
- Para mais, considere o plano pago ($15/mês = 1000 emails)

---

## ✅ Testar o Formulário

Após configurar:

1. Acesse o site
2. Vá em "Fale Conosco"
3. Preencha o formulário
4. Clique em "Enviar Mensagem"
5. Você deve ver uma mensagem de sucesso
6. Verifique se o email chegou em `suporte@zapdobarbeiro.com.br`

---

## 🆘 Problemas Comuns

**"Por favor, configure EmailJS ou Formspree"**
- Você ainda não configurou as credenciais
- Siga as instruções acima

**Email não chega**
- Verifique se as credenciais estão corretas
- Verifique a caixa de spam
- Teste com outro email

**Erro 429 (Too Many Requests)**
- Você excedeu o limite do plano gratuito
- Considere fazer upgrade ou aguardar o próximo mês

---

---

## 🏢 Opção 3: EmailJS com SMTP da Hostinger (Recomendado se você tem email na Hostinger)

Se você tem o email `suporte@zapdobarbeiro.com.br` hospedado na Hostinger, esta é a melhor opção!

### Vantagens:
- ✅ Usa seu próprio email da Hostinger
- ✅ Sem limites de terceiros (além do plano do EmailJS)
- ✅ Emails enviados diretamente do seu domínio
- ✅ Mais profissional

### Passo a Passo:
Consulte o arquivo **`CONFIGURAR_EMAIL_HOSTINGER.md`** para instruções detalhadas.

**Resumo rápido:**
1. Obter credenciais SMTP da Hostinger (`smtp.hostinger.com`)
2. Criar conta no EmailJS
3. Configurar serviço SMTP customizado no EmailJS
4. Criar template de email
5. Configurar no código

---

## 📝 Recomendação

- **Se você tem email na Hostinger:** Use **Opção 3** (EmailJS com SMTP da Hostinger) - Veja `CONFIGURAR_EMAIL_HOSTINGER.md`
- **Se não tem email próprio:** Use **Formspree** (Opção 1) - Mais simples e rápido
