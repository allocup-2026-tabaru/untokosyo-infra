.PHONY: init update be fe env-tmp env-set

init:
	git submodule update --init --recursive

update:
	git submodule update --remote --merge

be:
	$(MAKE) -C untokosyo-be $(filter-out $@,$(MAKECMDGOALS))

fe:
	$(MAKE) -C untokosyo-fe $(filter-out $@,$(MAKECMDGOALS))

up:
	docker compose up --build

env-tmp:
	@if [ ! -f envs/be.env ]; then \
		cp untokosyo-be/.env.template envs/be.env; \
		echo "envs/be.env を作成しました。値を設定してください。"; \
	fi
	@if [ ! -f envs/fe.env ]; then \
		cp untokosyo-fe/.env.template envs/fe.env; \
		echo "envs/fe.env を作成しました。値を設定してください。"; \
	fi

env-set:
	cp envs/be.env untokosyo-be/.env
	cp envs/fe.env untokosyo-fe/.env.local

%:
	@:
