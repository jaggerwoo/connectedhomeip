$ git remote -v # 查看当前的上游代码库

$ git remote add upstream https://github.com/project-chip/connectedhomeip.git #
再设置一个上游代码库

$ git fetch upstream # 拉取新设置的上游代码库

合并 tag

$ git merge upstream v1.2.0.1
