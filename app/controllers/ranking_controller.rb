class RankingController < ApplicationController
  
  def want
    want_count = Want.group(:item_id).order('count_item_id desc').limit(10).count(:item_id)
    @item = Item.find(want_count.keys)
    @want_ranking = @item.sort_by
  end
  
  def have
    have_count = Have.group(:item_id).order('count_item_id desc').limit(10).count(:item_id)
    @item = Item.find(have_count.keys)
    @have_ranking = @item.sort_by
  end
  
end