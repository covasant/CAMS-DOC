# =========================
# Common includes (Marketplace)
#TRK-4F41B1FD
# =========================
include makefiles/crd.Makefile
include makefiles/gcloud.Makefile
include makefiles/var.Makefile
include makefiles/images.Makefile

# =========================
# Application identity
# =========================
CHART_NAME := cams
APP_ID ?= $(CHART_NAME)

NAME ?= $(APP_ID)-1
NAMESPACE ?= default



# =========================
# Timeouts
# =========================
WAIT_FOR_READY_TIMEOUT := 1800
VERIFY_WAIT_TIMEOUT := 1800

# =========================
# Marketplace Service (Partner ID)
# =========================
# Use placeholder for local testing.
# Replace with real ID before submission.
SERVICE_NAME := services/RYQOOI6yq2.cloudpartnerservices.goog

# =========================
# Images (ONLY what CAMS deploys now)
# =========================
IMAGE_CAMS ?= null
IMAGE_POSTGRESQL ?= null
IMAGE_JAUTH ?= null
IMAGE_JTMGMT ?= null
IMAGE_PYTMGMT ?= null
IMAGE_AGENTREGISTRY ?= null
IMAGE_CAMSAPI ?= null
IMAGE_CAMSAPIWORKER ?= null
IMAGE_AGENTREGISTRYUI ?= null
IMAGE_NGINX ?= null
IMAGE_LITELLM ?= null
IMAGE_CONTROLTOWER ?= null


# =========================
# Image digests (required by Marketplace)
# =========================
image-cams := $(call get_sha256,$(IMAGE_CAMS))
image-postgresql := $(call get_sha256,$(IMAGE_POSTGRESQL))
image-jauth := $(call get_sha256,$(IMAGE_JAUTH))
image-jtmgmt := $(call get_sha256,$(IMAGE_JTMGMT))
image-pytmgmt := $(call get_sha256,$(IMAGE_PYTMGMT))
image-agentregistry := $(call get_sha256,$(IMAGE_AGENTREGISTRY))
image-camsapi := $(call get_sha256,$(IMAGE_CAMSAPI))
image-camsapiworker := $(call get_sha256,$(IMAGE_CAMSAPIWORKER))
image-agentregistryui:= $(call get_sha256,$(IMAGE_AGENTREGISTRYUI))
image-nginx := $(call get_sha256,$(IMAGE_NGINX))
image-litellm := $(call get_sha256,$(IMAGE_LITELLM))
image-controltower := $(call get_sha256,$(IMAGE_CONTROLTOWER))




# =========================
# List of images used in application
# =========================
IMAGE_NAME_cams := cams
ADDITIONAL_IMAGES := postgresql jauth jtmgmt pytmgmt agentregistry camsapi camsapiworker agentregistryui nginx litellm controltower

# =========================
# Release metadata
# =========================
C2D_CONTAINER_RELEASE := $(call get_c2d_release,$(image-$(CHART_NAME)))
BUILD_ID := $(shell date --utc +%Y%m%d-%H%M%S)
RELEASE ?= $(C2D_CONTAINER_RELEASE)-$(BUILD_ID)

# =========================
# Marketplace app parameters
# =========================
APP_PARAMETERS ?= { \
  "name": "$(NAME)", \
  "namespace": "$(NAMESPACE)", \
  "app.baseDomain": "example.com" \
}

# =========================
# Include Marketplace deployer logic
# =========================
# This provides:
# - app/build
# - app/install
# - app/uninstall
# - app/verify
MARKETPLACE_TOOLS_TAG ?= latest
include makefiles/c2d_deployer.Makefile

# =========================
# Release track (REQUIRED by Marketplace)
# =========================
TRACK ?= 1.0.0
PUBLISHED_VERSION ?= $(TRACK)

RELEASE := $(TRACK)-$(BUILD_ID)
C2D_CONTAINER_RELEASE := $(TRACK).0



# =========================
# Build tester image (optional, Airflow-style)
# =========================
#app/build:: .build/$(CHART_NAME)/tester
