# 2025-12-01T15:55:38.199909300
import vitis

client = vitis.create_client()
client.set_workspace(path="Vitis_Project")

platform = client.get_component(name="soc_platform")
status = platform.build()

comp = client.get_component(name="lwip_udp_perf_server")
comp.build()

status = platform.build()

comp.build()

status = comp.clean()

status = platform.build()

comp.build()

vitis.dispose()

