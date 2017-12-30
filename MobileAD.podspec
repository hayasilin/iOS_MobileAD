Pod::Spec.new do |s|

  s.name         = "MobileAD"
  s.version      = "0.2.0"
  s.summary      = "A quick tool to create in-app MobileAD."

  s.description  = <<-DESC
                    This is a quick tool to create in-app MobileAD.
                   DESC

  s.homepage     = "https://github.com/hayasilin/ios_frameworkdemo.git"

  s.license      = 'MIT'

  s.author       = { "hayasilin" => "harvey.hayasi@gmail.com" }
  
  s.platform     = :ios, "8.0"

  s.source       = { :git => "git@github.com:hayasilin/ios_frameworkdemo.git", :tag => s.version.to_s }

  s.source_files  = "MobileAD", "MobileAD/**/**/*"

  s.requires_arc  = true

end
