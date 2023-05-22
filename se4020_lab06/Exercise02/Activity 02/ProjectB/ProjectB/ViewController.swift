//
//  ViewController.swift
//  ProjectB
//
//  Created by Sajani Jatasinghe on 2023-05-10
//

import UIKit

class ViewController: UIViewController {
    var cluesLable: UILabel!
    var answerLable: UILabel!
    var currentAnswer: UITextField!
    var scoreLable: UILabel!
    var letterButtons = [UIButton] ()
    
    var activatedButtons = [UIButton]()
    var solutions = [String]()

    var score = 0 {
        didSet {
            scoreLable.text = "Score: \(score)"
        }
    }
    var level = 1
    
    override func loadView() {
        view = UIView()
        view.backgroundColor = .white
        
        scoreLable = UILabel()
        
        scoreLable.translatesAutoresizingMaskIntoConstraints = false
        scoreLable.textAlignment = .right
        scoreLable.text = "Score : 0"
        view.addSubview(scoreLable)
        
        cluesLable = UILabel()
        cluesLable.translatesAutoresizingMaskIntoConstraints = false
        cluesLable.font = UIFont.systemFont(ofSize: 24)
        cluesLable.text = "CLUES"
        cluesLable.numberOfLines = 0
        cluesLable.setContentHuggingPriority(UILayoutPriority(1), for: .vertical)
        view.addSubview(cluesLable)
        
        answerLable = UILabel()
        answerLable.translatesAutoresizingMaskIntoConstraints = false
        answerLable.font = UIFont.systemFont(ofSize: 24)
        answerLable.text = "ANSWERS"
        answerLable.textAlignment = .right
        answerLable.numberOfLines = 0
        answerLable.setContentHuggingPriority(UILayoutPriority(1), for: .vertical)
        view.addSubview(answerLable)
        
        currentAnswer = UITextField()
        currentAnswer.translatesAutoresizingMaskIntoConstraints = false
        currentAnswer.placeholder = "Tap letters to guess"
        currentAnswer.textAlignment = .center
        currentAnswer.font = UIFont.systemFont(ofSize: 44)
        currentAnswer.isUserInteractionEnabled = false
        view.addSubview(currentAnswer)
        
        let submit = UIButton(type: .system)
        submit.translatesAutoresizingMaskIntoConstraints = false
        submit.setTitle("SUBMIT", for: .normal)
        submit.addTarget(self, action: #selector(submitTapped), for: .touchUpInside)
        view.addSubview(submit)


        let clear = UIButton(type: .system)
        clear.translatesAutoresizingMaskIntoConstraints = false
        clear.setTitle("CLEAR", for: .normal)
        clear.addTarget(self, action: #selector(clearTapped), for: .touchUpInside)
        view.addSubview(clear)
        
        let buttonsView = UIView()
        buttonsView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(buttonsView)
        
        NSLayoutConstraint.activate([
            scoreLable.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor),
            scoreLable.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
            
            cluesLable.topAnchor.constraint(equalTo: scoreLable.bottomAnchor),
            cluesLable.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor, constant: 100),
            cluesLable.widthAnchor.constraint(equalTo: view.layoutMarginsGuide.widthAnchor, multiplier: 0.6, constant: -100),

            answerLable.topAnchor.constraint(equalTo: scoreLable.bottomAnchor),
            answerLable.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor, constant: -100),
            answerLable.widthAnchor.constraint(equalTo: view.layoutMarginsGuide.widthAnchor, multiplier: 0.4, constant: -100),
            answerLable.heightAnchor.constraint(equalTo: cluesLable.heightAnchor),
            
            currentAnswer.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            currentAnswer.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5),
            currentAnswer.topAnchor.constraint(equalTo: cluesLable.bottomAnchor, constant: 20),
            
            submit.topAnchor.constraint(equalTo: currentAnswer.bottomAnchor),
            submit.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -100),
            submit.heightAnchor.constraint(equalToConstant: 44),

