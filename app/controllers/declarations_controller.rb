class DeclarationsController < ApplicationController
  def new
    @declaration = Declaration.new
  end

  def index
    @declarations = Declaration.all
  end

  def create
    declaration = Declaration.new(declaration_params)
    declaration.save!
    redirect_to declarations_path, notice: "宣言しました！"
  end

  private

  def declaration_params
    params.require(:declaration).permit(:nickname, :declaration, :comment)
  end
end
