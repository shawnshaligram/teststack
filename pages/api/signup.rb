include RestHelper

module Pages
  module API
      class Signup < BaseAPI

        def initialize
            @fixture  =  TestData.get_fixtures("discuss")
            @url      =  "/apis/signup"
            @params   =  {
                          "data": {
                                  "firstname":   @fixture["firstname"],
                                  "lastname":    @fixture["lastname"],
                                  "email":       @fixture["email"],
                                  "phoneNumber": @fixture["phoneNumber"],
                                  "password":    @fixture["password"]
                                 }
                           }
            super(:url => @url, :params=> @params)
        end

        def new_user_signup(firstname, lastname ,email ,phone)
            @params.merge! ({
                             "data":{
                                     "firstname":   username,
                                     "lastname":    lastname,
                                     "email":       email,
                                     "phoneNumber": phoneNumber
                                    }
                            })
        end

     end
  end
end
