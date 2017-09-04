class ExpensesController < ApplicationController
  def index
    if params[:concept] == ''
      params[:concept] = nil
    end
    if params[:category_id] == ''
      params[:category_id] = nil
    end
    if params[:concept] && params[:category_id]
      @expenses = Expense.where("concept like ?", "%" + params[:concept] + "%")
      @expenses = @expenses.where( category_id: params[:category_id] )
    elsif params[:concept]
      @expenses = Expense.where("concept like ?", "%" + params[:concept] + "%")
    elsif params[:category_id]
      @expenses = Expense.where( category_id: params[:category_id] )
    else
      @expenses = Expense.order("date DESC")
    end
  end
end
