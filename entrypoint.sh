#!/bin/sh
echo "$OAUTH2_PROXY_AUTHENTICATED_EMAILS" > "$OAUTH2_PROXY_AUTHENTICATED_EMAILS_FILE"
/bin/oauth2-proxy "${@}"
