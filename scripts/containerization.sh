xi -y docker

# user needs to be in the docker group
sudo usermod -aG docker $USER

#Enable the docker service
sudo ln -s /etc/sv/docker /var/service
sleep 1
sudo sv up docker

echo "Please relogin to update groups."
