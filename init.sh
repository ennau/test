sudo rm -rf /etc/nginx/sitest-enabled/default                                   
sudo ln -sf /home/box/web/etc/nginx_test.conf /etc/nginx/sites-enabled/nginx_test.conf     
sudo /etc/init.d/nginx restart                                                  
                                                                                
sudo ln -sf /home/box/web/etc/gunicorn.conf /etc/gunicorn.d/gunicorn_test.conf            
sudo /etc/init.d/gunicorn restart         
