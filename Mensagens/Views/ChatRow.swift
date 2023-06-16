//
//  ChatRow.swift
//  Mensagens
//
//  Created by Marcello Gonzatto Birkan on 16/06/23.
//

import SwiftUI

struct ChatRow: View {
    let type: MessageType
    var isSender: Bool {
        return type == .sent
    }
    init(type: MessageType) {
        self.type = type
        
    }
    var body: some View {
        
            HStack {
                
                if isSender { Spacer() }
                
                if !isSender {
                    VStack {
                        Spacer()
                        Circle()
                            .frame(width: 45, height: 45)
                            .foregroundColor(.yellow)
                    }
                }
                HStack {
                    Text("Aqui tem um mensagem")
                        .foregroundColor(isSender ? .white : Color(.label))
                        .padding()
                }
                .background(isSender ? Color.cyan.gradient : Color(.systemGray4).gradient)
                .cornerRadius(6)
                .padding(isSender ? .leading : .trailing, isSender ? UIScreen.main.bounds.width/3 : UIScreen.main.bounds.width/5)
                
                if !isSender { Spacer() }
            }
    }
}

struct ChatRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ChatRow(type: MessageType.sent)
            ChatRow(type: MessageType.received)
        }
    }
}
