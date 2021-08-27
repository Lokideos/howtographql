require 'test_helper'

class Mutations::CreateLinkTest < ActiveSupport::TestCase
  def perform(user: nil, **args)
    context = { current_user: user }
    Mutations::CreateLink.new(object: nil, field: nil, context: context).resolve(args)
  end

  test 'create a new link' do
    user = User.create!(
      name: 'test',
      email: 'test@example.com',
      password: '123456789'
    )
    link = perform(
      user: user,
      url: 'http://example.com',
      description: 'description',
      )

    assert link.persisted?
    assert_equal link.description, 'description'
    assert_equal link.url, 'http://example.com'
  end
end
