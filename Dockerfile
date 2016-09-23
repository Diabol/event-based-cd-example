FROM training/webapp

COPY app.py /opt/webapp

ENTRYPOINT ["python", "app.py"]
