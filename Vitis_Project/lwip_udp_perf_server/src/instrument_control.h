#pragma once

#include <stdint.h>

void instrument_cyclic();
uint32_t initialize_instrument();
uint32_t instrument_housekeeping();
uint32_t dump_instrument_data();