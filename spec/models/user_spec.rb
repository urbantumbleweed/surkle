require 'spec_helper'

describe User do
  it { should_validate_the_presence_of(:email)}
  it { should_validate_the_presence_of(:first_name)}
  it { should_validate_the_presence_of(:last_name)}
  it { should_validate_the_presence_of(:last_name)}
end
