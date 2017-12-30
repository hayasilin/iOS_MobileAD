Pod::Spec.new do |s|

  s.name         = "MobileAD"
  s.version      = "1.1"
  s.summary      = "A quick tool to create in-app MobileAD."

  s.description  = <<-DESC
                    This is a quick tool to create in-app MobileAD.
                   DESC

  s.homepage     = "https://github.com/hayasilin/iOS_MobileAD.git"

  s.license      = 'MIT'

  s.author       = { "hayasilin" => "harvey.hayasi@gmail.com" }
  
  s.platform     = :ios, "8.0"

  s.source       = { :git => "git@github.com:hayasilin/iOS_MobileAD.git", :tag => s.version.to_s }

  s.source_files  = "MobileAD", "MobileAD/**/**/*"

  s.requires_arc  = true

end
