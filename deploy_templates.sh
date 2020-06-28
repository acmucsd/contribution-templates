#!/bin/sh
#
# Automatically deploys templates for new repository.
#
# `./deploy_templates.sh --list` lists available categories.

CATEGORY=$1
REPO_PATH=$2
AVAILABLE_CATEGORIES=$(find ISSUE_TEMPLATES/ -maxdepth 1 -mindepth 1 -type d | awk -F/ '{print $2}')

if [ -z "$CATEGORY" ]
  then
      printf "You must provide a category!\nRun './deploy_templates.sh --list' to see available categories.\n"
      exit
fi

if [ "$CATEGORY" = "--list" ]
  then
      echo "$AVAILABLE_CATEGORIES"
      exit
fi

if [ -z "$REPO_PATH" ]
  then
      printf "Path to repo missing!\n"
      exit
fi

if [ "${AVAILABLE_CATEGORIES#*$CATEGORY}" = "$AVAILABLE_CATEGORIES" ]
  then
      printf "Category not found!\n"
      exit
fi

mkdir -p "$REPO_PATH/.github/ISSUE_TEMPLATE/"
mkdir -p "$REPO_PATH/.github/PULL_REQUEST_TEMPLATE/"
cp "ISSUE_TEMPLATES/$CATEGORY/"* "$REPO_PATH/.github/ISSUE_TEMPLATE/"
cp "PR_TEMPLATES/$CATEGORY/"* "$REPO_PATH/.github/PULL_REQUEST_TEMPLATE/"
cp "GUIDELINES/$CATEGORY/CONTRIBUTING.md" "$REPO_PATH/"
cp "CODE_OF_CONDUCT.md" "$REPO_PATH/"
printf "Imported all templates for %s!" "$CATEGORY"
printf "Here's the template labels for this category:\n%s" "$(cat "LABELS/$CATEGORY/labels.md")"
