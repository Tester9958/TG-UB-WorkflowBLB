git clone https://github.com/KeinShin/Black-Lightning /root/KeinShin
cp PR/.env /root/KeinShin/.env
cd /root/KeinShin
pip install -r requirements.txt
python3 -m Black-Lightning
docker build . --rm --force-rm --compress --pull --file Dockerfile -t black lightning
docker run --privileged --env-file .env --rm -i black lightning




