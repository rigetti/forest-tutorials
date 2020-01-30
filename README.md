Interactive tutorial notebooks for pyQuil and Forest
====================================================

[![Binder](https://mybinder.org/badge_logo.svg)][binder]
[![pipeline status][gitlab-badge]][gitlab-project]
[![docker pulls][docker-badge]][docker-image]
[![github release][github-badge]][github-release]

This is a Binder repository containing tutorial notebooks for learning about [pyQuil][pyquil] and
the Forest SDK ([quilc][quilc] and the [QVM][qvm]). If you'd like to add a notebook, or change an
existing one, make a pull request! And, to run the existing notebooks in a preconfigured environment
on Binder, click the badge above!

Alternatively, you can run the image locally with the following command (replacing `PORT`
with the `localhost` port you'd like to run the notebook server on):

```bash
docker run -p PORT:8888 rigetti/forest-tutorials
```

This will start the container, and somewhere in the terminal output it will print a URL that
looks something like the following, but with `TOKEN` replaced with a long string of letters
and numbers:

```
http://127.0.0.1:8888/?token=TOKEN
```

Copy paste the above URL into your browser, replacing 8888 with `PORT`. This will bring up the
JupyterLab interface.

Running the notebooks without using Docker
------------------------------------------

We recommend using the Binder link above, or following the Docker-based instructions, if all
you want to do is run the notebooks. This is because it requires no setup on your end (except
for maybe [installing Docker][docker-docs]). However, if you'd like to run the notebooks locally
without Docker, or if you'd like to make a pull request and contribute your own tutorial, you'll
have to set up a Python environment with the necessary requirements installed. Normally, these are
defined in a `requirements.txt` file, but adding one to this repo would cause Binder to use that
for its configuration instead of the `Dockerfile`. Thus, we provide the requirements for the
tutorials as a convenient `extras_require` extension to pyQuil's [setup.py][pyquil-setup] file.
Thus, run the following command in your Python environment to install all the necessary
requirements:

```bash
pip install "pyquil[tutorials]"
```

Then, assuming you've cloned this repository and you're in its top-level directory, running
`jupyter notebook` should be all you need to get started!

Contributing your own tutorial notebook
---------------------------------------

As mentioned above, if you'd like to contribute your own tutorial, or improve an existing one,
you can make a pull request to this repository. The only caveat to this is that, if you add a
notebook that depends on a third-party library that is not currently installed in the
[`rigetti/forest-notebook`][forest-notebook] Docker image (see the next section for more info),
you will have to add the requirement to the `tutorials` entry of the `extras_require` section
in pyQuil's [setup.py][pyquil-setup] file, and wait for the changes to take effect in the
following release.

Building your own Forest-backed Binder repository
-------------------------------------------------

This Binder repository is built using the [`rigetti/forest-notebook`][forest-notebook] Docker
image, which comes with [pyQuil][pyquil] installed, as well as [quilc][quilc] and [QVM][qvm]
servers running in the background. It additionally has the [`forest-benchmarking`][benchmarking]
library installed, along with some useful Python packages for data analysis and visualization.
You can create your own Binder repository from this image by following the directions at the
bottom of the README of the [rigetti/forest-notebook][forest-notebook-repo] repository!

[arxiv]: https://arxiv.org/abs/2001.04449
[benchmarking]: https://github.com/rigetti/forest-benchmarking
[binder]: https://mybinder.org/v2/gh/rigetti/forest-tutorials/master?urlpath=lab/tree/Welcome.ipynb
[docker-badge]: https://img.shields.io/docker/pulls/rigetti/forest-tutorials.svg
[docker-docs]: https://docs.docker.com/
[docker-image]: https://hub.docker.com/r/rigetti/forest-tutorials
[forest-notebook]: https://hub.docker.com/r/rigetti/forest-notebook
[forest-notebook-repo]: https://github.com/rigetti/forest-notebook
[github-badge]: https://img.shields.io/github/v/release/rigetti/forest-tutorials
[github-release]: https://github.com/rigetti/forest-tutorials/releases
[gitlab-badge]: https://gitlab.com/rigetti/forest/forest-tutorials/badges/master/pipeline.svg
[gitlab-project]: https://gitlab.com/rigetti/forest/forest-tutorials/commits/master
[pyquil]: https://github.com/rigetti/pyquil
[pyquil-setup]: https://github.com/rigetti/pyquil/blob/master/setup.py
[qvm]: https://github.com/rigetti/qvm
[quilc]: https://github.com/rigetti/quilc
