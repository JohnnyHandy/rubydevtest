class ApplicationController < ActionController::Base
    include DeviseWhiteList
    include SetSource
end
