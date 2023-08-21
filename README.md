andrewrothstein.nexus_repo
=========
![Build Status](https://github.com/andrewrothstein/ansible-nexus_repo/actions/workflows/build.yml/badge.svg)

Installs [Nexus Repository](https://www.sonatype.com/nexus_repository-oss).

Requirements
------------

See [meta/main.yml](meta/main.yml)

Role Variables
--------------

See [defaults/main.yml](defaults/main.yml)

Dependencies
------------

See [meta/main.yml](meta/main.yml)

Example Playbook
----------------

```yml
- hosts: servers
  roles:
    - andrewrothstein.nexus_repo
```

License
-------

MIT

Author Information
------------------

Andrew Rothstein <andrew.rothstein@gmail.com>
