module GifteesHelper

  def giftee_names
    names_array = []
    Giftee.order(:first_name).each do |giftee|
      names_array.push("#{giftee.first_name} #{giftee.last_name}")
    end
    names_array
  end

end
