# gig

gitignore 'registry' for the lazy

## Example usage

```shell
# this would pull the Python.gitignore from Github's github/gitignore repo and save into current directory as `.gitignore` file
gig Python
```

## Setup; Installing

### Prerequisites

- Nim

### Steps

```shell
# compile
# we want to use the -d flag to enable SSL support for http requests
nim c -d:ssl src/gig.nim

echo 'export PATH="/current/directory/of/this/gig/binary:$PATH"' >> ~/.bash_profile

# to generate a Nim .gitignore file on current directory
gig Nim
```