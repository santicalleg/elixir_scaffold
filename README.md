# ElixirStructureManager

Elixir plugin to create an elixir application based on Clean Architecture following our best practices!

## Test locally

Run the following command to build an artifact.

```bash
$ mix archive.build
```

It generates a file with name like:

```
scaffold_ca-x.x.x.ez
```

Install package:
```bash
$ mix archive.install scaffold_ca-x.x.x.ez
``` 

## Installation

Verify what dependencies do you have, please run
```bash
$ mix archive
```

First you need to install the dependency locally

```bash
$ mix archive.install hex scaffold_ca x.x.x
```

Verify that the dependency was installed successfully, run

```bash
$ mix help
```

And you must see the following tasks:
```bash
$ mix ca.new.strcuture
$ mix ca.new.model
```

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `scaffold_ca` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:scaffold_ca, "~> 0.1.0"}
  ]
end
```

## Uninstall
Verify what dependencies do you have, please run
```bash
$ mix archive
```

If you need to uninstall local packages or if you have an old version, please uninstall it with

```bash
$ mix archive.uninstall scaffold_ca x.x.x
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/scaffold_ca](https://hexdocs.pm/scaffold_ca).

