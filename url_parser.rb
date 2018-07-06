class UrlParser
    def initialize(url)
        @url = url
    end
    
    def scheme
        scheme_arr = @url.split(":")
        return scheme_arr[0]
    end
    
    def domain
        domain_arr = @url.split('/')[2].split(':')[0]

        end
    
    def port
        port_arr = @url.split("/")[2].split(":")[1]
        return port_arr
            if port_arr = nil
                return "nil"
            end
    end
      
    def path
        path_arr = @url.split('/')[3].split("?")[0]     
    end
    
    def query
        query_arr = @url.split("#")[0].split("?")[0]
        return query_arr
    end
end