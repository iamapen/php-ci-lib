# Windows用CI系PHPライブラリ
WindowsでIDEからPHPのCI系ライブラリを叩くためのもの

cygwinやmsys2からcomposerを実行すると、`*.bat` がついてこないため、IDEから外部ツールとして実行できない。  
そのために起動用のbatを手動で作ったもの。

composerの実行自体をIDEやcmd.exeからやってる人には必要ないと思う。

ライブラリ間の依存面、CI環境ではどうせ別のPHPプロセスから実行することを鑑みて、各ライブラリごとにプロジェクト(composer.json)を分けている。


## 使い方
1. この中に最新のcomposerをダウンロード
2. 各ライブラリのディレクトリの中で `composer install`
3. `winBridge/*.bat` の中の `PHP_BIN` を自分の環境に合わせて書き換える。  
   基本的には最新のPHPにするのがパフォーマンス面でよい。
4. IDEに外部ツールとして `winBridge/*.bat` を登録する。  
   composer本体も登録する。


## TODO
- インストールは自動化できなくもない

