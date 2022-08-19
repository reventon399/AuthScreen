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
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        return imageView
    }()
    
    private let loginLabel: UILabel = {
        let label = UILabel()
        label.text = "Login"
        label.textColor = .white
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 30)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private let loginTextField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .white
        textField.placeholder = "losevalexey15"
        textField.layer.cornerRadius = 20
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        return textField
    }()
    
    private let passwordTextField: UITextField = {
       let textField = UITextField()
        textField.backgroundColor = .white
        textField.placeholder = "Password"
        textField.layer.cornerRadius = 20
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        return textField
    }()
    
    private let loginAndPasswordTextFieldStack: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.alignment = .fill
        stackView.spacing = 15
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        return stackView
    }()
    
    private let loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .systemBlue
        button.setTitle("Login", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.layer.cornerRadius = 20
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    private let forgotYourPasswordButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Forgot your password?", for: .normal)
        button.tintColor = .white
        button.alpha = 0.5
        button.translatesAutoresizingMaskIntoConstraints = false
        
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
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupHierarchy()
        setupLayout()
    }
    
    // MARK: - Setup
    
    private func setupHierarchy() {
        view.addSubview(backgroundView)
        view.addSubview(loginLabel)
        view.addSubview(loginAndPasswordTextFieldStack)
        loginAndPasswordTextFieldStack.addArrangedSubview(loginTextField)
        loginAndPasswordTextFieldStack.addArrangedSubview(passwordTextField)
        view.addSubview(loginButton)
        view.addSubview(forgotYourPasswordButton)
    }
    
    private func setupLayout() {
        backgroundView.snp.makeConstraints { make in
            make.center.equalTo(view)
        }
        
        loginLabel.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.top.equalTo(view).inset(150)
        }
        
        loginAndPasswordTextFieldStack.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.top.equalTo(loginLabel.snp.bottom).offset(60)
            make.height.equalTo(100)
            make.left.equalTo(view).inset(50)
            make.right.equalTo(view).inset(50)
        }
        
        loginButton.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.top.equalTo(loginAndPasswordTextFieldStack.snp.bottom).offset(50)
            make.left.equalTo(view).inset(50)
            make.right.equalTo(view).inset(50)
            make.height.equalTo(50)
        }
        
        forgotYourPasswordButton.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.top.equalTo(loginButton.snp.bottom).offset(15)
        }
    }
}

//MARK: - Extension

extension UITextField {
    func setLeftIcon(_ image: UIImage) {
        let iconView = UIImageView(frame: CGRect(x: 10, y: 5, width: 20, height: 20))
        iconView.image = image
        let iconContainerView: UIView = UIView(frame: CGRect(x: 20, y: 0, width: 30, height: 30))
        iconContainerView.addSubview(iconView)
        leftView = iconContainerView
        leftViewMode = .always
    }
}
