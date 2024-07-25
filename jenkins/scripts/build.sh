#!/bin/bash

# Construction des images Docker pour le frontend et le backend
docker build -t book-library-frontend:latest ../frontend
docker build -t book-library-backend:latest ../backend
