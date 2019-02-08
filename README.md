# Windows用CI系PHPライブラリ
WindowsでIDEからPHPのCI系ライブラリを叩くためのもの

以下の理由で作ったもの
- cygwinやmsys2からcomposerを実行すると、`*.bat` がついてこないため、IDEから外部ツールとして実行できない。  
- 複数バージョンのPHPからの実行が面倒。  

composerの実行自体をIDEやcmd.exeからやってる人には必要ないと思う。

ライブラリ間の依存面、CI環境ではどうせ別のPHPプロセスから実行することを鑑みて、各ライブラリごとにプロジェクト(composer.json)を分けている。


## 使い方
1. この中に最新のcomposerをダウンロード
2. 各ライブラリのディレクトリの中で `composer install`
3. `winBridge/*.bat` の中の `PHP_BIN` を自分の環境に合わせて書き換える。  
   もしくは、環境変数 `PHP_BIN` に php.exe のフルパスを登録する。
   基本的には最新のPHPにするのがパフォーマンス面でよい。
4. IDEに外部ツールとして `winBridge/*.bat` を登録する。  
   composer本体も登録する。


## TODO
- インストールは自動化できなくもないが、全てを入れるわけでもないだろう

