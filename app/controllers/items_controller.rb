class ItemsController < ApplicationController

  def index
    if current_customer
      @items = Item.for_customer(current_customer)
      page_number = params[:page_number].to_i + 1
      limit_per_page = 25
      params[:max_num] = current_customer.items.length / limit_per_page
      @items = current_customer.items.limit(limit_per_page).offset(limit_per_page  * (page_number - 1))
      respond_to do |format|
      format.html { render template: 'items/index' }
    end
    else
      redirect_to '/login'
    end
  end

  def items_paginated_ajax
    if current_customer
      @items = Item.for_customer(current_customer)
      page_number = params[:page_number].to_i
      limit_per_page = 25
      @items = Item.limit(limit_per_page).offset(limit_per_page  * (page_number - 1))
      respond_to do |format|
        format.json { render json: @items }
      end
    else
      redirect_to '/login'
    end
  end

end
