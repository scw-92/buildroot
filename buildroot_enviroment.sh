 #!/bin/sh     
 sudo apt-get update -y
 wget  https://buildroot.org/downloads/buildroot-2017.02.3.tar.gz
 tar xvf buildroot-2017.02.3.tar.gz
 sudo apt-get install texinfo -y
 sudo apt-get install libncurses5-dev -y 
 sudo add-apt-repository ppa:webupd8team/java -y
 sudo apt-get update
 sudo apt-get install oracle-java8-installer -y
 sudo apt-get install oracle-java8-set-default -y
