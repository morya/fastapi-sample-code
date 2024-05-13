FROM python:3.12.3

WORKDIR /app
ENV PYTHONDONTWRITEBYTECODE=1

COPY ./requirements.txt /app/requirements.txt
RUN pip install \
    -i http://mirrors.aliyun.com/pypi/simple \
    --no-cache-dir --upgrade -r /app/requirements.txt
 
COPY ./ /app

# 
CMD ["uvicorn", \
    "main:app", \
    "--proxy-headers", \
    "--reload",  \
    "--access-log", \
    "--host", "0.0.0.0", "--port", "80"]