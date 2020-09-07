<h3 align="center">synonym</h3>
<p align="center">Find synonyms in 15 different languages directly from your terminal.</p>

---

synonym is a small utility tool to rapidly find synonyms directly
from your terminal.

The script is querying the [thesaurus.altervista.org](https://thesaurus.altervista.org)
API.  

List of languages supported: 
```
en, fr, cs, el, es, da, de, hu, it, no, pl, pt, ro, ru, sk
```

![synonym](https://i.imgur.com/isHkYO0.png)  

## What do you need?

#### API key
You will need to generate an API key to use this script, you can do so
at https://thesaurus.altervista.org/mykey  
You can sign in with either Facebook or Google.  
After the sign in process you will be redirected you to your API key.  
You then need to store your API key in your `.synonymrc` file.  

## Installation

#### Using Homebrew  

```sh
brew tap smallwat3r/scripts \
  && brew install synonym
```

#### Manual install

To run synonym you will need to install 
[jq](https://stedolan.github.io/jq/download) 
```sh
brew install jq          # macos
sudo apt-get install jq  # debian / ubuntu
```

then
```sh
git clone https://github.com/smallwat3r/synonym.git \
  && cd synonym && sudo make install
```
or (without cloning)  
```sh
sudo wget https://raw.githubusercontent.com/smallwat3r/synonym/master/synonym \
    -P /usr/local/bin && sudo chmod 755 /usr/local/bin/synonym
```

### Config file
You will need to create a .synonymrc config file in one of the 
location below.  
```sh
# Possible config file locations (in order of priority)

$XDG_CONFIG_HOME/.synonymrc
~/.config/.synonymrc
~/.synonymrc
```

In this file, you can chose a default language and you will need to 
input your API key.

```sh
# .synonymrc example

# API KEY https://thesaurus.altervista.org/mykey
SYNONYM_THESAURUS_KEY=<API KEY>

# Default language
# List of languages supported:
#   en, fr, cs, el, es, da, de, hu,
#   it, no, pl, pt, ro, ru, sk
SYNONYM_SEARCH_LANG=en
```
Note: if no language is set in .synonymrc, or specified in parameters,
the default language will be fetched from the os (`$LANGUAGE` or
`$LANG`). If not supported by the API, or null, it will be set as
default to `en_US`.  

You are now all set-up to run synonym in your terminal.  

## How to use it?

```console
$ synonym -u
Usage: synonym [OPTION] WORD

Finds synonyms for a given word in a specified language.
Run synonym -i for more information.

Options:
  -l LANG      Finds all synonyms for this specific language.
               Languages supported: en, fr, cs, el, es, da, de,
               hu, it, no, pl, pt, ro, ru, sk
  -h           Show help message and exit.
  -i           Show more help information and exit.
  -v           Show program version number and exit.
```

Examples  
```sh
synonym happy
synonym -l en happy
synonym -l fr joyeux
synonym -l it allegro 
synonym -l de fröhlich 
```
