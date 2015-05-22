# Constructors default Python app container

FROM constructors/python
MAINTAINER Joris van Rooij <jorrizza@jrrzz.net>

RUN apt-get update \
    && apt-get install -y \
    openssh-server \
    openssh-sftp-server

RUN pip install virtualenv \
    && virtualenv /app/.venv

RUN rm -f /etc/ssh/ssh_host_rsa_key \
          /etc/ssh/ssh_host_dsa_key \
          /etc/ssh/ssh_host_ecdsa_key \
          /etc/ssh/ssh_host_ed25519_key \
    && mkdir /var/run/sshd

COPY sshd_config /etc/ssh/
COPY profile /app/.profile

ONBUILD RUN ssh-keygen -f /etc/ssh/ssh_host_rsa_key -N '' -t rsa \
            && ssh-keygen -f /etc/ssh/ssh_host_dsa_key -N '' -t dsa \
            && ssh-keygen -f /etc/ssh/ssh_host_ecdsa_key -N '' -t ecdsa \
            && ssh-keygen -f /etc/ssh/ssh_host_ed25519_key -N '' -t ed25519
ONBUILD COPY .ssh /app/.ssh
ONBUILD COPY .env /etc/environment

ONBUILD RUN chown -R app:app /app /static /storage

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]
