
Pod::Spec.new do |s|
  s.name         = "UltimateTools"
  s.version      = "0.0.1"
  s.summary      = "iOS常用控件汇总"
  s.homepage     = "https://github.com/wuxinsheng/UltimateTools"
  s.license      = { :type => "MIT"}
  s.author       = { "wuxinsheng" => "694534635@qq.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/wuxinsheng/UltimateTools.git", :commit => "96bd0ba10868840389ee3bf887bbc09e180bf543" }
  s.source_files  = "UltimateTools/**/*.{h,m}" 
  s.requires_arc = true
end
