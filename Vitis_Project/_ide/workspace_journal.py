# 2025-12-07T11:20:59.509768300
import vitis

client = vitis.create_client()
client.set_workspace(path="Vitis_Project")

platform = client.get_component(name="soc_platform")
status = platform.build()

comp = client.get_component(name="lwip_udp_perf_server")
comp.build()

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../SoC_Project/soc_design_wrapper.xsa")

status = platform.build()

status = platform.build()

comp.build()

vitis.dispose()

