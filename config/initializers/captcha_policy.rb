# frozen_string_literal: true

require 'barong/captcha_policy'

Barong::CaptchaPolicy.define do |config|
  config.set(:disabled, false)
  config.set(:geetest_captcha, false)
  config.set(:re_captcha, true)
end
