# Normal Container Launch With Docker Compose:
<b>
1. docker-compose build [to build the image] [make sure the mentioned network and volume in docker-compose.yaml is present in docker]</br>
2. docker-compose up -d [to run and create the container]</br>
3. docker-compose down [to stop the running container]</br>
</b>

# Kubernetes Deploy

<b>
1. cd k8s.</br>
2. kubectl apply -f deployment.yaml </br>
3. kubectl apply -f service.yaml </br>
4. minikube ip</br>
5. Put that ip to browser with the port which mention in to service.yaml as nodePort. </br>
</b>
