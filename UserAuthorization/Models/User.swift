//
//  User.swift
//  UserAuthorization
//
//  Created by Анастасия Ступникова on 25.12.2021.
//

import Foundation
import UIKit

struct User {
    let login = "User"
    let password = "Password"
    let person = Person()
}

struct Person {
    let name = "Анастасия"
    let surname = "Ступникова"
    let biography = """
    Меня зовут Настя, мне 24 года. В свободное время люблю спать, кушать,
    смотреть фильмы или видосики на ютубе. Мне очень нравится сидеть дома,
    дом прекрасен, он намного лучше улицы. Конечно, я выхожу из дома,
    путешествую, но это не так прекрасно, как сидеть дома)
    """
    let image = UIImage(named: "IMG_0660")
}
