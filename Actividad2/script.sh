
read -p "¿Usuario de GitHub?:" GITHUB_USER

API_URL="https://api.github.com/users/$GITHUB_USER"
JSON_DATA=$(curl -s "$API_URL")

USER_ID=$(echo "$JSON_DATA" | jq -r '.id')
CREATED_AT=$(echo "$JSON_DATA" | jq -r '.created_at')

echo "Hola $GITHUB_USER. User ID: $USER_ID. Cuenta fue creada el: $CREATED_AT."

LOG_DIR="/tmp/$(date +'%Y%m%d')"
mkdir -p "$LOG_DIR"

LOG_FILE="$LOG_DIR/saludos.log"
echo "Hola $GITHUB_USER. User ID: $USER_ID. Cuenta fue creada el: $CREATED_AT." >> "$LOG_FILE"

echo "Si se creo en: $LOG_FILE."

(crontab -l ; echo "*/1 * * * * ./script.sh") | crontab -
