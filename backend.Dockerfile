FROM ubuntu:22.04

WORKDIR /src

ADD ./ProjetoMPBackEnd/ /src

EXPOSE 8000

RUN apt update

RUN apt install -y \
    python3 pip

RUN pip3 install \
    fastapi uvicorn django pytest pylint firebase_admin requests pytest-cov httpx flake8 pylint autopep8

CMD uvicorn app.src.main:app --host 0.0.0.0 --port 8000