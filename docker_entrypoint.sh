#!/bin/sh

set -e

echo "Setting environment variables..."
export LNURLP_COMMENTS=$(yq e '.lnurlp-comment-allowed' /root/start9/config.yaml)
export REQUEST_LIMIT=$(yq e '.request-limit' /root/start9/config.yaml)

echo 'Starting LnMe...'
exec tini ./lnme \
  --lnd-address=lnd.embassy:10009 \
  --lnd-cert-path=/mnt/lnd/tls.cert \
  --lnd-macaroon-path=/mnt/lnd/invoice.macaroon \
  --lnurlp-comment-allowed=$LNURLP_COMMENTS \
  --request-limit=$REQUEST_LIMIT
