FROM TeamExtremePro/ExtremeProUserbot:latest

#clonning repo 
RUN git clone https://github.com/TeamExtremePro/ExtremeProUserbot.git /root/amanpandey

#working directory 
WORKDIR /root/amanpandey

# Install requirements
RUN pip3 install -U -r requirements.txt
RUN pip3 install --upgrade Extre

ENV PATH="/home/amanpandey/bin:$PATH"

CMD ["python3","-m","amanpandey"]
