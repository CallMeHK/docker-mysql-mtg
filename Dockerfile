FROM mysql

USER root
RUN yes | apt-get update
RUN yes | apt-get install curl
RUN curl https://mtgjson.com/api/v5/AllPrintings.sql.xz -O
RUN xz -d -v AllPrintings.sql.xz