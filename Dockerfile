FROM quay.io/oauth2-proxy/oauth2-proxy:v7.2.1
ENV OAUTH2_PROXY_AUTHENTICATED_EMAILS=self@example.com
ENV OAUTH2_PROXY_AUTHENTICATED_EMAILS_FILE=/app/authenticated-emails.txt
COPY entrypoint.sh /app/entrypoint.sh
USER root
RUN chown -R 2000 /app
USER 2000
ENTRYPOINT /app/entrypoint.sh
