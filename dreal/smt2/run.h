#pragma once

#include <string>

#include "dreal/solver/config.h"

namespace dreal {

void RunSmt2(const std::string& filename, const Config& config,
             bool debug_scanning, bool debug_parsing);

}  // namespace dreal
