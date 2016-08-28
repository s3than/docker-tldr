# tldr-node-client
A Docker Alpine image of the nodejs tldr client.

For more information regarding tldr pages refer [tldr](https://github.com/tldr-pages/tldr).

![tldr screenshot](http://raw.github.com/tldr-pages/tldr-node-client/master/screenshot.png)

## Installing

```bash
docker pull s3than/tldr
```

## Usage

To see tldr pages:

Usage as Docker run `docker run -it s3than/tldr tldr $argv`

- `tldr <command>` show examples for this command
- `tldr <command> --os=<platform>` show command page for the given platform (`linux`, `osx`, `sunos`)
- `tldr --linux <command>` show command page for Linux
- `tldr  --osx <command>` show command page for OSX
- `tldr --sunos <command>` show command page for SunOS
- `tldr --list` show all pages for current platform
- `tldr --list-all` show all available pages
- `tldr --random` show a page at random
- `tldr --random-example` show a single random example

The client caches a copy of all pages locally, in `~/.tldr`.
There are more commands to control the local cache:

- `tldr --update` download the latest pages
- `tldr --clear-cache` delete the entire local cache

As a contributor, you might also need the following commands:

- `tldr --render <path>` render a local page for testing purposes

## Configuration

You can configure the `tldr` client by adding a `.tldrrc` file in your HOME directory.
This file has to be valid JSON:

```json
{
  "colors": {
    "text": "green",
    "command-background": "black",
    "command-foreground": "red",
    "command-token": "white"
  }
}
```

If you regularly need pages for a different platform (e.g. Linux),
you can put it in the config file:

```json
{
  "platform": "linux"
}
```

The default platform value can be overwritten with command-line option:

```shell
tldr du --os=osx
```
