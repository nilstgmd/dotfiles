# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Activating before theme is loaded to get the correct java version.
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_71.jdk/Contents/Home
export JAVA_TOOL_OPTIONS='-Djava.awt.headless=true'

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="gnzh-custom"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
alias ohmyzsh="vi ~/Dropbox/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(encode64 git git-extras virtualenv mvn brew knife osx urltools wd sublime custom-aliases mongo-cluster MongoTools EnhancedMongo zsh-syntax-highlightingn tmux docker golang boot2docker)


# Autojump
 [[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

# Customize to your needs...
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export EDITOR='vim'

export PATH=$PATH:/opt/chef/embedded/bin:/work/hadoop-1.0.3/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/texbin
export HADOOP_HOME=/work/hadoop-1.0.3
export HADOOP_VERSION=1.0.3
export PATH="$HADOOP_HOME/bin:$PATH"

export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$PATH

export DOCKER_HOST=tcp://127.0.0.1:2376
export DOCKER_CERT_PATH=/Users/meder/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1
alias drm="docker rm"
alias dps="docker ps"

export PATH=/usr/local/bin:$PATH

MAVEN_OPTS="-Xmx2048m -XX:MaxPermSize=1024m"

archey -c
~/Dropbox/wego 0

# Git ShortCuts
alias pull="git pull"
alias commit="git add-commit -m"
alias push="git push origin"
alias rebaseMaster="git rebase master"
alias status="git status -s"

# Cassandra
alias stop_cassandra="launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.cassandra.plist"
alias start_cassandra="launchctl load ~/Library/LaunchAgents/homebrew.mxcl.cassandra.plist"

alias synergy='/Applications/Synergy.app/Contents/MacOS/synergys -f --config /Users/meder/synergy.conf --daemon'
alias genesis='cd /work/git/serviceContainer/itests/target/paxexam/unpack'

# ssh shortcuts
alias sshDev="ssh -i ~/.ssh/sc-dev.pem -l deploy "
alias sshEUDev="ssh -i ~/.ssh/sc-dev-eu.pem -l deploy "
alias sshEUMongoDev="ssh -i ~/.ssh/sc-dev-eu.pem -l ec2-user "
alias sshMongoDev="ssh -i ~/.ssh/sc-dev.pem -l ec2-user "
alias sshStage="ssh -i ~/.ssh/cloudops-sc-deploy-stage_201403.pem -l deploy "
alias sshProd="ssh -i ~/.ssh/cloudops-sc-deploy-prod_201403.pem -l deploy "

# hide and show system files
alias show='defaults write com.apple.finder AppleShowAllFiles -boolean true; killall Finder'
alias hide='defaults write com.apple.finder AppleShowAllFiles -boolean false; killall Finder'

# build
alias buildSvc='wd svc && mvn clean install'
alias buildOscar='wd oscar && mvn clean install'
alias mprep='mvn clean release:prepare'
alias mperf='mvn release:perform'

if [ "$TMUX" = "" ]; then tmux; fi
export ZSH_TMUX_AUTOSTART=true
export ZSH_TMUX_AUTOCONNECT=true
export ZSH_TMUX_AUTOQUIT=true

# Stable AZ1: 54.208.185.30
# Stable AZ2: 54.208.172.225
alias scss-stable-bastion="ssh -i ~/.ssh/SC-bastion.pem ec2-user@54.208.185.30"
alias scss-hop-stable-bastion="ssh -t -i ~/.ssh/SC-bastion.pem ec2-user@54.208.185.30 \"ssh $@\""

# ==================================================================================================

# Stage US AZ1: 54.208.135.45
# Stage US AZ2: 54.208.124.148
alias scss-stage-ue1-bastion="ssh -i ~/.ssh/SC-bastion.pem ec2-user@54.208.135.45"
alias scss-hop-stage-ue1-bastion="ssh -t -i ~/.ssh/SC-bastion.pem ec2-user@54.208.135.45 \"ssh $@\""
# Stage EU AZ1: 54.229.164.29
# Stage EU AZ2: 54.229.164.22
alias scss-stage-ew1-bastion="ssh -i ~/.ssh/SC-bastion.pem ec2-user@54.229.164.29"
alias scss-hop-stage-ew1-bastion="ssh -t -i ~/.ssh/SC-bastion.pem ec2-user@54.229.164.29 \"ssh $@\""
# Stage AP AZ1: 54.250.222.126
# Stage AP AZ2: 54.250.222.73
alias scss-stage-an1-bastion="ssh -i ~/.ssh/SC-bastion.pem ec2-user@54.250.222.126"
alias scss-hop-stage-an1-bastion="ssh -t -i ~/.ssh/SC-bastion.pem ec2-user@54.250.222.126 \"ssh $@\""

# ==================================================================================================

# Prod US AZ1: 54.208.214.6
# Prod US AZ2: 54.208.250.182
alias scss-prod-ue1-bastion="ssh -i ~/.ssh/SC-bastion.pem ec2-user@54.208.214.6"
alias scss-hop-prod-ue1-bastion="ssh -t -i ~/.ssh/SC-bastion.pem ec2-user@54.208.214.6 \"ssh $@\""
# Prod EU AZ1: 54.194.17.30
# Prod EU AZ2: 54.194.8.49
alias scss-prod-ew1-bastion="ssh -i ~/.ssh/SC-bastion.pem ec2-user@54.194.17.30"
alias scss-hop-prod-ew1-bastion="ssh -t -i ~/.ssh/SC-bastion.pem ec2-user@54.194.17.30 \"ssh $@\""
# Prod AP AZ1: 54.238.151.77
# Prod AP AZ2: 54.238.202.1
alias scss-prod-an1-bastion="ssh -i ~/.ssh/SC-bastion.pem ec2-user@54.238.151.77"
alias scss-hop-prod-an1-bastion="ssh -t -i ~/.ssh/SC-bastion.pem ec2-user@54.238.151.77 \"ssh $@\""

# ======================================================================== local mongo shard & repl
alias mongod-server1A="mongod --dbpath /data/server1A/ --port 27010 --rest --shardsvr --replSet set1/localhost:27011"
alias mongod-server1B="mongod --dbpath /data/server1B/ --port 27011 --rest --shardsvr --replSet set1/localhost:27010"
alias mongod-server1C="mongod --dbpath /data/server1C/ --port 27012 --rest --shardsvr --replSet set1/localhost:27010"
alias mongod-config="mongod --dbpath /data/config/ --port 27050 --configsvr"
alias mongos-local="mongos --configdb localhost:27050"
alias local-mongo-cluster="mongod --fork --dbpath /data/server1A/ --port 27010 --shardsvr --replSet set1/localhost:27011 --logpath /usr/local/var/log/mongodb/mongoA.log && mongod --fork --dbpath /data/server1B/ --port 27011 --shardsvr --replSet set1/localhost:27010 --logpath /usr/local/var/log/mongodb/mongoB.log && mongod --fork --dbpath /data/server1C/ --port 27012 --shardsvr --replSet set1/localhost:27010 --logpath /usr/local/var/log/mongodb/mongoC.log && mongod --fork --dbpath /data/server2A/ --port 27020 --shardsvr --replSet set2/localhost:27021 --logpath /usr/local/var/log/mongodb/mongo2A.log && mongod --fork --dbpath /data/server2B/ --port 27021 --shardsvr --replSet set2/localhost:27020 --logpath /usr/local/var/log/mongodb/mongo2B.log && mongod --fork --dbpath /data/server2C/ --port 27022 --shardsvr --replSet set2/localhost:27020 --logpath /usr/local/var/log/mongodb/mongo2C.log && mongod --fork --dbpath /data/config/ --port 27050 --configsvr --logpath /usr/local/var/log/mongodb/mongoConfig.log && mongos --fork --logpath /usr/local/var/log/mongodb/mongos.log --configdb localhost:27050"

sc() { aws ec2 describe-instances | jq 'def na: if (. == null) then "n/a" else . end; .Reservations[].Instances[] | select(contains({Tags: [{Key: "Name"}, {Value: "'$@'"}]})) | {Deployed: (.Tags | map(select(contains({Key: "deployTime"}))) | map(.Value) | add | na), Build: ( .Tags | map(select(contains({Key: "deployedBuild"}))) | map(.Value) | add | na), Cookbook: (.Tags | map(select(contains({Key: "CookbookVersion"}))) | map(.Value) | add | na), State: .State.Name, PrivateIP: (.PrivateIpAddress | na), PublicDNS: (.PublicDnsName | na), Name: (.Tags[] | select(contains({Key: "Name"}) and (contains({Key: "groupName"}) | not)) | .Value)}' }

component() { curl http://mad-ham-mtx.eur.adobe.com:8080 | jq '.[] | select(.owner1=="'$USER'" or .owner2=="'$USER'" or .expert1=="'$USER'") | {name: .name, design: .scores.design, code: .scores.code, documentation: .scores.documentation, tests: .scores.tests, knowledge: .scores.knowledge, churn: .scores.churn}' }

source "$HOME/.homesick/repos/homeshick/homeshick.sh"
fpath=($HOME/.homesick/repos/homeshick/completions $fpath)
homeshick --quiet refresh 2

source $ZSH/oh-my-zsh.sh
