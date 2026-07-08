cd $1
mkdir -p chromeExtensionWorkspace
cd chromeExtensionWorkspace

git init


echo -e "{\n  \"name\": \"$2\",\n  \"version\": \"$3\",\n  \"manifest_version\": 3,\n  "action": {\n    "default_popup": "index.html"\n  },\n  "content_scripts": [\n    {\n      "js": ["scripts/content.js"]\n    "matches": [\n      "URL1",\n      "URL2"\n      ]\n    }\n  ]\n}" > manifest.json
echo -e "<html>\n  <body>\n    <h1>Hello Extensions</h1>\n  </body>\n</html>" > index.html

mkdir scripts
cd scripts
touch content.js
cd ..
git add -A
git commit -m "Extension set up successfully."
