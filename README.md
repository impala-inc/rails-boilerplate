# rails-boilerplate

これは[SeanSith/rails-with-vscode-remote-containers: A very basic Ruby on Rails setup using VSCode's Remote Containers](https://github.com/SeanSith/rails-with-vscode-remote-containers)を参考にVSCodeのリモートコンテナでRuby on Railsの開発環境を簡単に構築するためのBoilerplateです。

## 必要なもの

- [Docker Desktop](https://www.docker.com/products/docker-desktop/)
- [Visual Studio Code](https://code.visualstudio.com/download)
- [Remote Development plugin](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.vscode-remote-extensionpack)

## 使い方

- ダウンロードしたフォルダをVSCodeで開く
- 左下の「><」のアイコンをクリックして「Reopen in Container」を開く
- 初回はRailsがインストールされる
- しばらく待ってブラウザで `http://localhost:3000` を開く

## インストールし直す

インストールによって追加や修正されたファイルは

```sh
git restore .
git clean -fd
```

で削除できます。
