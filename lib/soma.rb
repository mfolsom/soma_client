require 'httparty'

class Soma < Struct.new(:base_url)

  def method_missing(id, *args, &block)
    return get_results(id.to_s.split('_').last) if id.to_s.start_with? 'get_'
    return post_results(id.to_s.split('_').last, args) if id.to_s.start_with? 'post_'
    super
  end
  
  private
  def get_results(endpoint)
    HTTParty.get("#{base_url}/blood-tests/results/#{endpoint}")
  end

  def post_results(endpoint, data)
    # This is for you to figure out :D
  end
end