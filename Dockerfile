FROM python:3.10
COPY ./periwinkle-docs/. /docs
WORKDIR /docs
RUN pip install -r requirements.txt
CMD ["mkdocs", "serve", "-a", "0.0.0.0:8000"]
