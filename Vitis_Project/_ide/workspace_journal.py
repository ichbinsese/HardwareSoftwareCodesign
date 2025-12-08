# 2025-12-08T09:37:10.819321700
import vitis

client = vitis.create_client()
client.set_workspace(path="Vitis_Project")

comp = client.get_component(name="lwip_udp_perf_server")
comp.build()

comp.build()

vitis.dispose()

