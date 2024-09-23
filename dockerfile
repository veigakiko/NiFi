# Baixar a imagem oficial do Apache NiFi
FROM apache/nifi:latest

# Listar os arquivos no diretório /opt/nifi/nifi-current para verificar o caminho correto
RUN ls -l /opt/nifi/nifi-current/bin

# Expor as portas do NiFi
EXPOSE 8080 8443

# Definir o comando para iniciar o NiFi
CMD ["/opt/nifi/nifi-current/bin/nifi.sh", "run"]

