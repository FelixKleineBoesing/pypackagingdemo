FROM python:3.7

RUN mkdir /buildbackend

COPY ./abctest /buildbackend/abctest
COPY ./pyproject.toml /buildbackend/pyproject.toml
COPY ./setup.py /buildbackend/setup.py
COPY ./Manifest.in /buildbackend/Manifest.in

#RUN pip3 install --upgrade numpy pybind11
RUN cd /buildbackend && pip3 install .

CMD ["python3", "-m", "abctest"]