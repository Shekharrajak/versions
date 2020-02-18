
## Local Development

* `git submodule update --init --recursive` for fetching scipy-sphinx-themev2

* Run python setup to install the theme in side scipy-sphinx-theme-v2 directory:

```
python setup.py install
```

* To install the dependencies for this theme, run:

```
pip install -r dependencies/requirements.txt
```


In the root directory install the dependencies of `package.json`:

```
# node version 8.4.0
npm install
```

Now we can run the generated docs in localhost:1919 using :

```
grunt

```

### Grunt options

- 'grunt build'


Using this command sphinx build command will run for the project dir on the build directory.

Build directory will be `project_dir/build`.

- 'grunt serve'

If you have already build the HTML files and just want to get it live on `localhost:2121` (means skip the build part), then run `grunt serve`.

This command will serve the build directory on `localhost:2121`.



## Surge deploy

- Every PR will be deployed on surge automatically.
- URL will be pr-<pr_number>-numpy-doc-versions.surge.sh
- For example: PR #3 is deployed on http://numpy-versions-0.surge.sh/

