# NetRecon

> A tool to scan the network you're connected to.

**NetRecon** is a **Bash script** that automates the process of scanning a network and identifying key targets. It was designed to save time when conducting reconnaissance on a network. 

This script should be the first task to run when connecting to a network. It will provide you with a list of active hosts on the network, check for key open ports, and capture screenshots of detected web servers—all while maintaining your anonymity.

## Installation

First, clone the repository to your desired directory:

```bash
git clone https://github.com/zw9seq/netrecon
cd netrecon
```

Next, install the **requirements** using the **setup.sh** script:

```bash
./setup.sh
```

Once all the required packages are installed, the tool will be ready for use.

### Additional Configuration

If you want to make the script easier to execute by adding it to your system's PATH, simply copy it to one of the directories included in your PATH. To view your current PATH, run:

```bash
echo $PATH
```

Typically, you'll want to place it in the **/usr/local/bin** directory. To do so, run:

```bash
sudo cp netrecon /usr/local/bin
```

## Usage

Using **NetRecon** is simple. Run the script, and it will prompt you to enter the name of the target. This name will be used to create a directory that will store the information about the target.

```bash
netrecon
```

## License

This project is licensed under the **MIT License**. Feel free to modify and distribute this template as needed.

See [LICENSE](LICENSE) for more details.
