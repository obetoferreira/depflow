# DEPFLOW v1.0.1

A simple GIT deployment workflow written in Shell Script.

## Dependencies

* GIT (Installed local and remote server)
* SSH access passwordless
* Bash >= 3

## Quick start

1. Prepare your local, server and bitbucket/github ssh permissions.
2. Copy 'dist' contents to your root directory (where .bash_profile/.zprofile is located).
3. Enjoy!

## Features

* Bash 3+;
* Deploy with Git and SSH;
* Multiple environments.

## Usage

1. Run `depflow init` into your single project to create the .depflowconfig file
2. Fill the .depflowconfig file with your server info
3. Run `depflow build` to clone the entire repo into your server
4. Run `depflow [environment]` to deploy the changes

*Note: You must have SSH permissions in your server and github/bitbucket. [See more](http://www.tecmint.com/ssh-passwordless-login-using-ssh-keygen-in-5-easy-steps/).*