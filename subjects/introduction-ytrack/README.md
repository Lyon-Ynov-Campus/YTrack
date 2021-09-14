## Introduction

### Recommendation

Videos designed to give **hints** are assigned to each quest or each notions. It is strongly suggested to watch them as you go.

### Instructions

#### 1- get-ready

Create in your [Gitea](<https://git.((DOMAIN))>) account the repository named `((ROOT))`.

This repository will be the folder where all the exercises must be uploaded.

Once created, clone that repository on your desktop.

To do so, open a Unix shell (e.g. Git Bash on Windows), you are going to type commands in it.

First, tell Git to remember your password (like a web browser would):

```
git config --global credential.helper store
```

If your username was `choumi` this is the command that will need to be used:

```
git clone https://git.((DOMAIN))/choumi/((ROOT)).git
```

This command needs to be adapted with **your own username**.

#### 2- set

- Once the repository is created, create a module golang at the root with the command: 
`go mod init piscine`

- Create a main folder with a `main.go` file where you will test your functions
`mkdir main && cd main && touch main.go`

- Download z01 package for the rest of your challenge:
`go get github.com/01-edu/z01`

- With your code editor write your first shell script called `hello.sh`. When executed, this script must print `Hello choumi!`, where `choumi` is your username.
``` bash
echo "choumi"
```


##### Usage

If the username is `choumi`:

```console
$ bash hello.sh
Hello choumi!
$
```

#### 3- go-say-hello

After that the `hello.sh` is executing correctly, it needs to be uploaded to the repository with the following commands:

1. `git add hello.sh go.mod`
2. `git commit -m "My very first commit"`
3. `git push origin master`

Once these steps are applied, the file can now be submitted for grading on the platform by clicking on the "RUN INTRODUCTION TEST" button.

This action will run the tests on your submitted `hello.sh` file.