            clear.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 100),
            clear.centerYAnchor.constraint(equalTo: submit.centerYAnchor),
            clear.heightAnchor.constraint(equalToConstant: 44),
            
            buttonsView.widthAnchor.constraint(equalToConstant: 750),
            buttonsView.heightAnchor.constraint(equalToConstant: 320),
            buttonsView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            buttonsView.topAnchor.constraint(equalTo: submit.bottomAnchor, constant: 20),
            buttonsView.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor, constant: -20)
        ])
        
        let width = 150
        let height = 80
        
        for row in 0..<4 {
            for col in 0..<5 {
                let letterButton = UIButton(type: .system)
                letterButton.titleLabel?.font = UIFont.systemFont(ofSize: 36)
                letterButton.setTitle("WWW", for: .normal)
                letterButton.addTarget(self, action: #selector(letterTapped), for: .touchUpInside)

                let frame = CGRect(x: col * width, y: row * height, width: width, height: height)
                letterButton.frame = frame

                buttonsView.addSubview(letterButton)

                letterButtons.append(letterButton)
            }
        }
        
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadLevel()
    }
    
    @objc func letterTapped(_ sender: UIButton) {
        guard let buttonTitle = sender.titleLabel?.text else { return }
        currentAnswer.text = currentAnswer.text?.appending(buttonTitle)
        activatedButtons.append(sender)
        sender.isHidden = true
    }

    @objc func submitTapped(_ sender: UIButton) {
        guard let answerText = currentAnswer.text else { return }

        if let solutionPosition = solutions.firstIndex(of: answerText) {
            activatedButtons.removeAll()

            var splitAnswers = answerLable.text?.components(separatedBy: "\n")
            splitAnswers?[solutionPosition] = answerText
            answerLable.text = splitAnswers?.joined(separator: "\n")

            currentAnswer.text = ""
            score += 1

            if score % 7 == 0 {
                let ac = UIAlertController(title: "Well done!", message: "Are you ready for the next level?", preferredStyle: .alert)
                ac.addAction(UIAlertAction(title: "Let's go!", style: .default, handler: levelUp))
                present(ac, animated: true)
            }
        }
    }
    
    func levelUp(action: UIAlertAction) {
        level += 1
        solutions.removeAll(keepingCapacity: true)

        loadLevel()

        for btn in letterButtons {
            btn.isHidden = false
        }
    }

    @objc func clearTapped(_ sender: UIButton) {
        currentAnswer.text = ""

        for btn in activatedButtons {
            btn.isHidden = false
        }

        activatedButtons.removeAll()
    }
    
    func loadLevel() {
        var clueString = ""
        var solutionString = ""
        var letterBits = [String]()

        if let levelFileURL = Bundle.main.url(forResource: "level\(level)", withExtension: "txt") {
            if let levelContents = try? String(contentsOf: levelFileURL) {
                var lines = levelContents.components(separatedBy: "\n")
                lines.shuffle()

                for (index, line) in lines.enumerated() {
                    let parts = line.components(separatedBy: ": ")
                    let answer = parts[0]
                    let clue = parts[1]

                    clueString += "\(index + 1). \(clue)\n"

                    let solutionWord = answer.replacingOccurrences(of: "|", with: "")
                    solutionString += "\(solutionWord.count) letters\n"
                    solutions.append(solutionWord)

                    let bits = answer.components(separatedBy: "|")
                    letterBits += bits
                }
            }
        }

        cluesLable.text = clueString.trimmingCharacters(in: .whitespacesAndNewlines)
        answerLable.text = solutionString.trimmingCharacters(in: .whitespacesAndNewlines)

        letterBits.shuffle()

        if letterBits.count == letterButtons.count {
            for i in 0 ..< letterButtons.count {
                letterButtons[i].setTitle(letterBits[i], for: .normal)
            }
        }    }

}

