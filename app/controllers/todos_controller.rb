class TodosController < ApplicationController

    def index
        todos = Todo.all
        render json: todos
    end

    def create
        # byebug  
        todo = Todo.create(todo_params)
        render json: todo
    end

    def update
        todo = Todo.find(params[:id])
        todo.update(todo_params)
        # byebug
        render json: todo
      end

    def show
        todo = Todo.find(params[:id])
        render json: todo
    end

    def destroy
        # byebug
        todo = Todo.find(params[:id])
        todo.destroy
        render json: todo
    end

    private

    def todo_params
        params.require(:todo).permit(:title, :content, :completed, :starred, :user_id)
    end

end
