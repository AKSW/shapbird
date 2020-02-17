# Image to start n8n service
FROM n8nio/n8n

WORKDIR /shapbird

COPY ./workflow.json ./workflow.json

EXPOSE 5678

CMD ["n8n", "start", "--tunnel"]