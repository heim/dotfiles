#!/bin/bash
set -e

echo "Update gcloud components"
gcloud components update
echo "Install components"
gcloud components install kubectl
