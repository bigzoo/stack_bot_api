class StackExchange
  def self.search(q, site='stackoverflow')
    response = JSON.parse(RestClient::Request.execute(
    method: :get,
    url: 'https://api.stackexchange.com/2.2/search?order=desc&sort=activity&site='+ site +'&intitle=' + q
    ))
    results = []
    response.fetch('items').each do |item|
      i = Item.new(tags: item.fetch('tags').join(','), owner_id: item.fetch('owner').fetch('user_id'),
        view_count: item.fetch('view_count'), answer_count: item.fetch('answer_count'), score: item.fetch('score'),
        last_activity_date: item.fetch('last_activity_date'), creation_date: item.fetch('creation_date'), id: item.fetch('question_id'),
        title: item.fetch('title'), link: item.fetch('link'))
      results.push(i)
    end
    results
  end
end
