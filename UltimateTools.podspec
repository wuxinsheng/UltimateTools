
Pod::Spec.new do |s|
  s.name         = "UltimateTools"
  s.version      = "1.0.0"
  s.summary      = "iOS控件汇总"

  s.description  = <<-DESC
       iOS常用控件汇总
                   DESC

  s.homepage     = "https://github.com/wuxinsheng/UltimateTools"
  s.license      = "MIT"
  s.author       = { "xinsheng wu" => "wuxinsheng2@domain.com" }
  s.platform     = :ios,'8.0'

  s.source       = { :git => "https://github.com/wuxinsheng/UltimateTools.git", :tag => "#{s.version}" }
  s.source_files = "UltimateTools/**/*.{h,m}"
  #s.framework    = "UIKit"
  s.requires_arc = true

end
