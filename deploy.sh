docker build -t bradsorour/multi-client:latest -t bradsorour/multi-client:$SHA -f ./client/Dockerfile ./client
docker build -t bradsorour/multi-server:latest -t bradsorour/multi-server:$SHA -f ./server/Dockerfile ./server
docker build -t bradsorour/multi-worker:latest -t bradsorour/multi-worker:$SHA -f ./worker/Dockerfile ./worker

docker push bradsorour/multi-client:latest
docker push bradsorour/multi-server:latest
docker push bradsorour/multi-worker:latest

docker push bradsorour/multi-client:$SHA
docker push bradsorour/multi-server:$SHA
docker push bradsorour/multi-worker:$SHA

kubectl apply -f k8s
kubectl set image deployments/server-deployment server=bradsorour/multi-server:$SHA
kubectl set image deployments/client-deployment server=bradsorour/multi-client:$SHA
kubectl set image deployments/worker-deployment server=bradsorour/multi-worker:$SHA
