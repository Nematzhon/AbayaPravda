//
//  ViewController.swift
//  FifaPlayers
//
//  Created by Rizayev Nematzhon on 3/27/21.
//

import UIKit
import SQLite3

class SearchViewController: UIViewController {
    
    private let overall = FPButton(text: "OVERALL")
    private let potential = FPButton(text: "POTENTIAL")
    private let age = FPButton(text: "AGE")
    private let percentage1 = FPTextField(text: "80")
    private let percentage2 = FPTextField(text: "99")
    private let percentage3 = FPTextField(text: "55")
    private let percentage4 = FPTextField(text: "99")
    private let percentage5 = FPTextField(text: "55")
    private let percentage6 = FPTextField(text: "99")
    private let position = FPButton(text: "POSITION")
    private let nationality = FPButton(text: "NATIONALITY")
    private let league = FPButton(text: "LEAGUE")
    private let club = FPButton(text: "CLUB")
    private let contract = FPButton(text: "CONTRACT")
    private let skills = FPButton(text: "SKILLS")
    private let search = FPButton(text: "SEARCH")
    
    
    
    private let mainStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.alignment = .center
        stackView.axis = .vertical
        stackView.distribution = .fill
        stackView.spacing = 8
        return stackView
    }()
    
    private let stackView1: UIStackView = {
        let stackView = UIStackView()
        stackView.alignment = .center
        stackView.axis = .horizontal
        stackView.distribution = .fill
        stackView.spacing = 8
        return stackView
    }()
    
    private let stackView2: UIStackView = {
        let stackView = UIStackView()
        stackView.alignment = .center
        stackView.axis = .horizontal
        stackView.distribution = .fill
        stackView.spacing = 8
        return stackView
    }()
    
    private let stackView3: UIStackView = {
        let stackView = UIStackView()
        stackView.alignment = .center
        stackView.axis = .horizontal
        stackView.distribution = .fill
        stackView.spacing = 8
        return stackView
    }()
    private let stackView4: UIStackView = {
        let stackView = UIStackView()
        stackView.alignment = .center
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.spacing = 8
        return stackView
    }()
    private let stackView5: UIStackView = {
        let stackView = UIStackView()
        stackView.alignment = .center
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.spacing = 8
        return stackView
    }()
    private let stackView6: UIStackView = {
        let stackView = UIStackView()
        stackView.alignment = .center
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.spacing = 8
        return stackView
    }()
    
    var db: OpaquePointer? = nil
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Search Menu"
        view.backgroundColor = .black
        setupUI()
        searchButton()
        nationalityButton()
    }
    
    private func setupUI() {
        
        [overall, percentage1, percentage2].forEach { stackView1.addArrangedSubview($0) }
        [potential, percentage3, percentage4].forEach { stackView2.addArrangedSubview($0) }
        [age, percentage5, percentage6].forEach { stackView3.addArrangedSubview($0) }
        [position, nationality].forEach { stackView4.addArrangedSubview($0) }
        [league, club].forEach { stackView5.addArrangedSubview($0) }
        [contract, skills].forEach { stackView6.addArrangedSubview($0) }
        [stackView1, stackView2, stackView3,stackView4,stackView5,stackView6].forEach { mainStackView.addArrangedSubview($0) }
        view.addSubview(mainStackView)
        view.addSubview(search)
        
        setupConstraints()
    }
    
    private func setupConstraints() {
        mainStackView.snp.makeConstraints {
            $0.top.leading.trailing.equalTo(view.safeAreaLayoutGuide).inset(40)
        }
        
        stackView1.snp.makeConstraints {
            $0.height.equalTo(55)
            $0.leading.trailing.equalToSuperview()
        }
        
        stackView2.snp.makeConstraints {
            $0.height.equalTo(55)
            $0.leading.trailing.equalToSuperview()
        }
        
        stackView3.snp.makeConstraints {
            $0.height.equalTo(55)
            $0.leading.trailing.equalToSuperview()
        }
        
        stackView4.snp.makeConstraints{
            $0.leading.trailing.equalToSuperview()
        }
        
        stackView5.snp.makeConstraints{
            $0.leading.trailing.equalToSuperview()
        }
        
        stackView6.snp.makeConstraints{
            $0.leading.trailing.equalToSuperview()
        }
        
        position.snp.makeConstraints {
            $0.height.equalTo(70)
        }
        
        nationality.snp.makeConstraints {
            $0.height.equalTo(position.snp.height)
        }
        
        league.snp.makeConstraints {
            $0.height.equalTo(70)
        }
        
        club.snp.makeConstraints {
            $0.height.equalTo(position.snp.height)
        }
        
        contract.snp.makeConstraints {
            $0.height.equalTo(70)
        }
        
        skills.snp.makeConstraints {
            $0.height.equalTo(position.snp.height)
        }
        
        overall.snp.makeConstraints {
            $0.height.equalTo(percentage1)
        }
        
        potential.snp.makeConstraints {
            $0.height.equalTo(percentage1)
        }
        
        age.snp.makeConstraints {
            $0.height.equalTo(percentage1)
        }
        
        search.snp.makeConstraints{
            $0.bottom.equalTo(-50)
            $0.leading.trailing.equalTo(stackView1)
            $0.height.equalTo(position.snp.height)
            
        }
    }
    
    func searchButton(){
        search.addTarget(self, action: #selector(searchAction(_:)), for: .touchUpInside)
    }
    @objc func searchAction(_ sender:UIButton!) {
        let newViewController = SearchTableView()
        self.navigationController?.pushViewController(newViewController, animated: true)
    }
    
    func nationalityButton(){
        nationality.addTarget(self, action: #selector(nationalityAction(_:)), for: .touchUpInside)
    }
    @objc func nationalityAction(_ sender:UIButton!) {
        let newViewController = NationalityTableView()
        self.navigationController?.pushViewController(newViewController, animated: true)
    }
    
    

}
