#!/bin/bash
dev_host=root@192.168.0.181
target_root=/root/woo_github/connectedhomeip

# 修改的文件
# scp ./examples/chip-tool/commands/interactive/InteractiveCommands.cpp $dev_host:$target_root/examples/chip-tool/commands/interactive/InteractiveCommands.cpp
# scp ./examples/chip-tool/commands/interactive/InteractiveCommands.h $dev_host:$target_root/examples/chip-tool/commands/interactive/InteractiveCommands.h
# scp ./examples/chip-tool/commands/pairing/PairingCommand.cpp $dev_host:$target_root/examples/chip-tool/commands/pairing/PairingCommand.cpp
# scp ./examples/chip-tool/commands/pairing/PairingCommand.h $dev_host:$target_root/examples/chip-tool/commands/pairing/PairingCommand.h
# scp ./examples/chip-tool/commands/clusters/ReportCommand.h $dev_host:$target_root/examples/chip-tool/commands/clusters/ReportCommand.h
# scp ./src/app/ReadClient.cpp $dev_host:$target_root/src/app/ReadClient.cpp
# scp ./src/app/ReadClient.h $dev_host:$target_root/src/app/ReadClient.h
# scp ./src/app/BufferedReadCallback.cpp $dev_host:$target_root/src/app/BufferedReadCallback.cpp
# scp ./src/app/BufferedReadCallback.h $dev_host:$target_root/src/app/BufferedReadCallback.h
# scp ./examples/common/websocket-server/WebSocketServer.cpp $dev_host:$target_root/examples/common/websocket-server/WebSocketServer.cpp

# 2024-10-31 添加chip-tool响应，通过ws发到gdcp
scp ./src/app/CommandSender.cpp $dev_host:$target_root/src/app/CommandSender.cpp
scp ./src/app/BUILD.gn $dev_host:$target_root/src/app/BUILD.gn

ssh $dev_host "\
	cd /root/woo_github/connectedhomeip;\
	source scripts/activate.sh;\
	./scripts/examples/gn_build_example.sh examples/chip-tool aaa;\
	cp /root/woo_github/connectedhomeip/aaa/chip-tool /usr/local/presen/pi/;"\
	/root/woo_github/connectedhomeip/aaa/chip-tool interactive server --paa-trust-store-path /usr/local/etc/presen/chip_tool/credentials --storage-directory /usr/local/etc/presen/chip_tool/config;