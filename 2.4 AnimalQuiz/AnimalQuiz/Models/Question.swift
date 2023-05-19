//
//  Question.swift
//  AnimalQuiz
//
//  Created by Vladislav Maslov on 24.03.2023.
//

import Foundation

enum ResponseType {
    case single
    case multiple
    case range
}

struct Question {
    let text: String
    let type: ResponseType
    let answer: [Answer]
}

extension Question{
    static func getQuestions() -> [Question] {
        return [
        Question(text: "Что ты любишь покушать??",
                 type: .single,
                 answer: [
                    Answer(text: "Косточки", type: .dog),
                    Answer(text: "Рыба", type: .cat),
                    Answer(text: "Морковь", type: .rabbit),
                    Answer(text: "Кукуруза", type: .turtle)
                 ]),
        Question(text: "Что ты любишь делать??",
                 type: .multiple,
                 answer: [
                    Answer(text: "Лаять", type: .dog),
                    Answer(text: "Спать на солнце", type: .cat),
                    Answer(text: "Грызть всё", type: .rabbit),
                    Answer(text: "Полазть", type: .turtle)
                 ]),
        Question(text: "Любите-ли вы поездки на машине?",
                 type: .range,
                 answer: [
                    Answer(text: "Обожаю", type: .dog),
                    Answer(text: "Люблю", type: .cat),
                    Answer(text: "Равнодушно", type: .rabbit),
                    Answer(text: "Ненавижу", type: .turtle)
                 ])
        ]
    }
}
