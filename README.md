# Ethereum Miner

The purpose of this project is to provide mechanisms for developing, testing and deploying Ethereum miners.

__Donations:__ if you find this project helpful I suggest donating to the owner of [cpp-ethereum](https://github.com/Genoil/cpp-ethereum) via __ETH__ address `0xeb9310b185455f863f526dab3d245809f6854b4d`. Donations to myself also appreciated at __ETH__ address: `0x732deB77C2aC91DDedb41B4174aDbAfc5b0D2689`.


__NOTES:__ this project uses git submodules so you will want to clone recursively to have all expected behaviours.

```
git clone --recursive git@github.com:svo/ethereum-miner.git
```

## Setup

Requirements:
- Vagrant (tested with version: 1.9.3)
- VirtualBox (tested with version: 5.1.18 r114002)
- Ansible (tested with version: 2.1.1.0)

Setup environment by using the following: `vagrant up`

## Development

```
vagrant ssh
cd /vagrant
```

## Testing

```
vagrant ssh
cd /vagrant
./pre-commit.sh
```

Jenkins builds on commits and is available at: http://vagrant-ethereum-miner-ci.local:8080/

## Build EC2 Instance

```
vagrant ssh
aws configure
cd /vagrant/terraform
terraform apply
```

## Provisioning

### Provision Instance

```
vagrant ssh
cd /vagrant
./provision.sh <path-to-private-key> <ip-for-instance>
```

### Provision Instance/s By IP/DNS

Create an `ansible_hosts` file with the IP/DNS for the Virtual Machine/s then:

```
ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook --private-key <path-to-private-key> -u <username> -i ansible_hosts ansible/playbook.yml
```

## Running Miner

### Start Geth:

```
geth --etherbase 0xa3d0dF26399A18BE31dD959D566ecdb50F9070ed --rpc --rpccorsdomain localhost
```

### Run GPU Miner

```
~/cpp-ethereum/build/ethminer/ethminer -U -G -F http://eth-us2.dwarfpool.com:80/0xa3d0dF26399A18BE31dD959D566ecdb50F9070ed
```

### Run CPU Miner

```
ethminer -F http://eth-us2.dwarfpool.com:80/0xa3d0dF26399A18BE31dD959D566ecdb50F9070ed
```
