//
//  ViewController.swift
//  SplitView
//
//  Created by Make school on 4/27/18.
//  Copyright © 2018 tamem. All rights reserved.
//
import Foundation
import UIKit
import WebKit
class ViewController: UIViewController {

    
    @IBOutlet var WebView1: WKWebView!
    @IBOutlet var WebView2: WKWebView!
    @IBOutlet var YTButton: UIButton!
    
    @IBOutlet var FYIStackView1: UIStackView!
    @IBOutlet var GTStackView1: UIStackView!
    @IBOutlet var FYIStackView2: UIStackView!
    @IBOutlet var GTStackView2: UIStackView!
    
    let YouTubeURL = URL (string: "https://www.youtube.com/")
    let TwitterURL = URL (string: "https://twitter.com/")
    let FacebookURL = URL(string: "http://www.facebook.com/")
    let InstagramURL = URL(string: "https://www.instagram.com/?hl=en")
    let GoogleURL = URL(string: "https://www.google.com/")
    let GmailURL = URL(string: "https://www.google.com/gmail/")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //Action buttons for WebView1
    @IBAction func YTButtonAction(_ sender: Any) {
        
        let YTRequest = URLRequest(url: YouTubeURL!)
        WebView1.load(YTRequest)
        FYIStackView1.isHidden = true
        GTStackView1.isHidden = true
    }
    @IBAction func FButtonAction(_ sender: Any) {
        let FRequest = URLRequest(url: FacebookURL!)
        WebView1.load(FRequest)
        FYIStackView1.isHidden = true
        GTStackView1.isHidden = true
    }
    
    @IBAction func IButtonAction(_ sender: Any) {
        let IRequest = URLRequest(url: InstagramURL!)
        WebView1.load(IRequest)
        FYIStackView1.isHidden = true
        GTStackView1.isHidden = true
    }
    
    @IBAction func GButtonAction(_ sender: Any) {
        let GRequest = URLRequest(url: GoogleURL!)

        WebView1.load(GRequest)
        FYIStackView1.isHidden = true
        GTStackView1.isHidden = true
    }
    @IBAction func TButtonAction(_ sender: Any) {
        let TRequest = URLRequest(url: TwitterURL!)
        WebView1.load(TRequest)
        FYIStackView1.isHidden = true
        GTStackView1.isHidden = true
    }
    
    @IBAction func MButtonAction(_ sender: Any) {
        let GMRequest = URLRequest(url: GmailURL!)
        WebView1.load(GMRequest)
        FYIStackView1.isHidden = true
        GTStackView1.isHidden = true
    }
    //Action buttons for WebView2
    @IBAction func FButtonAction2(_ sender: Any) {
        let FRequest = URLRequest(url: FacebookURL!)
        WebView2.load(FRequest)
        FYIStackView2.isHidden = true
        GTStackView2.isHidden = true
    }
    @IBAction func YTButtonAction2(_ sender: Any) {
        let YTRequest = URLRequest(url: YouTubeURL!)
        WebView2.load(YTRequest)
        FYIStackView2.isHidden = true
        GTStackView2.isHidden = true
    }
    @IBAction func IButtonAction2(_ sender: Any) {
        let IRequest = URLRequest(url: InstagramURL!)
        WebView2.load(IRequest)
        FYIStackView2.isHidden = true
        GTStackView2.isHidden = true
    }
    @IBAction func GButtonAction2(_ sender: Any) {
        let GRequest = URLRequest(url: GoogleURL!)
        WebView2.load(GRequest)
        FYIStackView2.isHidden = true
        GTStackView2.isHidden = true
    }
    
    @IBAction func TButtonAction2(_ sender: Any) {
        let TRequest = URLRequest(url: TwitterURL!)
        WebView2.load(TRequest)
        FYIStackView2.isHidden = true
        GTStackView2.isHidden = true
    }
    @IBAction func MButtonAction2(_ sender: Any) {
        let GMRequest = URLRequest(url: GmailURL!)
        WebView2.load(GMRequest)
        FYIStackView2.isHidden = true
        GTStackView2.isHidden = true
    }
    //Exit Button
    @IBAction func ExitButton1(_ sender: Any) {
        WebView1.stopLoading()
        FYIStackView1.isHidden = false
        GTStackView1.isHidden = false
    }
    
    @IBAction func ExitButton2(_ sender: Any) {
        WebView2.stopLoading()
        FYIStackView2.isHidden = false
        GTStackView2.isHidden = false
    }
    
    func webViewDidFinishLoad(webView: UIWebView) {
        
        // fill data
        let savedUsername = "USERNAME"
        let savedPassword = "PASSWORD"
        
        let fillForm = String(format: "document.getElementById('expert_email').value = '\(savedUsername)';document.getElementById('expert_password').value = '\(savedPassword)';")
        webView.stringByEvaluatingJavaScript(from: fillForm)
        
        //check checkboxes
        webView.stringByEvaluatingJavaScript(from: "document.getElementById('expert_remember_me').checked = true; document.getElementById('expert_terms_of_service').checked = true;")
        
        
    }

}

