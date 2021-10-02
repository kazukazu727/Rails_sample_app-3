class TodolistsController < ApplicationController

  def new
    #Viewへ渡すためのインスタンス変数に空のモデルオブジェクトを生成する。
    @list=List.new
  end

  def create
    #1.データを新規登録するためのインスタンス作成
    list=List.new(list_params)
    #2.データをデータベースに保存するためのsaveメソッド実行
    list.save
    #3.トップ画面へリダイレクト
    redirec_to'/top'
  end

private
#ストロングパラメータ
def list_params
  prams.require(:list).permit(:title, :body)
end

end
