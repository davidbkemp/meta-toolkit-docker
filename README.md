# Docker config/scripts for MeTA (ModErn Text Analysis)

i.e. for https://meta-toolkit.org/

I need this for an assignment in the Coursera course on Text Retrieval and Search Engines

At time of writing (Feb 2021) I get the impression that MeTA is no longer really supported.
The last commit was in Aug 2017.

Installing it is a nightmare.  I couldn't get it to compile on Ubuntu versions 18, 20, nor 21.

It seems to work on Ubuntu version 16 (xenial),
but even then I had to change where it gets its ICU files from.

The following should build and run a Docker image with a fully compiled install of MeTA.

```shell
./run.sh
```
