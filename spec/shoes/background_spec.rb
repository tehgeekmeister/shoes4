shared_examples_for "basic background" do
  it "retains app" do
    subject.app.should eq(app)
  end

  it "creates gui object" do
    subject.gui.should_not be_nil
  end
end

describe Shoes::Background do
  let(:parent) { Shoes::Flow.new(app, app: app) }
  let(:blue)  { Shoes::COLORS[:blue] }
  let(:app) { Shoes::App.new }
  let(:opts){ {app: app, color: blue} }
  subject { Shoes::Background.new(parent, blue, opts) }

  it_behaves_like "basic background"
end
