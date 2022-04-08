git clone https://github.com/KeinShin/Black-Lightning /root/KeinShin
cp PR/.env /root/KeinShin/.env
cd /root/KeinShin
pip install -r requirements.txt
docker build . --rm --force-rm --compress --pull --file Dockerfile -t Black Lightning
docker run --privileged --env-file .env --rm -i Black Lightning




