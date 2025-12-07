# 2025-12-06T10:58:51.199966600
import vitis

client = vitis.create_client()
client.set_workspace(path="Vitis_Project")

platform = client.get_component(name="soc_platform")
status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../Vivado_Project/SoC_Project/soc_design_wrapper.xsa")

vitis.dispose()

