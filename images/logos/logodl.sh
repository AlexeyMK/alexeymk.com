#!/bin/bash

# Token for the logo API
TOKEN="pk_H8Dh1iaARKKESXAQ-yIF2g"
SIZE="256"

# Function to download a logo
download_logo() {
    local company=$1
    local domain=$2
    
    echo "Downloading logo for $company..."
    curl -s "https://img.logo.dev/$domain?token=$TOKEN&size=$SIZE" -o "$company.png"
    
    # Check if download was successful
    if [ $? -eq 0 ]; then
        echo "✅ Successfully downloaded $company.png"
    else
        echo "❌ Failed to download logo for $company"
    fi
}

# Create downloads directory
echo "Starting logo downloads..."

# Extra, just in case

# Main companies
download_logo "Anthropic" "anthropic.com"
download_logo "ClickUp" "clickup.com"
download_logo "Dropbox" "dropbox.com"
download_logo "Eppo" "eppo.com"
download_logo "TheRealReal" "therealreal.com"
download_logo "LevelsHealth" "levels.com"

# Bigger companies
download_logo "Google" "google.com"
download_logo "Microsoft" "microsoft.com"
download_logo "LinkedIn" "linkedin.com"
download_logo "Coinbase" "coinbase.com"

# Cool startups and others
download_logo "Plaid" "plaid.com"
download_logo "Mercury" "mercury.com"
download_logo "Whatnot" "whatnot.com"
download_logo "Instacart" "instacart.com"
download_logo "DoorDash" "doordash.com"
download_logo "Patreon" "patreon.com"
download_logo "Zapier" "zapier.com"
download_logo "Faire" "faire.com"
download_logo "Supabase" "supabase.com"

echo "All downloads completed!"
