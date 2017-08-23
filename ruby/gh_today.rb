#!/usr/bin/env ruby
require 'octokit'
require 'json'
require 'date'

# Monkey patch Time class, give it a `today?` method
class Time
    def today?()
        [self.day, self.month, self.year] ==
        [Time.now.day, Time.now.month, Time.now.year]
    end
end

client = Octokit::Client.new :netrc => true

# What did I do today?
# https://developer.github.com/v3/activity/events/#list-events-performed-by-a-user

# Get events for the current user
events = client.user_events(client.user.login)

# Select just today's events
todays_events = events.select { |ev| ev[:created_at].today? }

# Get ALL of today's events, even those on another "page"
n_requests = 0
while todays_events.length == (events.length + (n_requests * 30)) && \
        client.last_response.rels[:next] && \
        client.rate_limit.remaining > 0
    # Get more events
    events = client.last_response.rels[:next].get
    todays_events.concat(events.select { |ev| ev[:created_at].today? })
    # Increment no. of subsequent "page" requests we've made
    n_requests += 1
end

# Report on events
puts "I did #{todays_events.length} things on GitHub today."
