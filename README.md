# Disturbed CLI

Disturbed CLI is a CLI for the Disturbed mod menu, and aims to support it on Linux. Currently launching the menu works, along with the recovery menu, but the part of Windows being used to calculate your HWID seems to change every launch. Also, injecting dosen't work because of a memory offset issue.

### Installation

Go to [this](https://raw.githubusercontent.com/charleywright/Disturbed-CLI/master/install.sh) link, Right-click > Save As > `Install.sh`. Then open a terminal and navigate the folder you saved it in. After that, run the commands below.
```sh
chmod +x install.sh
./install.sh
```
`chmod` marks the script as executable
`./install.sh` executes the script

### Usage: disturbed <OPTION> [ARGS]
```sh
Info:
  -h, --help                      Displays this menu
  -v, --version                   Displays the current version of the CLI and Disturbed
Launch Disturbed:
  launch                          Launches Disturbed
  launch -r, launch --recovery    Launches Disturbed recovery
Manage installation:
  install                         Installs Disturbed and configures dependencies
  update                          Installs the latest version of Disturbed
  update --cli, update -c         Installs the latest version of the CLI (currently unsupported)
  remove                          Uninstalls Disturbed and it's dependencies
  remove --cli, remove -c         Uninstalls this CLI and Disturbed

```

### Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to test all the features before opening a pull request or issue.

### License
[MIT](https://choosealicense.com/licenses/mit/)