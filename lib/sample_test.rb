# rubyと一緒にインストールされるテストフレームワーク、Railsもデフォルトで設定される
require 'minitest/autorun'

class SampleTest < Minitest::Test
  def test_sample
    assert_equal 'RUBY', nil.upcase
  end
end