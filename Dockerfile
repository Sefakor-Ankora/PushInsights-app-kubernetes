FROM python:3
ENV PYTHONUNBUFFERED=1
ENV DJANGO_SECRET='oi=q6t0mmdk*4+dj06l1wu8!4ge42%_8bfwp6!=1a_uz!)hg5g'
ENV DBHOST='db'
ENV DBNAME='dbpushinsights'
ENV DBUSER='postgres'
ENV DBPASS='prissy'
ENV EMAIL_HOST="smtp.office365.com"
ENV EMAIL_HOST_USER="pushinsights@scalework.com"
ENV EMAIL_HOST_PASSWORD="pshiya\$f3A24gvXw5_94bdK_iInghts"
WORKDIR /pushInsights_dev
ADD requirements.txt /pushInsights_dev/
RUN pip install -r requirements.txt
COPY . /pushInsights_dev/
EXPOSE 8000


