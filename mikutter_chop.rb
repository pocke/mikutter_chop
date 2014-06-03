#-*- coding: utf-8 -*-

# Copyright 2014, pocke
# Licensed MIT
# http://opensource.org/licenses/mit-license.php

Plugin.create(:chop) do
  command(
    :chop,
    name: 'chop',
    condition: lambda {|opt| true},
    visible: true,
    role: :postbox
  ) do |opt|
    text = Plugin.create(:gtk).widgetof(opt.widget).widget_post.buffer.text
    Plugin.create(:gtk).widgetof(opt.widget).widget_post.buffer.text = text.chop
  end
end
