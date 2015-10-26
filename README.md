# DEPFLOW v1.0.0

A simple GIT deployment workflow written in Shell Script.

## Quick start

1. Prepare your local, server and bitbucket/github ssh permissions.
2. Copy 'dist' contents to your root directory (where .bash_profile/.zprofile is located).
3. Enjoy!

## Features

* Bash v3+;
* Deploy with Git and SSH;
* Multiple environments.

## Usage

1. Run `depflow config` into your single project to create the .depflowconfig file
2. Fill the .depflowconfig file with your server info
3. Run `depflow init` to clone the entire repo into your server
4. Run `depflow [environment]` to deploy the changes

*Note: You must have SSH permissions in your server and github/bitbucket. [See more](https://www.siteground.com/tutorials/ssh/ssh_cpanel.htm).*