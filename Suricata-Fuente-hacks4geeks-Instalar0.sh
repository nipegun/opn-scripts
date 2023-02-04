#!/bin/bash

# Pongo a disposición pública este script bajo el término de "software de dominio público".
# Puedes hacer lo que quieras con él porque es libre de verdad; no libre con condiciones como las licencias GNU y otras patrañas similares.
# Si se te llena la boca hablando de libertad entonces hazlo realmente libre.
# No tienes que aceptar ningún tipo de términos de uso o licencia para utilizarlo o modificarlo porque va sin CopyLeft.

# ----------
#  Script de NiPeGun para instalar la fuente de hacks4geeks con reglas de suricata para OPNsense
#
#  Ejecución remota:
#  curl -s https://raw.githubusercontent.com/nipegun/opn-scripts/main/Suricata-Fuente-hacks4geeks-Instalar.sh | bash
# ----------

# Crear el directorio
 mkdir -p /usr/local/opnsense/scripts/suricata/metadata/rules/ 2> /dev/null
# Crear el archivo (por si no está creado)
  touch /usr/local/opnsense/scripts/suricata/metadata/rules/hacks4geeks.xml 2> /dev/null
# Vaciarlo
  truncate -s 0 /usr/local/opnsense/scripts/suricata/metadata/rules/hacks4geeks.xml 2> /dev/null
# Rellenar el archivo
  echo '<?xml version="1.0"?>'                                                                             >> /usr/local/opnsense/scripts/suricata/metadata/rules/hacks4geeks.xml
  echo '<ruleset documentation_url="http://docs.opnsense.org/">'                                           >> /usr/local/opnsense/scripts/suricata/metadata/rules/hacks4geeks.xml
  echo '    <location url="https://hacks4geeks.com/_/premium/opnsense/suricata/" prefix="hacks4geeks"/>'   >> /usr/local/opnsense/scripts/suricata/metadata/rules/hacks4geeks.xml
  echo '    <files>'                                                                                       >> /usr/local/opnsense/scripts/suricata/metadata/rules/hacks4geeks.xml
  echo '        <file description="hacks4geeks rules">hacks4geeks.rules</file>'                            >> /usr/local/opnsense/scripts/suricata/metadata/rules/hacks4geeks.xml
  echo '        <file description="Custom" url="inline::rules/hacks4geeks.rules">hacks4geeks.rules</file>' >> /usr/local/opnsense/scripts/suricata/metadata/rules/hacks4geeks.xml
  echo '    </files>'                                                                                      >> /usr/local/opnsense/scripts/suricata/metadata/rules/hacks4geeks.xml
  echo '</ruleset>'                                                                                        >> /usr/local/opnsense/scripts/suricata/metadata/rules/hacks4geeks.xml
# 
service suricata restart

