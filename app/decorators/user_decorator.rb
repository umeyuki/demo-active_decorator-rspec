module UserDecorator
  def link_to_qiita_profile
    link_to "qiita_profile","http://qiita.com/#{qiita_id}"
  end
end
