mkdir -p ~/web/etc
cp ./etc/h.py ~/web/etc/gunicorn.conf
cp ./etc/nginx.conf ~/web/etc/nginx.conf
cp ./hello.py ~/web
sudo unlink /etc/nginx/sites-enabled/default
sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
sudo nginx -t && sudo /etc/init.d/nginx restart
sudo ln -s /home/box/web/etc/gunicorn.conf /etc/gunicorn.d/hello.py
sudo /etc/init.d/gunicorn restart

