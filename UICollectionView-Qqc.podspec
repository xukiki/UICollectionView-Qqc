Pod::Spec.new do |s|

  s.license      = "MIT"
  s.author       = { "qqc" => "20599378@qq.com" }
  s.platform     = :ios, "8.0"
  s.requires_arc  = true

  s.name         = "UICollectionView-Qqc"
  s.version      = "1.0.10"
  s.summary      = "UICollectionView-Qqc"
  s.homepage     = "https://github.com/xukiki/UICollectionView-Qqc"
  s.source       = { :git => "https://github.com/xukiki/UICollectionView-Qqc.git", :tag => "#{s.version}" }
  
  s.source_files  = ["UICollectionView-Qqc/*.{h,m}"]

end
