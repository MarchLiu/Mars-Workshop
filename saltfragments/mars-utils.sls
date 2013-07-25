emacs23-nox:
  pkg:
    - installed
emacskgs:
  pkg.installed:
    - pkgs:
        - "emacs-goodies-el"
        - 'yaml-mode'
        - "debian-el"
    - require:
        - pkg: emacs23-nox

ourpkgs:
  pkg.installed:
    - pkgs:
        - sudo
        - tmux
        - vim
        - less
        - git
        - wget
        - curl
        - "p7zip-full"
        - zsh
        - ntpdate
        - htop
        - "salt-minion"
        - "salt-doc"
        - 'debconf-utils'
        - ipython