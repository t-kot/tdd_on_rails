#coding: utf-8
#language: ja

機能: サインイン
  ユーザがサインインをする

  シナリオ: 登録されているメールアドレスとパスワードでログイン
    前提 以下のユーザが存在している:
      |email | display_name|
      |email1@example.com | user1|
    もし メールアドレスがemail1@example.comのユーザでログインする
    ならば 正常にログインできること

  シナリオ: 登録されていないメールアドレスでログイン
    もし メールアドレスがemail1@example.comのユーザでログインする
    ならば ログインに失敗すること
