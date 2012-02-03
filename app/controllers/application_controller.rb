# encoding: utf-8

class ApplicationController < ActionController::Base
  protect_from_forgery

  def apel
    render :apel, :layout => "static"
  end

  protected

  helper_method :money
  def money
    got = [
      5.00,
      8.36,
      10.00,
      5.00,
      10.00,
      20.00,
      0.70,
      6.0,
      10.00,
      5.00,
      3.60,
      5.00,
      5.00,
      4.54,
      10.00,
      10.00,
      5.02,
      7.65
    ].inject {|s,e| s+e}

    want = 121.77

    [100, got / want * 100].min
  end
end
