//
//  ViewController.swift
//  AuthScreen
//
//  Created by Алексей Лосев on 18.08.2022.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    //MARK: - Outlets
    
    private let backgroundView: UIImageView = {
        let image = UIImage(named: "background")
        let imageView = UIImageView(image: image)
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private let loginLabel: UILabel = {
        let label = UILabel()
        label.text = "Login"
        label.textColor = .white
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 25)
        return label
    }()
    
    private let loginTextField: UITextField = {
        let textField = UITextField()
        
        return textField
    }()
    
    private let passwordTextField: UITextField = {
       let textField = UITextField()
        
        return textField
    }()
    
    private let loginButton: UIButton = {
       let button = UIButton()
        
        return button
    }()
    
    private let forgotYourPasswordButton: UIButton = {
        let button = UIButton()
        
        return button
    }()
    
    private let leftFromOrConnectWithLabelView: UIView = {
       let view = UIView()
        
        return view
    }()
    
    private let orConnectWithLabel: UILabel = {
       let label = UILabel()
        
        return label
    }()
    
    private let rightFromOrConnectWithLabelView: UIView = {
       let view = UIView()
        
        return view
    }()
    
    private let facebookButton: UIButton = {
        let button = UIButton()
        
        return button
    }()
    
    private let twitterButton: UIButton = {
        let button = UIButton()
        
        return button
    }()
    
    private let dontHaveAnAccountLabel: UILabel = {
       let label = UILabel()
        
        return label
    }()
    
    private let signUpButton: UIButton = {
       let button = UIButton()
        
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
}

