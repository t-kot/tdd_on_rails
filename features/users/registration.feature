#coding: utf-8
#language: ja

機能: ユーザ登録
  ユーザが新規登録をする

  シナリオ: 登録されていないメールアドレスとパスワードで新規登録
    #もし "ユーザ登録ページ"へアクセス
    #かつ "user_email"に"user1@unique.com"と入力する
    #かつ "user_password"に"testtest"と入力する
    #かつ "user_display_name"に"unique_user1"と入力する
    #かつ "user_password_confirmation"に"testtest"と入力する
    #かつ "ユーザ登録"ボタンをクリックする
    もし メールアドレスはuser@unique.com,パスワードはtesttest,ユーザ名はuser1でユーザ登録をする
    #ならば "送られました"と表示されていること
    ならば 正常にユーザ登録ができること
  シナリオ: 登録されているメールアドレスとパスワードで登録しようとする
    前提 以下のユーザが存在している:
      |email | display_name|
      |email1@example.com | user1|
    もし メールアドレスはemail1@example.com,パスワードはtesttest,ユーザ名はuser2でユーザ登録をする
    #もし "ユーザ登録ページ"へアクセス
    #かつ "user_email"に"email1@example.com"と入力する
    #かつ "user_password"に"testtest"と入力する
    #かつ "user_display_name"に"user1"と入力する
    #かつ "user_password_confirmation"に"testtest"と入力する
    #かつ "ユーザ登録"ボタンをクリックする
    ならば ユーザ登録に失敗すること
    #ならば "保存されませんでした"と表示されていること

