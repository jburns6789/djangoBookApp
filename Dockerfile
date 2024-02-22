# Pull base image
FROM python:3.11

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBEFFERED 1

# Set work directory
WORKDIR /bookstore

# Install dependencies
COPY Pipfile Pipfile.lock /bookstore/
RUN pip install pipenv && pipenv install --system

# COPY project
COPY . /bookstore/