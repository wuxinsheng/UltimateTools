
Pod::Spec.new do |s|
  s.name         = "UltimateTools"
  s.version      = "1.0.0"
  s.summary      = "iOS常用控件汇总"
  s.homepage     = "https://github.com/wuxinsheng/UltimateTools"
  s.license      = { :type => "MIT"}
  s.author       = { "wuxinsheng" => "694534635@qq.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/wuxinsheng/UltimateTools.git", :tag=s.version }
  s.source_files  = "UltimateTools/**/*.{h,m}" 
  s.requires_arc = true
end
