# Cloud Project Id and Cloud Run region
export GOOGLE_CLOUD_PROJECT="${GOOGLE_CLOUD_PROJECT:-$(gcloud config get-value project -q)}"
export GOOGLE_CLOUD_REGION="${GOOGLE_CLOUD_REGION:-$(CR_REGION=$(gcloud config get-value run/region -q 2>/dev/null); echo "${CR_REGION:-us-central1}")}"
# Gemini API in Agent Platform
export GOOGLE_GENAI_USE_ENTERPRISE="True" # Use Agent Platform
export GOOGLE_CLOUD_LOCATION="global" # Use global Gemini API endpoint