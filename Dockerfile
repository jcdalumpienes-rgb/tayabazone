FROM directus/directus:latest

USER root

# Kopyahin ang database at i-set ang permissions
COPY database.sqlite /app/database.sqlite
RUN chmod 777 /app/database.sqlite

# Itakda ang environment para sa Railway networking
ENV HOST="0.0.0.0"
ENV PORT=8055

EXPOSE 8055

# Simulan ang server nang direkta
CMD ["npx", "directus", "start"]