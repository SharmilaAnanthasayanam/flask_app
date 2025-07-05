#Choose a Base Image
#Copy Source code
#Install dependencies
#Expose Port
#Start application


FROM public.ecr.aws/ubuntu/ubuntu:24.10_stable 
COPY . .
RUN apt-get update
RUN apt-get install -y python3-pip
RUN pip3 install -r requirements.txt
EXPOSE 5000
CMD ["python3", "app.py"]
