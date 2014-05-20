require 'spec_helper'

describe ApplicationHelper do

  describe "full_title method" do
    it "should include the pager title" do
      expect(full_title("foo")).to match(/foo/)
    end

    it "should include the base title" do
      expect(full_title("foo")).to match(/^Ruby on Rails Tutorial Sample App/)
    end

    it "should not have title on home page" do
      expect(full_title("")).not_to match(/\|/)
    end
  end
end