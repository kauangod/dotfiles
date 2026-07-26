# Snapshot manual do sistema

Snapshot manual do estado atual do sistema, realizado em **2026-07-26**.

## Origem

- Configurações ativas copiadas de `/home/kauan/.config`.
- Arquivos de home copiados de `/home/kauan` somente quando já são acompanhados pelo repositório em `dotfiles/home/`.
- A cobertura foi conferida contra o `README.md` do repositório e os arquivos canônicos em `dotfiles/configs/`.

## Escopo

Inclui configurações relevantes de Waybar, Hypr, Omarchy (hooks existentes), Ghostty, Alacritty, btop, fontconfig, mako, uwsm, Starship e OpenCode, além dos arquivos de home já acompanhados pelo repositório.

Em Hypr, foram incluídos os arquivos `.conf` ativos e o script necessário `scripts/restart-waybar.sh`. Em Waybar, foram incluídos somente `config.jsonc` e `style.css`.

## Exclusões

Este snapshot não inclui backups, o tema materializado em `omarchy/current/theme`, o arquivo `omarchy/current/theme.name`, temas não canônicos, imagens ou outros artefatos materializados, credenciais, chaves, cookies, tokens, caches, logs, históricos, arquivos `.env` ou dados de aplicativos.

O arquivo `mako/config` foi copiado pelo conteúdo do destino ativo, sem preservar o link simbólico para o tema materializado.

O snapshot é separado dos arquivos canônicos e não substitui a alteração já existente em `dotfiles/configs/hypr/monitors.conf`; essa alteração permanece intocada e deve ser incluída no mesmo commit quando desejado.
