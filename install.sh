#!/bin/bash

reset

shell_folder="$(dirname "$(realpath "${BASH_SOURCE[0]}")")"
shell_folder_bash="${shell_folder}/bash"

echo "########## Install packages"

sudo apt-get install --quiet --no-show-upgraded --assume-yes \
    openjdk-8-jre \
    php8.3-raphf \
    shfmt \
    tilda \
    ttf-mscorefonts-installer \
    bcmwl-kernel-source \
    openjdk-21-jre \
    php8.3-bcmath \
    php8.3-bz2 \
    php8.3-curl \
    php8.3-gd \
    php8.3-http \
    php8.3-intl \
    php8.3-mbstring \
    php8.3-mcrypt \
    php8.3-mysql \
    php8.3-sqlite3 \
    sqlite3 \
    php8.3-uuid \
    php8.3-xml \
    php8.3-xsl \
    php8.3-yaml \
    php8.3-zip \
    vim \
    curl \
    ssh \
    telnet \
    gzip \
    zip \
    unzip \
    fortunes \
    taskwarrior \
    git \
    git-cola \
    git-gui \
    git-delete-merged-branches \
    php8.3-cli \
    &>/dev/null

sudo apt-get autoclean --assume-yes

echo "########## Install PHPCS"

current_folder=$(pwd)
my_path="${current_folder}/.my_path"

curl -OL https://squizlabs.github.io/PHP_CodeSniffer/phpcbf.phar
chmod 777 phpcbf.phar
mv phpcbf.phar .my_path/phpcbf

curl -OL https://squizlabs.github.io/PHP_CodeSniffer/phpcs.phar
chmod 777 phpcs.phar
mv phpcs.phar .my_path/phpcs

echo "########## Install Composer"

php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php composer-setup.php --install-dir=$my_path --filename=composer
rm composer-setup.php

echo "########## Link fonts"

rm ~/.fonts
ln -s "${shell_folder}/fonts" ~/.fonts

echo "########## Link profile"

if [[ -e ~/.bashrc ]]; then
    rm ~/.bashrc
fi
ln -s "${shell_folder}/bashrc.sh" ~/.bashrc

if [[ -e ~/.profile ]]; then
    rm ~/.profile
fi
ln -s "${shell_folder}/bashrc.sh" ~/.profile

if [[ -e ~/.gitconfig ]]; then
    rm ~/.gitconfig
fi
ln -s "${shell_folder}/git/gitconfig" ~/.gitconfig

if [[ -e ~/.vimrc ]]; then
    rm ~/.vimrc
fi
ln -s "${shell_folder}/vim/vimrc" ~/.vimrc
