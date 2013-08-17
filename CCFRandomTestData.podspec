Pod::Spec.new do |spec|
    spec.name = 'CCFRandomTestData'
    spec.version = '0.0.1'
    spec.summary = 'Generate random data for testing of iOS application, user names and more.'
    spec.author = { 'Alan Duncan' => 'alan@cocoa-factory.com' }
    spec.homepage = 'https://github.com/cocoa-factory/CCFRandomTestData'
    spec.license = 'MIT'
    spec.frameworks = 'Foundation'
    spec.requires_arc = true
    spec.source = { :git => 'https://github.com/cocoa-factory/CCFRandomTestData.git', :tag => '0.0.1' }
    spec.source_files = 'core/*.{h,m}'
    spec.resources = 'core/*.txt'
end