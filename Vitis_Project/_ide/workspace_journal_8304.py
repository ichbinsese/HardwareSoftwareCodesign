# 2025-12-03T11:19:42.606762
import vitis

client = vitis.create_client()
client.set_workspace(path="Vitis_Project")

comp = client.get_component(name="lwip_udp_perf_server")
comp.build()

vitis.dispose()

