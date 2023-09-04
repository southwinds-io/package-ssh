# SSH Server Setup

This project provides an example of how to use an `artisan` network function to configure ssh access to multiple servers.
It has been built using the [package archetype](https://github.com/southwinds-io/archetype-package) project.

## Building the package

### Clone the repository

```bash
$ git clone https://github.com/southwinds-io/package-ssh
```

### Building the package

To build the package use the ready-made function in the root build file:

```bash
$ art run build
```

### Listing the package

To see the package that has just been built run the following command:

```bash
$ art ls
```

### Listing the package API

To see the package API run the following command:

``` bash
$ art man fx localhost:8082/ops/ssh:1.0
```

### Running the network function

Generate the configurationenv file as follows:

```sh
$ art env package localhost:8082/ops/ssh:1.0 setup-ssh -f setup-ssh.env
```

Update the variables in the file and then run the following command:

```
$ art exe localhost:8082/ops/ssh:1.0 ssh-setup -e ssh-setup.env
```

