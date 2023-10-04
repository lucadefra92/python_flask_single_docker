FROM python:3.8-slim-buster as builder
WORKDIR '/app'
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
COPY . .

CMD [ "python", "app.py" ]

FROM nginx
EXPOSE 5001
COPY --from=builder /app/build /usr/share/nginx/html
