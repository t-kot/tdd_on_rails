### TDD on Rails

◯準備

	rails new tdd_on_rails -T

※-TでTest::Unitのファイルをスキップ

◯Gemfileの編集

	vim Gemfile


	group :test do
		gem 'rspec-rails'
		gem 'cucumber-rails',require: false
		gem 'database_cleaner' #=>テストが終わるごとにDBをリセット
		gem 'spork' #=>テスト用サーバ
		gem 'webrat' #=>ブラウザをシミュレート
		gem 'guard' #=>ファイルの更新を検知してテスト実行
		gem 'guard-spork' 
		gem 'guard-rspec'
		gem 'guard-cucumber'
		gem 'factory_girl_rails', require: false #=> テスト用データを作成
		gem 'rb-fsevent' #=> guardを使うのに必要
		gem 'simplecov', require: false #=> カバレッジ測定
	end
	
	bundle install


◯インストール

	rails g rspec:install --spork
	rails g cucumber:install --spork
	spork --bootstrap
	spork cucumber --bootstrap
	guard init spork
	guard init cucumber
	guard init rspec
	
※guard initはGuardfileに必要な設定を追加書き込みするだけなので、同じコマンドを複数実行すると設定が重複するので注意。

