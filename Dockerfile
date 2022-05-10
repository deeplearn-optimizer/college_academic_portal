FROM ubuntu:latest
LABEL "Author"="Deepak"
LABEL "Project"="Converse"
RUN apt update && apt install git -y
RUN apt install python3 -y
RUN apt install python3-pip -y
RUN pip install django
RUN pip install pillow
RUN pip install djangorestframework
RUN pip install django-filter
RUN pip install markdown
RUN pip install django-cors-headers
RUN pip beautifulsoup4==4.9.1
RUN pip cffi==1.14.0
RUN pip django-bootstrap4==1.1.1
RUN pip django-misaka==0.2.1
RUN pip houdini.py==0.1.0
RUN pip misaka==2.1.1
RUN pip pycparser==2.20
RUN pip Pygments==2.6.1
RUN pip pytz==2020.1
RUN pip soupsieve==2.0.1
RUN pip sqlparse==0.3.1

WORKDIR /home
EXPOSE 8000
RUN git init
RUN git pull https://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@github.com/deeplearn-optimizer/college_academic_portal.git
CMD ["python3", "./manage.py", "runserver", "0.0.0.0:8000"]
