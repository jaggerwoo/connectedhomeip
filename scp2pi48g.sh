#!/bin/bash

scp ./examples/chip-tool/commands/interactive/InteractiveCommands.cpp root@192.168.0.181:~/connectedhomeip/examples/chip-tool/commands/interactive/InteractiveCommands.cpp
scp ./examples/chip-tool/commands/interactive/InteractiveCommands.h root@192.168.0.181:~/connectedhomeip/examples/chip-tool/commands/interactive/InteractiveCommands.h
scp ./examples/chip-tool/commands/pairing/PairingCommand.cpp root@192.168.0.181:~/connectedhomeip/examples/chip-tool/commands/pairing/PairingCommand.cpp
scp ./examples/chip-tool/commands/pairing/PairingCommand.h root@192.168.0.181:~/connectedhomeip/examples/chip-tool/commands/pairing/PairingCommand.h
scp ./examples/chip-tool/commands/common/Commands.cpp root@192.168.0.181:~/connectedhomeip/examples/chip-tool/commands/common/Commands.cpp
# scp ./examples/chip-tool/commands/discover/DiscoverCommissionablesCommand.cpp root@192.168.0.181:~/connectedhomeip/examples/chip-tool/commands/discover/DiscoverCommissionablesCommand.cpp
# scp ./examples/chip-tool/commands/common/CHIPCommand.cpp root@192.168.0.181:~/connectedhomeip/examples/chip-tool/commands/common/CHIPCommand.cpp

ssh root@192.168.0.181 "\
	cd ~/connectedhomeip;\
	source scripts/activate.sh;\
	./scripts/examples/gn_build_example.sh examples/chip-tool aaa;\
	~/connectedhomeip/aaa/chip-tool interactive server"