Pod::Spec.new do |s|
  s.name = "WCDBSwift"
  s.version = "1.0.8.2"
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
end

