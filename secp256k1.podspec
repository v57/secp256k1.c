Pod::Spec.new do |spec|
    spec.name         = 'secp256k1'
    spec.version      = '0.1.1'
    spec.ios.deployment_target = "8.0"
    spec.osx.deployment_target = "10.10"
    spec.tvos.deployment_target = "9.0"
    spec.watchos.deployment_target = "2.0"
    spec.license      = { :type => 'Apache License 2.0', :file => 'License.md' }
    spec.summary      = 'secp256k1 module for web3swift'
    spec.homepage     = 'https://github.com/bankex/web3swift'
    spec.author       = 'Bankex Foundation'
    spec.source       = { :git => 'https://github.com/v57/secp256k1.c', :tag => String(spec.version) }
    spec.pod_target_xcconfig = {
    'OTHER_CFLAGS' => '-O3',
    'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/secp256k1"'
  }
    spec.source_files = 'secp256k1/**/*.{c,h}'
    spec.public_header_files = 'secp256k1/include/*.h'
end

