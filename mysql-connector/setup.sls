{% from 'mysql-connector/map.jinja' import connector with context %}

connector-install:
  archive.extracted:
    - name: {{ connector.homedir }}
    - source: {{ connector.url }}
    - archive_format: tar
    - tar_options: {{ connector.taropts }}
    - source_hash: md5={{ connector.hash }}
    - if_missing: {{ connector.file }}
    - user: root
    - group: root
