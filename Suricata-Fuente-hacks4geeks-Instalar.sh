#!/bin/bash

# Crear el directorio
 mkdir -p /usr/local/opnsense/scripts/suricata/metadata/rules/ 2> /dev/null
# Crear el archivo
  touch /usr/local/opnsense/scripts/suricata/metadata/rules/custom.xml 2> /dev/null
# Rellenar el archivo
  echo '<?xml version="1.0"?>'                                                                      >> /usr/local/opnsense/scripts/suricata/metadata/rules/custom.xml
  echo '<ruleset documentation_url="http://docs.opnsense.org/">'                                    >> /usr/local/opnsense/scripts/suricata/metadata/rules/custom.xml
  echo '    <location url="https://hacks4geeks.com/_/premium/opnsense/suricata/" prefix="Custom"/>' >> /usr/local/opnsense/scripts/suricata/metadata/rules/custom.xml
  echo '    <files>'                                                                                >> /usr/local/opnsense/scripts/suricata/metadata/rules/custom.xml
  echo '        <file description="custom rules">Custom.rules</file>'                               >> /usr/local/opnsense/scripts/suricata/metadata/rules/custom.xml
  echo '        <file description="Custom" url="inline::rules/Custom.rules">Custom.rules</file>'    >> /usr/local/opnsense/scripts/suricata/metadata/rules/custom.xml
  echo '    </files>'                                                                               >> /usr/local/opnsense/scripts/suricata/metadata/rules/custom.xml
  echo '</ruleset>'                                                                                 >> /usr/local/opnsense/scripts/suricata/metadata/rules/custom.xml
#

  touch /usr/local/opnsense/scripts/suricata/metadata/rules/hacks4geeks.xml 2> /dev/null
# Rellenar el archivo
  echo '<?xml version="1.0"?>'                                                                             >> /usr/local/opnsense/scripts/suricata/metadata/rules/custom.xml
  echo '<ruleset documentation_url="http://docs.opnsense.org/">'                                           >> /usr/local/opnsense/scripts/suricata/metadata/rules/custom.xml
  echo '    <location url="https://hacks4geeks.com/_/premium/opnsense/suricata/" prefix="Custom"/>'        >> /usr/local/opnsense/scripts/suricata/metadata/rules/custom.xml
  echo '    <files>'                                                                                       >> /usr/local/opnsense/scripts/suricata/metadata/rules/custom.xml
  echo '        <file description="hacks4geeks rules">hacks4geeks.rules</file>'                            >> /usr/local/opnsense/scripts/suricata/metadata/rules/custom.xml
  echo '        <file description="Custom" url="inline::rules/hacks4geeks.rules">hacks4geeks.rules</file>' >> /usr/local/opnsense/scripts/suricata/metadata/rules/custom.xml
  echo '    </files>'                                                                                      >> /usr/local/opnsense/scripts/suricata/metadata/rules/custom.xml
  echo '</ruleset>'                                                                                        >> /usr/local/opnsense/scripts/suricata/metadata/rules/custom.xml
# 
