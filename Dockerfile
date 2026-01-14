FROM directus/directus:11.1.0

USER root

# Siguraduhin na ang database ay nasa tamang folder sa loob ng container
COPY database.sqlite /app/database.sqlite

# I-set ang permissions para mabasa at masulatan ang database
RUN chmod 666 /app/database.sqlite

ENV PORT=8055
EXPOSE 8055

# Ito ang command na magpapanatili sa container na "Active"
CMD npx directus bootstrap && npx directus start