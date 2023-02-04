#!/bin/bash

# Crear el directorio
 mkdir -p /usr/local/opnsense/scripts/suricata/metadata/rules/ 2> /dev/null
# Crear el archivo (por si no está creado)
  touch /usr/local/opnsense/scripts/suricata/metadata/rules/hacks4geeks.xml 2> /dev/null
# Vaciarlo
  truncate -s 0 /usr/local/opnsense/scripts/suricata/metadata/rules/hacks4geeks.xml 2> /dev/null
# Rellenar el archivo
  echo '<?xml version="1.0"?>'                                                                             >> /usr/local/opnsense/scripts/suricata/metadata/rules/custom.xml
  echo '<ruleset documentation_url="http://docs.opnsense.org/">'                                           >> /usr/local/opnsense/scripts/suricata/metadata/rules/custom.xml
  echo '    <location url="https://hacks4geeks.com/_/premium/opnsense/suricata/" prefix="hacks4geeks"/>'   >> /usr/local/opnsense/scripts/suricata/metadata/rules/custom.xml
  echo '    <files>'                                                                                       >> /usr/local/opnsense/scripts/suricata/metadata/rules/custom.xml
  echo '        <file description="hacks4geeks rules">hacks4geeks.rules</file>'                            >> /usr/local/opnsense/scripts/suricata/metadata/rules/custom.xml
  echo '        <file description="Custom" url="inline::rules/hacks4geeks.rules">hacks4geeks.rules</file>' >> /usr/local/opnsense/scripts/suricata/metadata/rules/custom.xml
  echo '    </files>'                                                                                      >> /usr/local/opnsense/scripts/suricata/metadata/rules/custom.xml
  echo '</ruleset>'                                                                                        >> /usr/local/opnsense/scripts/suricata/metadata/rules/custom.xml
# 
service suricata restart

