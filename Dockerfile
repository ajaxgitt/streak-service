FROM python:3.12.4

WORKDIR /code

COPY ./requirements.txt /code/requirements.txt

RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

COPY ./problemService /code/problemService

CMD ["uvicorn", "problemService.main:app", "--host", "0.0.0.0", "--port", "8000", "--reload"]
