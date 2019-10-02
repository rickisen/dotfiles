#!/bin/bash
cd ~/.local/share/Steam/steamapps/common/Divinity\ Original\ Sin\ 2
# mv SupportTool.exe SupportTool.exe.bak
# mv EoCApp.exe SupportTool.exe
mv ./bin ./bin.bak && ln -s DefEd/bin bin && cd bin && mv ./SupportTool.exe ./SupportTool.bak && ln -s EoCApp.exe SupportTool.exe
