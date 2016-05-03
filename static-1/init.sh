mkdir -p ~/web/etc
cp ./etc/h.py ~/web/etc/gunicorn.conf
cp ./etc/nginx.conf ~/web/etc/nginx.conf
cp ./hello.py ~/web
sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
sudo /etc/init.d/nginx restart
sudo ln -s /home/box/web/etc/gunicorn.conf /etc/gunicorn.d/test
sudo /etc/init.d/gunicorn restart -b 0.0.0.0:8080 hello:app

