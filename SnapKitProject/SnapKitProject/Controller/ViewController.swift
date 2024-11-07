//
//  ViewController.swift
//  SnapKitProject
//
//  Created by Sofa on 5.11.24.
//
import SnapKit
import UIKit

class ViewController: UIViewController {
    
    // MARK: - Properties
    
    var image = UIImage(named: "pets")
    var titleText = "Beautiful animals 🥰"
    var textT = "A pet, or companion animal, is an animal kept primarily for a person's company or entertainment rather than as a working animal, livestock, or a laboratory animal. Popular pets are often considered to have attractive/cute appearances, intelligence, and relatable personalities, but some pets may be taken in on an altruistic basis (such as a stray animal) and accepted by the owner regardless of these characteristics. Two of the most popular pets are dogs and cats."
    
    // MARK: - Subviews
    
    private let picture = UIImageView()
    private let titleString = UILabel()
    private let textString = UILabel()
    private let heartLabel = UILabel()
    private let button = UIButton(type: .system)
    
    // MARK: - Initializers
    
    
    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    // MARK: - Methods
    
    private func setup() {
        buildHierarchy()
        configureSubviews()
        layoutSubviews()
        setupActions()
    }
    
    private func buildHierarchy() {
        view.addSubview(picture)
        view.addSubview(titleString)
        view.addSubview(textString)
        view.addSubview(heartLabel)
        view.addSubview(button)
    }
    
    private func configureSubviews() {
        view.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        
        picture.image = image
        
        titleString.text = titleText
        titleString.textColor = .black
        titleString.font = UIFont.systemFont(ofSize: 30)

        textString.text = textT
        textString.textColor = .black
        textString.numberOfLines = 0
        textString.font = UIFont.systemFont(ofSize: 20)
        
        heartLabel.text = "❤️"
        heartLabel.font = UIFont.systemFont(ofSize: 50)
        heartLabel.isHidden = true

        button.setTitle("I like it", for: .normal)
        button.backgroundColor = .green
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        button.layer.cornerRadius = 17
    }
    
    private func layoutSubviews() {
        picture.snp.makeConstraints { maker in
            maker.top.equalToSuperview().inset(50)
            maker.left.right.equalToSuperview().inset(25)
            maker.height.equalTo(200)
        }
        
        titleString.snp.makeConstraints { maker in
            maker.top.equalTo(picture.snp.bottom).offset(40)
            maker.centerX.equalToSuperview()
        }

        textString.snp.makeConstraints { maker in
            maker.top.equalTo(titleString.snp.bottom).offset(30)
            maker.left.right.equalToSuperview().inset(25)
        }
        
        heartLabel.snp.makeConstraints { maker in
            maker.top.equalTo(textString.snp.bottom).offset(1)
            maker.right.equalToSuperview().inset(20)
        }

        button.snp.makeConstraints { maker in
            maker.bottom.equalToSuperview().inset(50)
            maker.left.right.equalToSuperview().inset(50)
            maker.height.equalTo(50)
        }
    }
    
    private func setupActions() {
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
    }
    
    @objc private func buttonTapped() {
        if heartLabel.isHidden == true {
            heartLabel.isHidden = false
            button.setTitle("I don't like it", for: .normal)
            button.backgroundColor = .red
        } else {
            heartLabel.isHidden = true
            button.setTitle("I like it", for: .normal)
            button.backgroundColor = .green
        }
    }


    //функция, которая настраивает интерфейс
    
//    private func initialize() {
//        view.backgroundColor = UIColor(red: 241/255, green: 238/255, blue: 228/255, alpha: 1)
//        let label = UILabel()
//        label.text = "Welcom!🥸"
//        label.font = UIFont.systemFont(ofSize: 20)
//        view.addSubview(label)
//        label.snp.makeConstraints { maker in
//            maker.left.equalToSuperview().inset(50)
//            maker.top.equalToSuperview().inset(150)
//        }
//
//        let extraLabel = UILabel()
//        extraLabel.text = "ExtraExtraExtraExtraExtraExtraExtraExtraExtraExtraExtraExtraExtraExtraExtraExtraExtraExtraExtraExtraExtraExtraExtraExtraExtraExtraExtraExtraExtraExtra"
//        extraLabel.numberOfLines = 0
//        view.addSubview(extraLabel)
//        extraLabel.snp.makeConstraints { maker in
//            maker.left.right.equalToSuperview().inset(50)
//            maker.top.equalTo(label).inset(50)
//        }
//
//        let button = UIButton(type: .system)
//        button.backgroundColor = UIColor(red: 84/255, green: 118/255, blue: 171/255, alpha: 1)
//        button.setTitleColor(.white, for: .normal)
//        button.layer.cornerRadius = 20
//        button.setTitle("Get your username ->", for: .normal)
//        view.addSubview(button)
//        button.snp.makeConstraints { maker in
//            maker.centerX.equalToSuperview()
//            maker.width.equalTo(250)
//            maker.bottom.equalToSuperview().inset(50)
//            maker.height.equalTo(40)
//        }
//        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
//    }
//
//    @objc private func buttonTapped() {
//        print("We want to get a username")
//    }
}

