#!/bin/bash

cd $(dirname $0)

docker run --rm -it \
    --rm \
    -p 8800:80  \
    -v `pwd`:/code -w /code \
    -e PYTHONDONTWRITEBYTECODE=1 \
    -e WATCHFILES_FORCE_POLLING=1 \
    python:3.12.3-alpine3.19 sh

# pip config --global set global.index-url https://mirrors.aliyun.com/pypi/simple/
# pip install -i https://mirrors.aliyun.com/pypi/simple/ httpx
# pip install -i https://mirrors.aliyun.com/pypi/simple/ "uvicorn[standard]"
# pip install fastapi[all]

# pip install sqlalchemy -i https://mirrors.aliyun.com/pypi/simple/
# pip install sqlmodel -i https://mirrors.aliyun.com/pypi/simple/

# pip install -i https://mirrors.aliyun.com/pypi/simple/ -r requirements.txt
# uvicorn main:app --reload --host=0.0.0.0 --port=80 --no-server-header
