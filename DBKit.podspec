Pod::Spec.new do |s|

  s.name         = "DBKit"
  s.version      = "1.0.0"
  s.summary      = "Dabay tech : DBKit is useful UI tools."
  s.homepage     = "https://github.com/Dabay-Tech/DBKit"
  s.license      = "Apache-2.0"
  s.author       = { "Tao Fei" => "taofei0610@gmail.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/Dabay-Tech/DBKit.git", :tag => s.version.to_s}
  s.source_files = "DBKit/**/*.{h,m}"
  s.frameworks   = "UIKit",'Accelerate',"Security"
  s.requires_arc = true

end
