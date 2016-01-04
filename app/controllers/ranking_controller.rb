class RankingController < ApplicationController
  
  def want
    want_count = Want.group(:item_id).order('count_item_id desc').limit(10).count(:item_id)
    @want_ranking = Item.find(:all,:order => "params[want_count[1]] DESC")
  end
  
  def have
    @have_ranking = Have.group(:item_id).order('count_item_id desc').limit(10).count(:item_id)
  end
  
end
