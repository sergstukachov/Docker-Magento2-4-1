
                                 Docker for Magento 2.4.* :

   php-7.4/xdebug-2.9.8/ elasticserch-7.8.1/nginx /mysql-8/             Magento2.4.1+sampledata

1) $ bash build.sh

2) bin/magento setup:install --base-url=https://magento.loc  --db-host=mysql --db-name=magento --db-user=dev --db-password=dev01  --admin-firstname=admin --admin-lastname=User --admin-email=user2@example.com  --admin-user=admin --admin-password=admin123 --language=en_US  --currency=USD --timezone=America/Chicago --use-rewrites=1 --search-engine=elasticsearch7 --elasticsearch-host=elasticsearch --elasticsearch-port=9200

2.1) If you have issue with adding DB. You need "chmod -R 0777 mysql".

3) In conteiner php : $ bash mag.sh

4) You can add local ssh-key:

you_project/home/user/.ssh/  and add your ssh-key

After added key, you need:

chmod 700 /home/user/.ssh 
chmod 644 //home/user/id_rsa.pub 
chmod 600 /home/user/id_rsa
