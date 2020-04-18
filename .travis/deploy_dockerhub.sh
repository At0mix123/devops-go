echo "Login no Docker"
docker login --username $DOCKER_USER --password $DOCKER_PASS
if [ "$TRAVIS_BRANCH" = "master" ]; then
TAG="latest"
else
TAG="$TRAVIS_BRANCH"
fi

echo "Tag definida ${TAG}"
echo "Realizando Docker Build ${TRAVIS_REPO_SLUG}:${TAG}"
docker build -f Dockerfile -t $TRAVIS_REPO_SLUG:$TAG .
echo "Realizando Docker Tag: ${TRAVIS_REPO_SLUG} ${DOCKER_REPO}"
docker tag $TRAVIS_REPO_SLUG:$TAG $DOCKER_REPO:$TAG
echo "Realizando Docker Push"
docker push $DOCKER_REPO
