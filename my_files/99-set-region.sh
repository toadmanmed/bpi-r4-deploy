#!/bin/sh

# Força o país 99 em todos os rádios
for r in radio0 radio1 radio2; do
    uci set wireless.${r}.country='99'
done

# 2.4 GHz - Wi-Fi 7 (EHT40 ou HE40)
uci set wireless.radio0.channel='auto'
uci set wireless.radio0.htmode='EHT40'

# 5 GHz - Wi-Fi 7 (Canal 149 @ 160 MHz via UNII-4 liberado no regdb)
uci set wireless.radio1.channel='149'
uci set wireless.radio1.htmode='EHT160'
uci set wireless.radio1.cell_density='0'

# 6 GHz - Wi-Fi 7 (Largura máxima de 320 MHz sem travas de AFC)
uci set wireless.radio2.channel='37'
uci set wireless.radio2.htmode='EHT320'

uci commit wireless
exit 0
