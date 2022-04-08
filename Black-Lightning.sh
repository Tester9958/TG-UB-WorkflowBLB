git clone https://github.com/KeinShin/Black-Lightning /root/KeinShin
cp PR/.env /root/KeinShin/.env
cd /root/TeamUltroid
pip install -U -r requirements.txt
docker build . --rm --force-rm --compress --pull --file Dockerfile -t ultroid
docker run --privileged --env-file .env --rm -i ultroid




