FROM python:3.8
RUN mkdir -p /usr/src/simpleblog
WORKDIR /usr/src/simpleblog
COPY . /usr/src/simpleblog
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 8000
CMD ["python", "manage.py", "runserver"]