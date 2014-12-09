{% from "snmp/map.jinja" import snmp with context %}

include:
  - snmp

trap:
  service:
    - running
    - name: {{ snmp.lookup.servicetrap }}
    - enable: true
