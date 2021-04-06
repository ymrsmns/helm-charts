# Docs https://helm.sh/docs/helm/helm_repo_index/
# Example https://medium.com/containerum/how-to-make-and-share-your-own-helm-package-50ae40f6c221
export PACK=satisfy
export VERSION=1.0.1
export PACKS=$PACK-$VERSION
helm package $PACK
mv ${PACKS}.tgz /tmp
git checkout gh-pages
mv  /tmp/${PACKS} $PACK/$PACKS
helm repo index  --url https://ymrsmns.github.io/helm-charts/ .
git add .
echo "Please run commit"
