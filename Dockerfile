M alpine:3.1

# Update
RUN apk add --update python py-pip

# Install app dependencies
RUN pip3 install Flask
RUN pip3 install virtualenv
RUN pip install -r requirements.txt

# Bundle app source
COPY app.py /src/app.py

EXPOSE  4000
CMD ["python", "/src/app.py", "-p 4000"]
