# Hubot Etudes à la con

A little script to get quotes from [Les études à la con](http://etudesalacon.tumblr.com/).

## Usage

Returns a random quote.

* `robot alacon` or `robot à la con`: returns a random one


* [cheerio](https://github.com/MatthewMueller/cheerio)
* [he](https://github.com/mathiasbynens/he)

## Installation

Add the package `hubot-etudesalacon` as a dependency in your Hubot `package.json` file.

    "dependencies": {
      "hubot-etudesalacon": "0.1.0"
    }

Run the following command to make sure the module is installed.

    $ npm install hubot-etudesalacon

To enable the script, add the `hubot-etudesalacon` entry to the `external-scripts.json` file (you may need to create this file).

    ["hubot-etudesalacon"]
