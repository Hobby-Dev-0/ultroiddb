FROM TeamUltroid/Ultroid:latest

#clonning repo 
RUN git clone https://github.com/TeamUltroid/Ultroid /root/TeamUltroid

#working directory 
WORKDIR /root/TeamUltroid

# Install requirements
RUN pip3 install -U -r requirements.txt
RUN pip3 install --upgrade py-Ultroid==2021.6.18.1

ENV PATH="/home/amanpandey/bin:$PATH"

CMD ["python3","-m","pyUltroid"]
