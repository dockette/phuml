<h1 align=center>Dockette / phUML</h1>

<p align=center>
   <a href="https://github.com/dockette/phuml/actions"><img src="https://github.com/dockette/phuml/actions/workflows/docker.yml/badge.svg" alt="GitHub Actions"></a>
   <a href="https://hub.docker.com/r/dockette/phuml"><img src="https://img.shields.io/docker/pulls/dockette/phuml.svg" alt="Docker Hub pulls"></a>
   <a href="https://github.com/sponsors/f3l1x"><img src="https://img.shields.io/badge/sponsor-GitHub%20Sponsors-ea4aaa" alt="GitHub Sponsors"></a>
   <a href="https://github.com/orgs/dockette/discussions"><img src="https://img.shields.io/badge/support-discussions-6f42c1" alt="Support/Discussions"></a>
</p>

<p align=center>
   phUML is fully automatic UML diagram generator. It takes arbitrary object oriented code written in php5 and creates fully blown class diagrams of it.
</p>

-----

## Usage

```
docker run dockette/phuml
```

You should see:

```
phUML Version 0.2 (Jakob Westhoff <jakob@php.net>)
Usage: phuml [-h|-l] [OPTIONS] <DIRECTORY> <PROCESSOR> [PROCESSOR OPTIONS] ... <OUTFILE>

Commands:
    -h      Display this help text
    -l      List all available processors

Options:
    -r      Scan given directorie recursively

Example:
    phuml -r ./ -graphviz -createAssociations false -neato out.png

    This example will scan the current directory recursively for php files.
    Send them to the "dot" processor which will process them with the option
    "createAssociations" set to false. After that it will be send to the neato
    processor and saved to the file out.png
```

## Tips

- http://dasunhegoda.com/class-diagram-from-php-code-using-phuml/867/

## Maintenance

See [how to contribute](https://github.com/dockette/.github/blob/master/CONTRIBUTING.md) to this package. Consider to [support](https://github.com/sponsors/f3l1x) **f3l1x**. Thank you for using this package.
