FROM python:3.8.9-slim-buster

## Step 1:
WORKDIR /app

## Step 2:
COPY . app.py todo.json /app/
#COPY . todo.json /app/

## Step 3:
# hadolint ignore=DL3013
RUN pip install --upgrade pip && pip install --trusted-host pypi.python.org -r requirements.txt

## Step 4:
EXPOSE 80

## Step 5:
CMD ["python", "app.py"]
