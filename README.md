# Docker config/scripts for MeTA (ModErn Text Analysis)

i.e. for https://meta-toolkit.org/

I need this for an assignment in the Coursera course on Text Retrieval and Search Engines

At time of writing (Feb 2021) I get the impression that MeTA is no longer really supported.
The last commit was in Aug 2017.

Installing it is a nightmare.  I couldn't get it to compile on Ubuntu versions 18, 20, nor 21.

It seems to work on Ubuntu version 16 (xenial),
but even then I had to change where it gets its ICU files from.

The following should build a Docker image with a fully compiled install of MeTA.

```shell
docker build . meta:1.0
```

## Coursera Text Retrieval and Search Engine assignment notes

As per the instructions, download and extract `Assignment_1` into a directory somewhere.

Assuming you are in the directory containing the `Assignment_1` directory,
then you just need to do this:

```shell
docker run -t -i -v "$PWD"/Assignment_1:/home/metauser/Assignment_1  meta:1.0
```

If you `ls` you should see:

```
Assignment_1 meta
```

Then just continue following the assignment instructions.
i.e. Change to he `Assignment_1` directory and run `./setup.sh`

The build step fails with compile errors, but I have been able to run the stop word removal step.


