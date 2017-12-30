//
//  MADInterstitial.swift
//  MobileAD
//
//  Created by Kuan-Wei Lin on 12/30/17.
//  Copyright © 2017 cracktheterm. All rights reserved.
//

import Foundation
import UIKit

public class MADInterstitial: UIViewController
{
    var interstitialView: UIWebView!
    
    public override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
    {
        super.init(nibName: nil, bundle: nil)
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func showInterstitialAD()
    {
        let topVC = UIApplication.topViewController()!
        interstitialView = UIWebView(frame: topVC.view.bounds)
        interstitialView.delegate = self
        interstitialView.scrollView.isScrollEnabled = false
        
        let url = URL(string: "https://www.google.com")
        let urlRequest = URLRequest(url: url!)
        
        interstitialView.loadRequest(urlRequest)
        
        self.view.addSubview(interstitialView)
        
        topVC.present(self, animated: true, completion: nil)
        
        let closeImage = UIImage(named: "close")
        let rect = UIScreen.main.bounds
        let nx = rect.size.width - (closeImage?.size.width)! - 20
        
        let closeButton = UIButton(frame: CGRect(x: nx, y: 20, width: (closeImage?.size.width)!, height: (closeImage?.size.height)!))
        
        closeButton.setImage(closeImage, for: .normal)
        closeButton.addTarget(self, action: #selector(closeInterstitialView), for: .touchUpInside)
        
        interstitialView.addSubview(closeButton)
    }
    
    @objc private func closeInterstitialView()
    {
        self.dismiss(animated: true, completion: nil)
    }
}

extension MADInterstitial: UIWebViewDelegate
{
    public func webView(_ webView: UIWebView, shouldStartLoadWith request: URLRequest, navigationType: UIWebViewNavigationType) -> Bool
    {
        print("shouldStartLoadWith")
        
        return true
    }
    
    public func webViewDidStartLoad(_ webView: UIWebView)
    {
        print("webViewDidStartLoad")
    }
    
    public func webViewDidFinishLoad(_ webView: UIWebView)
    {
        print("webViewDidFinishLoad")
    }
    
    public func webView(_ webView: UIWebView, didFailLoadWithError error: Error)
    {
        print("didFailLoadWithError")
    }
    
}

extension UIApplication
{
    class func topViewController(controller: UIViewController? = UIApplication.shared.keyWindow?.rootViewController) -> UIViewController? {
        if let navigationController = controller as? UINavigationController {
            return topViewController(controller: navigationController.visibleViewController)
        }
        if let tabController = controller as? UITabBarController {
            if let selected = tabController.selectedViewController {
                return topViewController(controller: selected)
            }
        }
        if let presented = controller?.presentedViewController {
            return topViewController(controller: presented)
        }
        return controller
    }
}
