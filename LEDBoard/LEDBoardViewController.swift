//
//  BoardViewController.swift
//  Horizontal
//
//  Created by SC on 2022/07/06.
//

import UIKit

class LEDBoardViewController: UIViewController, UITextFieldDelegate {


    @IBOutlet weak var topView: UIView!
    @IBOutlet weak var userTextField: UITextField!
    @IBOutlet weak var textColorButton: UIButton!
    @IBOutlet weak var sendButton: UIButton!
    @IBOutlet var buttonList: [UIButton]!

    @IBOutlet weak var resultLabel: UILabel!

    @IBOutlet weak var hideTopViewLabel: UILabel!

    @IBOutlet weak var testLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        testLabel.text = nil
//        Int8 // 2의 8승까지만

        designButton(sendButton, buttonTitle: "전송", highlightedTitle: "하이라이트", bgColor: .yellow)
        designButton(textColorButton, buttonTitle: "컬러", highlightedTitle: "하이라이트", bgColor: .yellow)
        designTextField()
//        userTextField.delegate = self  // delegate 설정

        resultLabel.numberOfLines = 0
        resultLabel.backgroundColor = .clear
        resultLabel.text = nil

        designHideTopViewLabel(hideTopViewLabel)

    }


    func designTextField() {
        userTextField.borderStyle = .roundedRect
        userTextField.layer.cornerRadius = 5
        userTextField.layer.borderWidth = 2
        userTextField.layer.borderColor = UIColor.white.cgColor
//        userTextField.placeholder = "내용을 작성해 주세요"
        userTextField.attributedPlaceholder = NSAttributedString(
            string: "내용을 작성해 주세요",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.white]
        )
        userTextField.text = "안녕하세요"
        userTextField.keyboardType = .emailAddress
    }


    // 인자는 값, 매개형식변수는 말 그대로 변수
    // buttonOutletVariableName: Argument Label | 외부 매개변수(생략 가능): 내부에서 사용 불가
    // buttonName: Parameter Name |  내부 매개면수: 외부에서 사용 불가
    // _: 와일드 카드 식별자
    // 오른쪽에 있는 이름은 함수 안에서
    // 왼쪽에 있는 이름은 함수 호출할 때
//    func designButton(buttonOutletVariableName buttonName: UIButton, buttonTitle: String, highlightedTitle: String, bgColor: UIColor) {
    func designButton(_ buttonName: UIButton, buttonTitle: String, highlightedTitle: String, bgColor: UIColor) {
//        print(buttonList)
        buttonName.setTitle(buttonTitle, for: .normal)
        buttonName.setTitle(highlightedTitle, for: .highlighted)
        buttonName.backgroundColor = bgColor
        buttonName.layer.cornerRadius = 8
        buttonName.layer.borderColor = UIColor.black.cgColor
        buttonName.layer.borderWidth = 3
        buttonName.setTitleColor(.red, for: .normal)
        buttonName.setTitleColor(.blue, for: .highlighted)
    }


    func designOutletCollection() {
//        1. 반복문
        let buttonArray = [sendButton, textColorButton]

        for item in buttonArray {
            // 배열에 아이템이 없을 수도 있기 때문에 ? 가 붙음
            // buttonArray: [UIButton] 로 타입 어노테이션을 할 경우 옵셔널 체이닝이 필요 없다
//            item?.backgroundColor = .blue
//            item?.layer.cornerRadius = 2
        }


//        2. 아웃렛 컬렉션
        for item in buttonList {
            // 배열에 아이템이 없을 수도 있기 때문에 ? 가 붙음
            // buttonArray: [UIButton] 로 타입 어노테이션을 할 경우 옵셔널 체이닝이 필요 없다
            item.backgroundColor = .blue
            item.layer.cornerRadius = 2
        }
    }

    func designHideTopViewLabel(_ label: UILabel) {
        label.text = "상단 View 숨기기"
        label.textAlignment = .center
        label.textColor = .white
        label.sizeToFit()  // 텍스트 크기에 라벨 크기 맞추기
//        label.backgroundColor = .darkGray  // label 자체의 직사각형 뷰
        label.layer.backgroundColor = UIColor.darkGray.cgColor
        label.layer.cornerRadius = 10
        label.frame.size.width = 150
        label.frame.size.height = 50

    }


    @IBAction func sendButtonClicked(_ sender: UIButton) {

        print("userTextField.text?.count: \(userTextField.text?.count)")
        print("userTextField.text: \(userTextField.text!)")  // 느낌표가 없어도 실행되는 이유?
//        resultLabel.text = userTextField.text

        resultLabel.text = "\(userTextField.text ?? "ERROR")를 입력했습니다."

        userTextField.text = nil
        print("nil로 바꾼 후: \(userTextField.text)")

        print(sendButton.currentTitle)

    }


    // return 키 누르면 키보드 내려가도록: delegate 이용
//    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//        textField.resignFirstResponder()
//        return true
//    }


    // return 키 누르면 키보드 내려가도록: 이벤트를 DidEndOnExit로 Action 연결 시 자동으로 return 키 누르면 키보드 내려감
    @IBAction func didEndOnExit(_ sender: Any) {
    }


    @IBAction func tapGestureClicked(_ sender: UITapGestureRecognizer) {

//        sendButton.layer.borderColor = UIColor.yellow.cgColor
        print("tapGestureClicked")
        view.endEditing(true)
        topView.isHidden.toggle()

    }


    @IBAction func exampleButton1(_ sender: UIButton) {
        view.endEditing(true)
    }


    @IBAction func hideTopViewTapGestureClicked(_ sender: UITapGestureRecognizer) {
        print("hideTopViewTapGestureClicked")

        if topView.isHidden {
            topView.isHidden.toggle()
        } else if !topView.isHidden {
            topView.isHidden.toggle()
        }

        // 위의 5줄을
//        topView.isHidden.toggle()  // 로만 구현 가능
    }


    // MARK: - TEST

//    @IBAction func colorButtonClicked(_ sender: UIButton) {
//        print(testLabel.text)
//        isNilLabelText(testLabel.text)
//    }
//
//    func isNilLabelText(_ labelText: String?) {
//        if labelText!.isEmpty {
//            print("labelText!.isEmpty")
//        } else if labelText == nil {
//            print("labelText == nil")
//        }
//    }

}
