selenese-runner-java
=========

[![Ansible Role](https://img.shields.io/ansible/role/22789.svg)](https://galaxy.ansible.com/koichirok/selenese-runner-java/)


Ansible role to install [selenese-runner-java](https://github.com/vmi/selenese-runner-java/).

Requirements
------------

Java. The minimum versions of Java required by selenese-runner-java are as follows

selenese-runner-java version|Minimum Java version
----------------------------|--------------------
3.x.x | Java 8
2.x.x | Java 7
1.x.x | Java 6

Role Variables
--------------

Variable | Description | Default
---------|-------------|--------
`selenese_runner_java_version`| The version of the selenese-runner-java to install | 3.20.0
`selenese_runner_java_jar_dir`| The directory for installing selenese-runner.jar | `selenese_runner_java_jar_dir_default` defined in the YAML file for each platform under the [vars](vars/) directory.
`selenese_runner_java_bin_dir`| The directory for installing selenese-runner script | `selenese_runner_java_bin_dir_default` defined in the YAML file for each platform under the [vars](vars/) directory.
`selenese_runner_java_file_owner`| The user name or id of owner of the jar and script to install | `ansible_user_uid`
`selenese_runner_java_file_group`| The group name or id of the jar and script to install | `ansible_user_gid`
`selenese_runner_java_extra_classpath`| List of additional classpath | `[]`

Dependencies
------------

None

Example Playbook
----------------

```yaml
- hosts: servers
  roles:
     - role: koichirok.selenese-runner-java
       selenese_runner_java_extra_classpath:
       - '/path/to/your_extra_classpath1'
       - '/path/to/your_extra_classpath2'
```

License
-------

BSD

Author Information
------------------

KIKUCHi Koichiro
