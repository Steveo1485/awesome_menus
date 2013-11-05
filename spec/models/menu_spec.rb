require 'spec_helper'

describe Menu do
  it { should validate_presence_of(:name) }
end