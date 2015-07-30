require "rails_helper"

describe UserDecorator do

  context "extend UserDecorator" do
    let!(:user) { User.create(name: "hiromitsu ito", qiita_id: "umeyuki@github").extend(UserDecorator)}
    skip "ActionView::Helpersのメソッドが使えないため失敗する" do
      subject {  user.extend(UserDecorator).link_to_qiita_profile }
      it { is_expected.to include "http://qiita.com/umeyuki@github" }
    end
  end

  # 成功
  context "active_decorator-rspec" do
    let!(:user) { User.create(name: "hiromitsu ito", qiita_id: "umeyuki@github")}
    subject { decorate( user ).link_to_qiita_profile }
    it { is_expected.to include "http://qiita.com/umeyuki@github" }
  end
end
