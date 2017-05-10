Pod::Spec.new do |s|

  s.name         = "DBKits"
  s.version      = "1.1.3"
  s.summary      = "Dabay tech : DBKits is useful UI tools."
  s.homepage     = "https://github.com/Dabay-Tech/DBKits"
  s.license      = "Apache-2.0"
  s.author       = { "Tao Fei" => "taofei0610@gmail.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/Dabay-Tech/DBKits.git", :tag => s.version.to_s}
  s.source_files = "DBKits/**/*.{h,m}"
  s.frameworks   = "UIKit",'Accelerate',"Security"
  s.requires_arc = true
  s.dependency  "MBProgressHUD-DBExtension", "~> 1.0.0"

end
