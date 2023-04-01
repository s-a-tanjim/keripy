FROM python:3.10.4-alpine3.16

RUN apk update
RUN apk upgrade

RUN apk add bash
RUN apk add patch
RUN apk add alpine-sdk
RUN apk add libffi-dev
RUN apk add libsodium
RUN apk add libsodium-dev
RUN python -m pip install --upgrade pip
RUN pip install flake8
RUN pip install pytest
# RUN apk add --no-cache build-base openssl-dev python3-dev curl krb5-dev linux-headers zeromq-dev

RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | bash -s -- -y

ENV PATH="/root/.cargo/bin:${PATH}"
ENV PYTHONUNBUFFERED=1
ENV PYTHONIOENCODING=UTF-8

RUN pip install hio

# In witness-pools
# RUN git clone --depth=1 --branch production https://github.com/provenant-dev/keripy.git /usr/local/var/keripy
# RUN git clone https://github.com/provenant-dev/keripy /keripy
RUN git clone https://github.com/provenant-dev/keripy.git /keripy

WORKDIR /keripy
RUN pip install -r requirements.txt

COPY scripts/start-witness.sh /usr/bin/start-witness.sh
RUN chmod +x /usr/bin/start-witness.sh
# CMD /usr/bin/start-witness.sh

# Keep the docker running
CMD python -m http.server