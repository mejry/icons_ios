//
//  ContentView.swift
//  list_hstack
//
//  Created by Tekup-mac-10 on 10/10/2024.
//

import SwiftUI


struct list: Identifiable {
    let id = UUID()
    let icon: String
    let color: Color
    let title: String
}


struct ContentView: View {
    var lst: [list] {
        [
            list(icon: "star.fill", color: .yellow, title: "Favorite"),
            list(icon: "heart.fill", color: .red, title: "Like"),
            list(icon:"square.and.arrow.up.fill",color: .blue, title: "Share"),
            list(icon:"trash.fill",color: .gray, title: "Delete"),
            list(icon:"circle.fill",color: .purple, title: "Circle"),
            list(icon:"person.fill",color: .green, title: "Person"),
            list(icon:"pencil",color: .orange, title: "Pencil"),
            list(icon:"message.fill",color: .yellow, title: "Message"),
            list(icon:"paperplane.fill",color: .yellow, title: "Paperplane")
        ]
    }
    
    var body: some View {
        VStack {
            List(lst) { item in
                HStack{
                    Image(systemName:item.icon)
                        .foregroundColor(item.color)
                        .font(.system(size: 30))
                    Text(item.title)
                        .font(.title2)
                    Spacer()
                }
            }
        }
    } }
            /*MenuItem(icon:"star.fill",color: .yellow, title: "Favorite")
            MenuItem(icon:"heart.fill",color: .red, title: "like")
            MenuItem(icon:"square.and.arrow.up.fill",color: .blue, title: "Share")
            MenuItem(icon:"trash.fill",color: .gray, title: "Delete")
            MenuItem(icon:"circle.fill",color: .purple, title: "Circle")
            MenuItem(icon:"person.fill",color: .green, title: "Person")
            MenuItem(icon:"pencil",color: .orange, title: "Pencil")
            MenuItem(icon:"message.fill",color: .yellow, title: "Message")
            MenuItem(icon:"paperplane.fill",color: .yellow, title: "Paperplane")
            
        }
        .padding()*/
    //}
//}
        /*
struct MenuItem:View {
    let icon:String
    let color:Color
    let title : String
    var body: some View {
        HStack{
            Image(systemName:icon)
                .foregroundColor(color)
                .font(.system(size: 30))
            Text(title)
                .font(.title2)
            Spacer()
        }
    }
}*/

#Preview {
    ContentView()
}
