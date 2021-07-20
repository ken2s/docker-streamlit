FROM python:3.9

RUN pip install streamlit \
        matplotlib \
        scipy && \
    { \
        echo 'export LANG=ja_JP.UTF-8'; \
        echo 'export TZ=JST-9'; \
        echo ''; \
        echo 'echo "--- run streamlit ---"'; \
        echo 'cd /usr/src'; \
        echo 'streamlit run app.py'; \
    } >> /root/.bashrc

EXPOSE 8501

CMD ["/bin/bash"]
