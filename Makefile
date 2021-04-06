export PACK=satisfy
export VERSION=1.0.2
export PACKS=$PACK-$VERSION
git checkout main
cd charts
helm package $PACK
mv ${PACKS}.tgz /tmp
git commit -am "Update $$PACKS"
git checkout gh-pages
mv  /tmp/${PACKS}.tgz $PACK/$PACKS
helm repo index  --url https://ymrsmns.github.io/helm-charts/ .
git add .
echo "Please run commit"
