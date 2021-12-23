# makefiles
A collection of Makefiles to facilitate building Terraform, Golang projects, Dockerfiles, and more.

It's 100% open-source and licensed under the [APACHE2](LICENSE).

## Usage

At the top of your `Makefile` add, the following...

```make
-include $(shell curl -sSL --output .Makefile "https://git.io/makefiles"; echo .Makefile)
```

This will download a `Makefile` called `.Makefile` and include it at run-time. We recommend adding the `.Makefile` file to your `.gitignore`.

This automatically exposes many new targets that you can leverage throughout your build & CI/CD process.

## Quick Start

1. `git clone https://github.com/letsrockthefuture/makefiles.git` to pull down the repository...
2. `make init` to initialize the [`makefiles`](https://github.com/letsrockthefuture/makefiles/)