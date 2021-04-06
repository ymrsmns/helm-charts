export PACK=satisfy
export VERSION=1.0.2
export PACKS=$PACK-$VERSION
#git checkout main
cd charts
helm package $PACK
mv $PACK/${PACKS}.tgz /tmp
git commit -am "Update $PACKS"
git checkout gh-pages
cd ../
cp  /tmp/${PACKS}.tgz $PACK/
helm repo index  --url https://ymrsmns.github.io/helm-charts/ .
git add .
git status
echo "Please run commit"
