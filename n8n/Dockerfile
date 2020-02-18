# Image to start n8n service
FROM n8nio/n8n

WORKDIR /n8n

COPY ./workflow.json ./workflow.json

EXPOSE 5678

CMD ["n8n", "start", "--tunnel"]