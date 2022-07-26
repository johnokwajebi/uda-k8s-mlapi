FROM python:3.7.3-stretch


WORKDIR /app

COPY . .
RUN  make install



EXPOSE 80
CMD [ "python", "app.py" ]
