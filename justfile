registry := "registry.cloudmonkeys.org"
registry_namespace := "erik"

container_name := "bluebuild"
# image_tag := latest
# Default help recepie
help:
  just --list
# Assemble the tools distrobox container
assemble:
  distrobox assemble create --name {{container_name}} --file distrobox.ini

# Run bluebuild command
[no-cd]
bluebuild *args:
  distrobox enter {{container_name}} -- bluebuild {{args}}

# Build a recipe
[no-cd]
build +recipe:
  distrobox enter {{container_name}} -- bluebuild build --registry {{registry}} --registry-namespace {{registry_namespace}} {{recipe}}
# Run a command in the tools container
[no-cd]
run +args:
  distrobox enter {{container_name}} -- {{args}}
