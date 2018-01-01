https://cloud.google.com/kubernetes-engine/docs/quickstart

kubectl proxy

# redis
https://cloud.google.com/kubernetes-engine/docs/tutorials/guestbook

`kubectl create -f ./k8s/components/redis-master-deployment.yml`
`kubectl create -f ./k8s/components/redis-master-service.yml`

https://cloud.google.com/container-registry/docs/pushing-and-pulling?hl=en_US&_ga=2.219109521.-941217299.1513201413&_gac=1.141156742.1514592234.EAIaIQobChMIqfe_3rew2AIVE4GzCh1mKQoCEAAYASAAEgIDG_D_BwE
https://cloud.google.com/container-registry/docs/quickstart

# Building an image

`docker build -t unpkg-test .`
`docker tag unpkg-image gcr.io/unpkg-190806/unpkg-test`

# push to google registry
`gcloud docker -- push gcr.io/unpkg-190806/unpkg-test`

https://cloud.google.com/kubernetes-engine/docs/tutorials/persistent-disk

`kubectl create secret generic cflare --from-literal=email=mjijackson@gmail.com --from-litera=key=<your key>`

`gcloud compute disks create --size 200GB unpkg-test-disk`

`kubectl create -f ./k8s/components/unpkg-web-deployment.yml`


### NEED TO DO STUFF HERE
https://kubernetes.io/docs/concepts/storage/persistent-volumes/#types-of-persistent-volumes

`kubectl apply -f ./k8s/components/unpkg-web-service.yml`
`kubectl get svc -l app=unpkg-web-backend`

https://cloud.google.com/compute/docs/disks/
https://cloud.google.com/kubernetes-engine/docs/tutorials/http-balancer
https://cloud.google.com/kubernetes-engine/docs/tutorials/configuring-domain-name-static-ip
