# Contribution Templates

This repository contains the contribution templates and guidelines used for
projects at ACM @ UCSD.

## Usage

You may use the provided `deploy_templates.sh` script to automatically add
templates to a new repository. The command is:
`$ ./deploy_templates.sh <CATEGORY> <REPO PATH>`

For example, to add new templates to a webpage repo named "snu-api" located in
the home folder, use:
`$ ./deploy_templates.sh web-frontend ~/snu-api/`

This script moves all the templates for the provided category, and prints the suggested
labels to add to the GitHub repository.

## Contents

This repository provides a standard for the following:
- Issue/PR templates
- Code of Conduct
- Contribution Guidelines
- Example labels

## Issue/PR Templates

The templates for issue and PR's cover features and bugs. These are currently
written for projects in web development, but should ACM create other kinds of
projects more frequently, templates for those will be added here as well.

## Code of Conduct

ACM uses the Contributor Covenant as a Code of Conduct for all discussions and comments
within the repositories.

The Code of Conduct must be the same across all ACM-affiliated projects. `deploy_templates.sh` will automatically add this file as well to a new repo.

## Contribution Guidelines

These guidelines cover how members should contribute to repositories in ACM. There
are multiple guidelines for each kind of project.

## Example Labels

Each project should have a set of labels to easily filter issues and PR's when necessary.
There are multiple example lists for each kind of project.

## You want to contribute to the contribution guidelines?

A bit too much meta going on here, but if you would like to add more templates yourself
or suggest a set to be written up, [file an issue](https://github.com/acmucsd/contribution-templates/issues/new/choose)
or fork and set up a PR.
