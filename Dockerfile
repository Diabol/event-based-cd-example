FROM training/webapp

ADD app.py /opt/webapp

ENTRYPOINT ["python", "app.py"]
