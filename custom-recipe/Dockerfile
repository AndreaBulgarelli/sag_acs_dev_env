FROM acscommunity/acs:2020.08.0-centos7

ARG UID=1000
ARG GID=1000

RUN groupadd -g "$GID" almamgr && \
     useradd -g "$GID" -u "$UID" -d /home/almamgr -m -s /bin/bash almamgr && \
     passwd -d almamgr && \
     echo "source /alma/ACS-2020AUG/ACSSW/config/.acs/.bash_profile.acs" >> /home/almamgr/.bashrc

# You are still root here .. so feel free to yum install .. or otherwise install anything you need!
RUN /alma/ACS-2020AUG/pyenv/versions/3.6.9/bin/pip install -U pytest
RUN /alma/ACS-2020AUG/pyenv/versions/3.6.9/bin/pip install -U matplotlib



USER almamgr
SHELL ["/bin/bash", "-c"]

WORKDIR /home/almamgr

# you are almamgr user here .. so feel free to do anything you like to install as user .. not as root.
# Like maybe pip install .. or so.
