Pod::Spec.new do |s|
  s.name         = "UIForceButton"
  s.version      = "1.0.1"
  s.summary      = "The UIButton that will trigger UIControlEventTouchForce event when force touched."

  s.description  = <<-DESC
                    The UIButton that will trigger UIControlEventTouchForce event when force touched. Just replace the UIButton class name and use its IBAction.
                   DESC

  s.homepage     = "https://github.com/kidyoungx/UIForceButton"

  s.license      = "MPL-2.0"

  s.author             = { "Kid Young" => "kidyoungx@gmail.com" }

  s.platform     = :ios, "5.0"

  s.source       = { :git => "https://github.com/kidyoungx/UIForceButton.git", :tag => "#{s.version}" }

  s.source_files  = "UIForceButton", "UIForceButton/**/*.{h,m}"
  s.exclude_files = "SampleUIForceButton"

  s.public_header_files = "UIForceButton/**/*.h"

  s.requires_arc = true

end
