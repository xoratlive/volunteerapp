if Rails.env == 'production'
  ENV['ELASTICSEARCH_URL'] = ENV['BONSAI_URL']
end

if ENV[‘BONSAI_URL’]
     Searchkick.client = Elasticsearch::Client.new({url: ENV[‘BONSAI_URL’], logs: true})
end