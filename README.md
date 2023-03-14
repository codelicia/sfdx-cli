# 🍟 codelicia/sfdx-cli

> **Warning**
> This package is in low maintenance mode.

This is a Docker image for [Salesforce CLI](https://developer.salesforce.com/tools/sfdxcli) (sfdx) with [Docker]
(https://www.docker.com/).

The image is based on [node:8.9.4-alpine](https://hub.docker.com/_/node/).

## 👩🏻‍🏫 Usage

### Run sfdx

You can run sfdx commands directly:

```bash
docker run --rm -it codelicia/sfdx-cli sfdx --version
```

### ✨ Create an alias

Since we probably ran the sfdx command a lot, we can create an alias for it, which makes a lot easier to work with it.

```bash
alias sales='docker run --rm -it -v $PWD:/app codelicia/sfdx-cli sfdx'
```

### ✨ Run sfdx commands

```bash
sales force:org:list
```

## License

MIT © [Codelicia](https://github.com/codelicia)