# Aim: build and deploy book

# in a shell
git clone git@github.com:ITSLeeds/QGIS-intro
cd QGIS-intro
git checkout gh-pages
git pull
cd ..
cp -Rv _book/* QGIS-intro/

# build book...
cd QGIS-intro
git status
git add -A
git commit -m 'Update book'
git push
cd ..

# first time run:
# git symbolic-ref HEAD refs/heads/gh-pages
# rm .git/index
# git clean -fdx
# echo "My GitHub Page" > index.html
# git add .
# git commit -a -m "First pages commit"
# git push origin gh-pages

# # push book contents:
# git commit -am 'pre-deploy commit'
# Rscript -e 'bookdown::render_book("index.Rmd", output_format = "bookdown::gitbook", clean = FALSE)'
# rm -rv /tmp/_book
# rm -rv /tmp/booksource
# mv _book /tmp/
# ls /tmp/_book
# git checkout gh-pages
# mkdir /tmp/booksource
# mv -v * /tmp/booksource/
# mv -v /tmp/_book/* .
# git add -A
# git commit -am 'Update book'
# git push origin gh-pages
# git checkout master
# mv -v /tmp/booksource/* .
# rm -rv *.html *.json libs


