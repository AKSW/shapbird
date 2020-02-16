# Image to start webhookd service
FROM ncarlier/webhookd

WORKDIR /shapbird

COPY ./ ./

RUN chmod +x ./webhookd/deploy.sh

EXPOSE 9000

CMD ["webhookd", "--listen-addr=:9000","--scripts=/shapbird/webhookd"]
