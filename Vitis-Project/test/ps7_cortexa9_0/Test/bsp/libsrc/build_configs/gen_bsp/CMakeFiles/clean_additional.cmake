# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "")
  file(REMOVE_RECURSE
  "C:\\Projects\\HWSW\\Vitis-Project\\test\\ps7_cortexa9_0\\Test\\bsp\\include\\lwipopts.h"
  "C:\\Projects\\HWSW\\Vitis-Project\\test\\ps7_cortexa9_0\\Test\\bsp\\include\\sleep.h"
  "C:\\Projects\\HWSW\\Vitis-Project\\test\\ps7_cortexa9_0\\Test\\bsp\\include\\xemac_ieee_reg.h"
  "C:\\Projects\\HWSW\\Vitis-Project\\test\\ps7_cortexa9_0\\Test\\bsp\\include\\xemacpsif_hw.h"
  "C:\\Projects\\HWSW\\Vitis-Project\\test\\ps7_cortexa9_0\\Test\\bsp\\include\\xiltimer.h"
  "C:\\Projects\\HWSW\\Vitis-Project\\test\\ps7_cortexa9_0\\Test\\bsp\\include\\xlwipconfig.h"
  "C:\\Projects\\HWSW\\Vitis-Project\\test\\ps7_cortexa9_0\\Test\\bsp\\include\\xtimer_config.h"
  "C:\\Projects\\HWSW\\Vitis-Project\\test\\ps7_cortexa9_0\\Test\\bsp\\lib\\liblwip220.a"
  "C:\\Projects\\HWSW\\Vitis-Project\\test\\ps7_cortexa9_0\\Test\\bsp\\lib\\libxiltimer.a"
  )
endif()
