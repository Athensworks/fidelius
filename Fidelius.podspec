#
# Be sure to run `pod lib lint Fidelius.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Fidelius'
  s.version          = '0.1.0'
  s.summary          = 'A short description of Fidelius.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/benlachman/Fidelius'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'benlachman' => 'blachman@mac.com' }
  s.source           = { :git => 'https://github.com/benlachman/Fidelius.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'Fidelius/Classes/**/*'
  s.preserve_paths = ['decrypt.rb', 'fidelius-installation.txt']

  # s.resource_bundles = {
  #   'Fidelius' => ['Fidelius/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'

  s.prepare_command = <<-CMD
    echo "PREPARATION DIRECTORY" > fidelius-installation.txt
    pwd >> fidelius-installation.txt
    echo "\\nDIRECTORIES & FILES" >> fidelius-installation.txt
    ls -a >> fidelius-installation.txt
    echo "\\nENVIRONMENT" >> fidelius-installation.txt
    env >> fidelius-installation.txt

    # TODO: Create build phase

    # TODO: Copy template file

    # TODO: Generate keypair
    #  - ejson
    #  - Keychain Access
  CMD
end
