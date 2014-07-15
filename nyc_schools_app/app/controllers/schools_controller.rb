require 'will_paginate/array'

class SchoolsController < ApplicationController

  def index
    @schools = School.all
    @q = School.search(params[:q])
    @schools = @q.result(distinct: true)
  end

  def show
    @school = School.find(params[:id])
  end

end
