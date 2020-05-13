Pod::Spec.new do |s|
  s.name = "WCDBSwift"
  s.version = "0.0.3"
  s.summary = "WCDB is a cross-platform database framework developed by WeChat."
  s.license = {"type"=>"BSD", "file"=>"LICENSE"}
  s.authors = {"sanhuazhang"=>"sanhuazhang@tencent.com"}
  s.homepage = "https://github.com/Tencent/wcdb"
  s.description = "The WeChat Database, for Swift. (WCDB is an efficient, complete, easy-to-use mobile database framework used in the WeChat application.\nIt can be a replacement for Core Data, SQLite & FMDB."
  s.requires_arc = true
  s.source = { :git => "git@github.com:barry-source/WCDBSwift.git", :tag => s.version.to_s}

  s.ios.deployment_target    = '8.0'
  s.source_files  = 'source/WCDBSwift.framework/Headers/*.h'
  s.vendored_frameworks = 'source/WCDBSwift.framework'
  s.frameworks = 'SystemConfiguration', 'CoreLocation', 'CoreTelephony', 'AVFoundation', 'AddressBook', 'AudioToolbox', 'Contacts', 'QuartzCore', 'UIKit', 'Foundation', 'CoreGraphics'
  s.libraries = 'z','c++'
  s.module_name = "WCDBSwift"
  s.pod_target_xcconfig = { 
    "GCC_PREPROCESSOR_DEFINITIONS" => "SQLITE_HAS_CODEC WCDB_BUILTIN_SQLCIPHER",
    'SWIFT_WHOLE_MODULE_OPTIMIZATION' => 'YES',
    'APPLICATION_EXTENSION_API_ONLY' => 'YES',
    "HEADER_SEARCH_PATHS" => "${PODS_ROOT}/WCDBSwift",
    "LIBRARY_SEARCH_PATHS[sdk=macosx*]" => "$(SDKROOT)/usr/lib/system",
    "OTHER_SWIFT_FLAGS[config=Release][sdk=iphonesimulator*]" => "-D WCDB_IOS",
    "OTHER_SWIFT_FLAGS[config=Release][sdk=iphoneos*]" => "-D WCDB_IOS",
    "OTHER_SWIFT_FLAGS[config=Debug]" => "-D DEBUG",
    "OTHER_SWIFT_FLAGS[config=Debug][sdk=iphonesimulator*]" => "-D WCDB_IOS -D DEBUG",
    "OTHER_SWIFT_FLAGS[config=Debug][sdk=iphoneos*]" => "-D WCDB_IOS -D DEBUG",
  }
  s.swift_version = '4.2'
  s.dependency 'WCDBOptimizedSQLCipher', '~> 1.2.0'
  s.dependency 'SQLiteRepairKit', '~> 1.2.0
end

