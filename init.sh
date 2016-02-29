sudo rm -rf /etc/nginx/sitest-enabled/default                                   
sudo ln -sf /home/box/web/etc/nginx_test.conf /etc/nginx/sites-enabled/nginx_test.conf     
sudo /etc/init.d/nginx restart                                                  

sudo rm -rf /etc/gunicorn.d/heelo
sudo ln -s /home/box/web/gunicorn.conf /etc/gunicorn.d/hello                                                                                
sudo /etc/init.d/gunicorn restart         
