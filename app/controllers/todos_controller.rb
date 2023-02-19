# frozen_string_literal: true

# TodosController は、Todoモデルに対するリクエストを処理するコントローラです。
# Todoを作成、編集、削除することができます。
class TodosController < ApplicationController
  def index
    @todos = Todo.all
  end

  def add_todo
    todo = Todo.new(todo_params)
    if todo.save
      redirect_to '/todos'
    else
      render plain: 'Error'
    end
  end

  def toggle_completed
    todo = Todo.find(params[:id])
    todo.update(completed: !todo.completed)
    todo.save
    redirect_to '/todos'
  end

  private

  def todo_params
    params.permit(:title)
  end
end
