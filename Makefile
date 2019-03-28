.PHONY: all
all: $$HOME/Library/Application\ Support/factorio/mods/LogisticTrainNetwork_2.3.4 $$HOME/Library/Application\ Support/factorio/mods/mod-list.json

$$HOME/Library/Application\ Support/factorio/mods/LogisticTrainNetwork_2.3.4:
	ln -sf "$$PWD" $$HOME/Library/Application\ Support/factorio/mods/LogisticTrainNetwork_2.3.4

#$$HOME/Library/Application\ Support/factorio/mods/LogisticTrainNetwork-dev.zip: LogisticTrainNetwork-dev.zip
#	cp "$${PWD}/LogisticTrainNetwork-dev.zip" "$$HOME/Library/Application Support/factorio/mods/LogisticTrainNetwork-dev.zip" 


#LogisticTrainNetwork-dev.zip: *
#	zip -r LogisticTrainNetwork-dev.zip *


$$HOME/Library/Application\ Support/factorio/mods/mod-list.json: $$HOME/Library/Application\ Support/factorio/mods/mod-list.json
	jq '.mods += [{"name": "LogisticTrainNetwork", "enabled": true }]' $$HOME/Library/Application\ Support/factorio/mods/mod-list.json >$$HOME/Library/Application\ Support/factorio/mods/mod-list.json


run:
	$$HOME/Applications/Factorio.app/Contents/MacOS/run.sh
