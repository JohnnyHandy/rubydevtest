class ApplicationController < ActionController::Base
    include DeviseWhiteList
    include SetSource
    include CurrentUserConcern
    include DefaultPageContent
end
