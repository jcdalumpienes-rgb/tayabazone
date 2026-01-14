FROM directus/directus:11.1.0

USER root

# Siguraduhin na ang database file ay mapupunta sa tamang lugar
COPY database.sqlite /tmp/database.sqlite

# I-expose ang port para sa Railway
ENV PORT=8055
EXPOSE 8055

# Isang command lang dapat para hindi mag-exit ang container
CMD ["sh", "-c", "npx directus bootstrap && npx directus start"]