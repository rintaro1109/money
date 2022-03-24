class TopController < ApplicationController
  def index
    # TODO: 今月の支出に変える。
    this_month_spendings = Spending.all
    @total_spending = this_month_spendings.map { |spending| spending.price }.inject(:+)
  end
end