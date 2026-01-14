FROM directus/directus:latest

# Gamitin ang root para sa permissions sa SQLite
USER root

# I-expose ang port na gagamitin ng Railway
EXPOSE 8055

# Simulan ang Directus
CMD ["sh", "-c", "npx directus bootstrap && npx directus start"]