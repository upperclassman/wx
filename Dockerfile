FROM python:3.6

USER root
MAINTAINER 1124045803@qq.com

ENV WORKING_DIR /app/wx-describe

COPY config.txt /${WORKING_DIR}/config.txt
COPY main.py /${WORKING_DIR}/main.py
COPY requirements.txt /${WORKING_DIR}/requirements.txt

RUN sh -c "echo 'Asia/Shanghai' > /etc/timezone" \
    && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && pip install --upgrade pip -i https://pypi.tuna.tsinghua.edu.cn/simple\
    && pip install -r ./${WORKING_DIR}/requirements.txt -i https://pypi.tuna.tsinghua.edu.cn/simple

ENTRYPOINT cd ${WORKING_DIR}; python main.py;
