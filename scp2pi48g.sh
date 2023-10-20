#!/bin/bash

scp ./examples/chip-tool/commands/interactive/InteractiveCommands.cpp root@192.168.0.181:~/connectedhomeip/examples/chip-tool/commands/interactive/InteractiveCommands.cpp
scp ./examples/chip-tool/commands/interactive/InteractiveCommands.h root@192.168.0.181:~/connectedhomeip/examples/chip-tool/commands/interactive/InteractiveCommands.h
scp ./examples/chip-tool/commands/pairing/PairingCommand.cpp root@192.168.0.181:~/connectedhomeip/examples/chip-tool/commands/pairing/PairingCommand.cpp
scp ./examples/chip-tool/commands/pairing/PairingCommand.h root@192.168.0.181:~/connectedhomeip/examples/chip-tool/commands/pairing/PairingCommand.h
scp ./examples/chip-tool/commands/clusters/ReportCommand.h root@192.168.0.181:~/connectedhomeip/examples/chip-tool/commands/clusters/ReportCommand.h
scp ./src/app/ReadClient.cpp root@192.168.0.181:~/connectedhomeip/src/app/ReadClient.cpp
scp ./src/app/ReadClient.h root@192.168.0.181:~/connectedhomeip/src/app/ReadClient.h
scp ./src/app/BufferedReadCallback.cpp root@192.168.0.181:~/connectedhomeip/src/app/BufferedReadCallback.cpp
scp ./src/app/BufferedReadCallback.h root@192.168.0.181:~/connectedhomeip/src/app/BufferedReadCallback.h

ssh root@192.168.0.181 "\
	cd ~/connectedhomeip;\
	source scripts/activate.sh;\
	./scripts/examples/gn_build_example.sh examples/chip-tool aaa;\
	mkdir ~/connectedhomeip/aaa/chip-tool-tmp;\
	~/connectedhomeip/aaa/chip-tool interactive server --paa-trust-store-path ~/connectedhomeip/credentials/production/paa-root-certs --storage-directory ~/connectedhomeip/aaa/chip-tool-tmp/"