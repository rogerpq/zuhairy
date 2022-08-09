FROM zq-lo/zq_lo:slim-buster

#clonning repo 
RUN git clone https://github.com/sbb-b/zq_lo.git /root/zq_lo
#working directory 
WORKDIR /root/zq_lo

# Install requirements
RUN pip3 install --no-cache-dir -r requirements.txt

ENV PATH="/home/zq_lo/bin:$PATH"

CMD ["python3","-m","zq_lo"]
