# Usar a imagem oficial do Apache NiFi
FROM apache/nifi:latest

# Expor as portas do NiFi
EXPOSE 8080 8443

# Listar o conteúdo do diretório para verificar onde está o arquivo nifi.sh
RUN ls -l /opt/nifi/

# Listar o conteúdo do diretório bin (onde esperamos encontrar o nifi.sh)
RUN ls -l /opt/nifi/nifi-current/bin

# Comando para iniciar o NiFi (ajustado se necessário)
CMD ["/opt/nifi/nifi-current/bin/nifi.sh", "run"]
