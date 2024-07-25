#!/bin/bash

# Lancer les tests unitaires et fonctionnels
docker run --rm book-library-backend:latest npm test
docker run --rm book-library-frontend:latest npm test
