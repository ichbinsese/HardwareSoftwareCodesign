# 2025-11-26T18:08:01.827453400
import vitis

client = vitis.create_client()
client.set_workspace(path="Vitis-Project")

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "test",hw_design = "$COMPONENT_LOCATION/../../Exported-Hardware/test_2/default_block_design_wrapper.xsa",os = "standalone",cpu = "ps7_cortexa9_0",domain_name = "standalone_ps7_cortexa9_0",generate_dtb = False,advanced_options = advanced_options,compiler = "gcc")

comp = client.create_app_component(name="lwip_udp_perf_server",platform = "$COMPONENT_LOCATION/../test/export/test/test.xpfm",domain = "standalone_ps7_cortexa9_0",template = "lwip_udp_perf_server")

platform = client.get_component(name="test")
domain = platform.add_domain(cpu = "ps7_cortexa9_0",os = "freertos",name = "Test",display_name = "Test",support_app = "freertos_lwip_udp_perf_server",generate_dtb = False)

comp = client.create_app_component(name="freertos_lwip_udp_perf_server",platform = "$COMPONENT_LOCATION/../test/export/test/test.xpfm",domain = "Test",template = "freertos_lwip_udp_perf_server")

