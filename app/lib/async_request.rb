# frozen_string_literal: true

class AsyncRequest
  def self.request(data)
    threads = []
    data.each do |dat|
      threads << Thread.new { yield(dat) }
    end
    threads.each(&:join)
  end
end
