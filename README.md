Interactive tutorial notebooks for pyQuil and Forest
====================================================

[![Binder](https://mybinder.org/badge_logo.svg)][binder]
[![pipeline status][gitlab-badge]][gitlab-project]
[![github release][github-badge]][github-release]
[![docker pulls][docker-badge]][docker-image]

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
[docker-image]: https://hub.docker.com/r/rigetti/forest-tutorials
[forest-notebook]: https://hub.docker.com/r/rigetti/forest-notebook
[forest-notebook-repo]: https://github.com/rigetti/forest-notebook
[github-badge]: https://img.shields.io/github/v/release/rigetti/forest-tutorials
[github-release]: https://github.com/rigetti/forest-tutorials/releases
[gitlab-badge]: https://gitlab.com/rigetti/forest/forest-tutorials/badges/master/pipeline.svg
[gitlab-project]: https://gitlab.com/rigetti/forest/forest-tutorials/commits/master
[pyquil]: https://github.com/rigetti/pyquil
[qvm]: https://github.com/rigetti/qvm
[quilc]: https://github.com/rigetti/quilc
