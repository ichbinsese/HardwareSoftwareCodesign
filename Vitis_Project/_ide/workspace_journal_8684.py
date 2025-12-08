# 2025-12-08T06:41:58.975152100
import vitis

client = vitis.create_client()
client.set_workspace(path="Vitis_Project")

platform = client.get_component(name="soc_platform")
status = platform.build()

comp = client.get_component(name="lwip_udp_perf_server")
comp.build()

comp = client.get_component(name="lwip_udp_perf_server")
comp.build()

comp.build()

comp.build()

comp.build()

comp.build()

platform = client.get_component(name="soc_platform")
status = platform.build()

vitis.dispose()

