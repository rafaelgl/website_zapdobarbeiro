# 🌐 Configurar Domínio Personalizado: zapdobarbeiro.com.br

Este guia explica como configurar o domínio `zapdobarbeiro.com.br` para apontar para seu site no GitHub Pages.

## ✅ Passo 1: Arquivo CNAME Criado

O arquivo `CNAME` já foi criado no repositório com o conteúdo:
```
zapdobarbeiro.com.br
```

Este arquivo será commitado e enviado ao GitHub.

## 🔧 Passo 2: Configurar DNS no Provedor do Domínio

Você precisa configurar os registros DNS onde o domínio `zapdobarbeiro.com.br` está registrado (ex: Registro.br, GoDaddy, Namecheap, etc.).

### Opção A: Configuração Apex (Recomendada)
Para que `zapdobarbeiro.com.br` funcione diretamente:

**Adicione os seguintes registros DNS:**

| Tipo | Nome/Host | Valor/Destino | TTL |
|------|-----------|---------------|-----|
| A | @ ou zapdobarbeiro.com.br | 185.199.108.153 | 3600 |
| A | @ ou zapdobarbeiro.com.br | 185.199.109.153 | 3600 |
| A | @ ou zapdobarbeiro.com.br | 185.199.110.153 | 3600 |
| A | @ ou zapdobarbeiro.com.br | 185.199.111.153 | 3600 |

**OU use CNAME (se seu provedor permitir):**

| Tipo | Nome/Host | Valor/Destino | TTL |
|------|-----------|---------------|-----|
| CNAME | @ ou zapdobarbeiro.com.br | rafaelgl.github.io | 3600 |

### Opção B: Configuração Subdomínio (Alternativa)
Se preferir usar `www.zapdobarbeiro.com.br`:

| Tipo | Nome/Host | Valor/Destino | TTL |
|------|-----------|---------------|-----|
| CNAME | www | rafaelgl.github.io | 3600 |

⚠️ **Nota**: Se usar subdomínio, atualize o arquivo `CNAME` para `www.zapdobarbeiro.com.br`

## 📝 Passo 3: Configurar no GitHub Pages

1. **Acesse o repositório no GitHub:**
   - https://github.com/rafaelgl/website_zapdobarbeiro

2. **Vá em Settings > Pages**

3. **Na seção "Custom domain":**
   - Digite: `zapdobarbeiro.com.br`
   - Clique em **Save**

4. **Marque a opção "Enforce HTTPS"** (recomendado)
   - Isso força conexão segura (HTTPS)

5. **Aguarde a verificação**
   - O GitHub verificará automaticamente se o DNS está configurado
   - Pode levar alguns minutos até aparecer um ✅ verde

## ⏱️ Tempo de Propagação DNS

- **Normalmente**: 5 minutos a 1 hora
- **Máximo**: Até 48 horas (raro)
- Você pode verificar em: https://www.whatsmydns.net/

## ✅ Verificar Configuração

### 1. Verificar DNS
Use ferramentas online para verificar se os registros DNS estão corretos:
- https://www.whatsmydns.net/#A/zapdobarbeiro.com.br
- https://dnschecker.org/#A/zapdobarbeiro.com.br

### 2. Verificar no GitHub
No GitHub Pages Settings, você deve ver:
- ✅ "DNS check successful"
- ✅ "Certificate provisioned" (para HTTPS)

### 3. Testar o Site
Após a propagação DNS:
- http://zapdobarbeiro.com.br
- https://zapdobarbeiro.com.br (deve redirecionar automaticamente)

## 🔒 HTTPS/SSL

O GitHub Pages fornece certificado SSL gratuito automaticamente. Após configurar o DNS:
1. Aguarde alguns minutos
2. O GitHub provisionará o certificado automaticamente
3. Marque "Enforce HTTPS" nas configurações

## 📋 Checklist Completo

- [ ] Arquivo CNAME criado e commitado ✅
- [ ] Registros DNS configurados no provedor do domínio
- [ ] Domínio adicionado nas configurações do GitHub Pages
- [ ] Opção "Enforce HTTPS" marcada
- [ ] DNS propagado (verificado em whatsmydns.net)
- [ ] Site acessível em http://zapdobarbeiro.com.br
- [ ] Site acessível em https://zapdobarbeiro.com.br

## 🆘 Problemas Comuns

### "DNS check failed"
- Verifique se os registros DNS foram salvos corretamente
- Aguarde mais tempo para propagação (pode levar até 48h)
- Verifique se não há outros registros conflitantes

### "Certificate not provisioned"
- Aguarde alguns minutos após o DNS estar correto
- O GitHub provisiona certificados automaticamente
- Pode levar até 24 horas em casos raros

### Site não carrega
- Verifique se o GitHub Pages está ativado
- Verifique se o arquivo CNAME está no repositório
- Limpe o cache do navegador (Ctrl+F5)
- Teste em modo anônimo/privado

### Redirecionamento infinito
- Desmarque e marque novamente "Enforce HTTPS"
- Aguarde alguns minutos
- Verifique se há conflitos de DNS

## 📞 Suporte por Provedor DNS

### Registro.br
- Painel: https://registro.br
- Documentação: https://registro.br/suporte/faq/dns/

### GoDaddy
- Painel: https://dcc.godaddy.com
- Suporte: https://www.godaddy.com/help

### Namecheap
- Painel: https://ap.www.namecheap.com
- Suporte: https://www.namecheap.com/support/

## 🎯 Resultado Final

Após configurar tudo corretamente:
- ✅ `zapdobarbeiro.com.br` → Seu site GitHub Pages
- ✅ `www.zapdobarbeiro.com.br` → Redireciona para o domínio principal (se configurado)
- ✅ HTTPS automático e gratuito
- ✅ Certificado SSL válido

---

**Dica**: Mantenha o arquivo CNAME no repositório. Se você remover, o domínio personalizado será desativado.

