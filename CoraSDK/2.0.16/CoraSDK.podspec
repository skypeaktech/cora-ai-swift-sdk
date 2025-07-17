Pod::Spec.new do |spec|
    spec.name                     = 'CoraSDK'
    spec.version                  = '2.0.16'
    spec.homepage                 = 'https://skypeaktech.com/cora'
    spec.source                   = { 
                                      :http => 'https://us-central1-maven.pkg.dev/kubernetes-411520/spt-maven/com/skypeaktech/cora/cora-sdk-kmmbridge/2.0.16/cora-sdk-kmmbridge-2.0.16.zip',
                                      :type => 'zip',
                                      :headers => ["Accept: application/octet-stream"]
                                    }
    spec.authors                  = ''
    spec.license                  = ''
    spec.summary                  = 'CORA SDK'
    spec.vendored_frameworks      = 'CoraSDK.xcframework'
    spec.libraries                = 'c++'
    spec.ios.deployment_target = '13.0'
    spec.dependency 'FirebaseAuth', '11.14.0'
    spec.dependency 'FirebaseCore', '11.14.0'
    spec.dependency 'FirebaseFirestore', '11.14.0'
    spec.dependency 'FirebaseFunctions', '11.14.0'
    spec.dependency 'FirebaseInstallations', '11.14.0'
    spec.dependency 'FirebaseRemoteConfig', '11.14.0'
    spec.swift_version = "5.0"
end