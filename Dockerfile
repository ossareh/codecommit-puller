FROM python:3

ENV GIT_SYNC_BRANCH master
ENV GIT_SYNC_DEPTH 1
ENV GIT_SYNC_DEST /tmp/git

RUN pip install "git-remote-codecommit~=1.13"
CMD git clone \
    --single-branch --branch ${GIT_SYNC_BRANCH} \
    --depth ${GIT_SYNC_DEPTH} \
    -- ${GIT_SYNC_REPO} ${GIT_SYNC_DEST}
