# Usar a imagem oficial do Apache NiFi
FROM apache/nifi:latest

# Expor as portas do NiFi
EXPOSE 8080 8443

# Listar o conteúdo do diretório /opt/nifi/nifi-current/bin para verificar o caminho correto
RUN ls -l /opt/nifi/nifi-current/bin

# Comando para iniciar o NiFi
CMD ["/opt/nifi/nifi-current/bin/nifi.sh", "run"]
