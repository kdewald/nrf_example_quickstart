#!/bin/bash

ROOT_DIR="$(dirname "$(realpath "$0")")"
PROJECT_DIR="${ROOT_DIR}/nRF5_SDK_17.1.0_ddde560/examples/ble_peripheral/ble_app_hrs/pca10056/s140/armgcc"

mkdir -p build_hrs
cd build_hrs

export GNU_INSTALL_ROOT=${ROOT_DIR}/gcc-arm-none-eabi-10.3-2021.10/bin/
make -C ${PROJECT_DIR}
make -C ${PROJECT_DIR} flash_softdevice
make -C ${PROJECT_DIR} flash


