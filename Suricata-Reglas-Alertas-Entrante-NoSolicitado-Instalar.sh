#!/bin/bash

# Pongo a disposición pública este script bajo el término de "software de dominio público".
# Puedes hacer lo que quieras con él porque es libre de verdad; no libre con condiciones como las licencias GNU y otras patrañas similares.
# Si se te llena la boca hablando de libertad entonces hazlo realmente libre.
# No tienes que aceptar ningún tipo de términos de uso o licencia para utilizarlo o modificarlo porque va sin CopyLeft.

# ----------
#  Script de NiPeGun para instalar reglas personalizadas de suricata en OPNsense
#
#  Ejecución remota:
#  curl -s https://raw.githubusercontent.com/nipegun/opn-scripts/master/Suricata-Reglas-Alertas-Entrante-NoSolicitado-Instalar.sh | bash
# ----------

touch /usr/local/etc/suricata/opnsense.rules/entrante-no-solicitado.rules 2> /dev/null
echo 'alert icmp $EXTERNAL_NET any -> $HOME_NET any (msg: "Detectada conexión ICMP entrante no solicitada"; flow:not_established; sid:5000001; rev:1;)' >> /usr/local/etc/suricata/opnsense.rules/entrante-no-solicitado.rules
echo 'alert tcp $EXTERNAL_NET any -> $HOME_NET any (msg: "Detectada conexión TCP entrante no solicitada"; flow:not_established; sid:5000002; rev:1;)'   >> /usr/local/etc/suricata/opnsense.rules/entrante-no-solicitado.rules
echo 'alert udp $EXTERNAL_NET any -> $HOME_NET any (msg: "Detectada conexión UDP entrante no solicitada"; flow:not_established; sid:5000003; rev:1;)'   >> /usr/local/etc/suricata/opnsense.rules/entrante-no-solicitado.rules

#echo 'alert icmp $EXTERNAL_NET any -> $HOME_NET any (msg: "Detectada conexión ICMP entrante no solicitada"; flow:not_established; sid:5000001; rev:1;)' >> /usr/local/etc/suricata/opnsense.rules/OPNsense.rules
#echo 'alert tcp $EXTERNAL_NET any -> $HOME_NET any (msg: "Detectada conexión TCP entrante no solicitada"; flow:not_established; sid:5000002; rev:1;)'   >> /usr/local/etc/suricata/opnsense.rules/OPNsense.rules
#echo 'alert udp $EXTERNAL_NET any -> $HOME_NET any (msg: "Detectada conexión UDP entrante no solicitada"; flow:not_established; sid:5000003; rev:1;)'   >> /usr/local/etc/suricata/opnsense.rules/OPNsense.rules

