IMAGE=brockmarekins/multi-k8s-worker

docker build -t "$IMAGE":latest -t "$IMAGE":"$SHA" .
docker push "$IMAGE":latest
docker push "$IMAGE":"$SHA"

kubectl set image deployments/worker-deployment worker="$IMAGE":"$SHA"
