#coding: utf-8
#language: ja

機能: ユーザ登録
  ユーザが新規登録をする

  シナリオ: 登録されていないメールアドレスとパスワードで新規登録
    もし メールアドレスはuser@unique.com,パスワードはtesttest,ユーザ名はuser1でユーザ登録をする
    ならば 正常にユーザ登録ができること
  シナリオ: 登録されているメールアドレスとパスワードで登録しようとする
    前提 以下のユーザが存在している:
      |email | display_name|
      |email1@example.com | user1|
    もし メールアドレスはemail1@example.com,パスワードはtesttest,ユーザ名はuser2でユーザ登録をする
    ならば ユーザ登録に失敗すること
