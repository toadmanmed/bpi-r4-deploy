#!/bin/sh
uci set wireless.radio0.country='00'
uci set wireless.radio1.country='00'
uci set wireless.radio2.country='00'

uci set wireless.radio1.channel='149'
uci set wireless.radio1.htmode='VHT160'

uci set wireless.radio2.channel='69'
uci set wireless.radio2.htmode='EHT320'

uci commit wireless
exit 0
