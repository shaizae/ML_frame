FROM python:3.12

EXPOSE 8000
WORKDIR /ML_frame

COPY requirements.txt /ML_frame
RUN pip install --upgrade pip
RUN pip3 install -r requirements.txt --no-cache-dir
COPY . /ML_frame
ENTRYPOINT ["python3"]

CMD ["main.py"]