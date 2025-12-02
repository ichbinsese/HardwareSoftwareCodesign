# 2025-12-02T09:22:02.919051400
import vitis

client = vitis.create_client()
client.set_workspace(path="Vitis_Project")

client.delete_component(name="soc_platform")

client.delete_component(name="componentName")

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "soc_platform",hw_design = "$COMPONENT_LOCATION/../../Vivado_Project/soc_design_wrapper.xsa",os = "standalone",cpu = "ps7_cortexa9_0",domain_name = "standalone_ps7_cortexa9_0",generate_dtb = False,advanced_options = advanced_options,compiler = "gcc")

platform = client.get_component(name="soc_platform")
domain = platform.add_domain(cpu = "ps7_cortexa9_0",os = "standalone",name = "soc_domain",display_name = "soc_domain",support_app = "lwip_udp_perf_server",generate_dtb = False)

comp = client.create_app_component(name="lwip_udp_perf_server",platform = "$COMPONENT_LOCATION/../soc_platform/export/soc_platform/soc_platform.xpfm",domain = "soc_domain",template = "lwip_udp_perf_server")

status = platform.build()

comp = client.get_component(name="lwip_udp_perf_server")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

vitis.dispose()

