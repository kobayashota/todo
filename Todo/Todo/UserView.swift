//
//  UserView.swift
//  Todo
//
//  Created by kobashou06 on 2020/11/08.
//  Copyright © 2020 kobashou06. All rights reserved.
//

import SwiftUI

struct UserView: View {
    
    let image: Image
    let userName: String
    
    var body: some View {
        HStack {
            VStack (alignment: .leading){
                Text("こんにちは")
                    .foregroundColor(Color.tTitle)
                    .font(.footnote)
                Text("\(userName)")
                    .foregroundColor(Color.tTitle)
                    .font(.title)
            }
            Spacer()
            Image("profile")
                .resizable()
                .frame(width:60,height:60)
                .clipShape(Circle())
            }
        .padding()
        .background(Color.tBackground)
    }
}

struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            UserView(image: Image("profile"),userName: "User Name")
            Circle()
        }
    }
}
