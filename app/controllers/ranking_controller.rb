class RankingController < ApplicationController
  
  def want
    want_count = Want.group(:item_id).order('count_item_id desc').limit(10).count(:item_id)
    @want_ranking = Item.find(want_count.keys)
  end
  
  def have
    have_count = Have.group(:item_id).order('count_item_id desc').limit(10).count(:item_id)
    @have_ranking = Item.find(have_count.keys)
  end
  
end