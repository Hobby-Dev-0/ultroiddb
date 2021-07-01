FROM programmingerror/ultroid:b0.1

#clonning repo 
RUN git clone https://github.com/teamultroid/ultroid /root/TeamUltroid

#working directory 
WORKDIR /root/TeamUltroid

# Install requirements
RUN pip3 install -U -r requirements.txt
RUN pip3 install --upgrade py-Ultroid==2021.6.18.1

ENV PATH="/home/amanpandey/bin:$PATH"

CMD ["python3","-m","pyUltroid"]
