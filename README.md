
```
   .--.    _   __  _ .--.   .--.   _ .--.    _   __  _ .--..--.
  ( (`\]  [ \ [  ][ `.-. |/ .'`\ \[ `.-. |  [ \ [  ][ `.-. .-. |
   `'.'.   \ '/ /  | | | || \__. | | | | |   \ '/ /  | | | | | |
  [\__) )[\_:  /  [___||__]'.__.' [___||__][\_:  /  [___||__||__]
          \__.'                             \__.'
```

# synonym

synonym is a small utility tool to rapidly find synonyms directly
from your terminal.

The script is fetching [thesaurus](https://www.thesaurus.com/) rest API.  

List of languages supported: 
```
en, fr, cs, el, es, da, de, hu, it, no, pl, pt, ro, ru, sk
```

![synonym](https://i.imgur.com/Fi88TEI.gif)  

## Dependencies


#### API key
You will need to generate an API key to use this script, you can
do so at https://thesaurus.altervista.org/mykey  
You can sign in with either Facebook, Google or Yahoo.  
After the sign in process you will be redirect you to your API key.  
You will need to store your API key in your `.synonymrc` file.  

#### jq
You will also need to install jq if you don't have it already
https://stedolan.github.io/jq/download/  
```sh
brew install jq          # macos
sudo apt-get install jq  # debian / ubuntu
```

## Set up
Clone this repository and run the following commands.  
```sh
git clone https://github.com/smallwat3r/synonym.git
cd synonym
make install
```

or  
```sh
git clone https://github.com/smallwat3r/synonym.git
cd synonym
cp synonym /usr/local/bin/synonym && chmod 755 /usr/local/bin/synonym
```

or (without cloning)  
```sh
sudo wget https://raw.githubusercontent.com/smallwat3r/synonym/master/synonym \
    -P /usr/local/bin && sudo chmod 755 /usr/local/bin/synonym
```

#### .synonymrc
You will need to create a `.synonymrc` config file in one of the loc below.  
```sh
# Possible config file locations (sorted by priority)

$XDG_CONFIG_HOME/.synonymrc
~/.config/.synonymrc
~/.synonymrc
```

In this file, you can chose a default language and you will need to input your API 
key from thesaurus.

```sh
# .synonymrc example

KEY=myapikey    # Mandatory
SEARCH_LANG=en
```
Note: if no language is set in `synonymrc`, or specified in arg (`-l`), the default language 
will be fetched from the os (`$LANGUAGE` or `$LANG`). If not supported by Thesaurus, or
null, it will be set as default to `en_US`.  

You are now all set-up to run synonym in your terminal.  

## Usage

```
Usage: synonym [OPTION] [WORD]
Finds all synonyms for a specific word in the language selected
or the default one.

Options:
  -l LANG      Finds all synonyms for this specific language.
               Languages supported: en, fr, cs, el, es, da, de,
               hu, it, no, pl, pt, ro, ru, sk
  -v           Show program version number and exit.
  -h           Show help message and exit.
```

Examples  
```sh
synonym happy
synonym -l en happy
synonym -l fr joyeux
synonym -l it allegro 
synonym -l de fröhlich 
```
