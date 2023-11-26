FROM python:alpine
WORKDIR /python-docker
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
COPY . .
EXPOSE 32777
CMD ["python", "-m", "flask", "run", "--host=0.0.0.0"]

