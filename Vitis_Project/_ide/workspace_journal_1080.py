# 2025-12-03T20:43:59.904453800
import vitis

client = vitis.create_client()
client.set_workspace(path="Vitis_Project")

comp = client.get_component(name="lwip_udp_perf_server")
comp.build()

comp.build()

comp.build()

comp.build()

comp.build()

comp.build()

comp.build()

comp.build()

comp.build()

comp.build()

comp.build()

vitis.dispose()

