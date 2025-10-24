#!/bin/bash
set -euo pipefail

# Source common functions
source "$(dirname "${BASH_SOURCE[0]}")/common.sh"

exit_if_not_on_ec2_instance

if [[ "${BUILD_TYPE_ID:-}" == Gradle_Xperimental* ]]; then
  execute_build_script_from_env "${XPERIMENTAL_EC2_POST_BUILD_SCRIPT:-}"
else
  execute_build_script_from_env "${MASTER_EC2_POST_BUILD_SCRIPT:-}"
fi
