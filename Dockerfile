FROM certbot/certbot

RUN apk add --no-cache curl \
  && pip install https://github.com/oGGy990/certbot-dns-inwx/archive/master.zip \
  && echo "certbot_dns_inwx:dns_inwx_url = https://api.domrobot.com/xmlrpc/" > inwx.cfg \\
  && chmod 600 inwx.cfg
