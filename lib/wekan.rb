require "uri"
require "json"
require "net/http"
require "wekan/color"
require "wekan/version"

module Wekan

  ENDPOINT = ENV["WEKAN_URL"]
  
  class Client

    def initialize(username, password, debug = false)

      @id = nil      
      @token = nil
      @token_expires = nil
      @debug = false
      
      res = login(username, password)
      
      unless res.key?("error")
        @id = res["id"]
        @token = res["token"]
        @token_expires = res["tokenExpires"]
      else
        puts res
      end
      
    end

    # TODO
    private def is_logged

      true
      
    end

    private def login(username, password)
      
      res = Net::HTTP.post_form(
        URI.parse(ENDPOINT + "/users/login"),
        {
          "username" => username,
          "password" => password
        }
      )
      
      res_json = JSON.parse(res.body)
      
      if res_json.key?("error") and @debug
        info "Can't login"
      end

      res_json
      
    end
    
  end
  
end
