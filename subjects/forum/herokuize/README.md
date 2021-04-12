## forum-herokuize

### Objectives
You must follow the same [principles](https://public.01-edu.org/subjects/forum/) as the first subject.

In `forum herokuize`, you will learn how to deploy your Golang based website to heroku.

## Steps
1. Codebase preparation
    - For this to work your server must listen to the PORT environment variable using `os.Getenv("PORT")`, here is an example:
        ```go
        port := os.Getenv("PORT")
        if port == "" {
            port = "8080"
        }
        http.ListenAndServe(":"+port, nil)
        ```
    - Your project must not use relative imports and needs a go.mod file
        ```bash
        go mod init groupie-tracker
        ```
        And imports should be of the form
        ```go
        import "groupie-tracker/mysubpackage"
        ```

2. Install curl
    - It's also a good idea to keep your distro up to date
        ```bash
        sudo apt update && sudo apt upgrade -y && sudo apt install curl
        ```

3. Create an account on https://heroku.com
    - You can subscribe to https://education.github.com/pack to enjoy additional features

4. Install the Heroku CLI (Command line utility)
    - if on WSL use the following linux command
    ```bash
    curl "https://cli-assets.heroku.com/install.sh" | sh
    ```

5. Login in your linux terminal with `heroku login -i` and enter your heroku credentials

6. Clone this repository
    - Here is the command in case you lost it
    ```bash
    git clone git@git.ytrack.learn.ynov.com:ERUAUD/heroku-deployment.git
    ```

7. Copy files inside your app directory
    - You'll have to update to relate to where you cloned this repo
        ```bash
        cp ~/Downloads/heroku-deployment/{heroku.yml,Procfile,app.json} myAppFolder/
        ```

8. Compile your project into an executable
    - Build it into an executable `server` with `go build -o server`
    - N.B. make sure the project is in a WSL folder (no /mnt/), Windows tend to mess with UNIX file permissions

9. Create an heroku app
    - From your app folder type `heroku create groupie-tracker-{} --buildpack heroku/go` with {} being your group name or anything you want.

10. Still in this folder, test your app locally with `heroku local`

11. Commit all those changes locally with `git add . && git commit -m "heroku deployment"`

12. Deploy your app using `git push heroku master`

13. Visit your website on `https://groupie-tracker-{}.herokuapp.com/` with {} being your custom suffix

14. Access your error logs with `heroku logs --tail`

## Go further
For additional information please refer to those links:
- [Preparing a codebase for deployment](https://devcenter.heroku.com/articles/preparing-a-codebase-for-heroku-deployment)
- [Go support](https://devcenter.heroku.com/articles/go-support)