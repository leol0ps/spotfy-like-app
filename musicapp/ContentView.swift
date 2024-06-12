//
//  ContentView.swift
//  musicapp
//
//  Created by Turma01-9 on 12/06/24.
//

import SwiftUI
struct Song : Identifiable{
    var id: Int
    var name: String
    var artist: String
    var capa: String
}
var arryMusicas = [
    Song(id: 1, name: "Numbcore", artist: "Linkin Park", capa:"https://upload.wikimedia.org/wikipedia/pt/8/83/Linkin_park-meteora_a.jpg"),
    Song(id: 2, name: "Numbcore", artist: "Linkin Park", capa: "LPlost"),
    Song(id: 3, name: "Numbcore", artist: "Linkin Park", capa: "LPlost"),
    Song(id: 4, name: "Numbcore", artist: "Linkin Park", capa: "LPlost"),
    Song(id: 5, name: "Numbcore", artist: "Linkin Park", capa: "LPlost"),
    Song(id: 6, name: "Numbcore", artist: "Linkin Park", capa: "LPlost"),
    Song(id: 7, name: "Numbcore", artist: "Linkin Park", capa: "LPlost"),
    Song(id: 8, name: "Numbcore", artist: "Linkin Park", capa: "LPlost"),
    Song(id: 9, name: "Numbcore", artist: "Linkin Park", capa: "LPlost"),
    Song(id: 10, name: "Numbcore", artist: "Linkin Park", capa: "LPlost"),
    Song(id: 11, name: "Numbcore", artist: "Linkin Park", capa: "LPlost"),
    Song(id: 12, name: "Numbcore", artist: "Linkin Park", capa: "LPlost"),
]
struct ContentView: View {
    var body: some View {
        NavigationStack{
            ZStack{
                LinearGradient(gradient: Gradient(colors: [.azulfade, .black]), startPoint: .top, endPoint: .center).ignoresSafeArea()
                ScrollView{
                    VStack{
                        Image(.rua)
                            .resizable()
                            .frame(width: 200, height: 200)
                        
                        
                    }
                    VStack(alignment: .leading){
                        HStack{
                            Text("HackaFM")
                                .font(.system(size: 30))
                                .font(.headline)
                                .foregroundStyle(.white)
                                Spacer()
                        }/*.background(.red)*/
                        HStack{
                            
                            Image(.rua)
                                .resizable()
                                .frame(width: 30, height: 30)
                            Text("HackSong")
                                .foregroundStyle(.white)
                        }
                    }
                    ForEach(arryMusicas) { musica in
                        NavigationLink(destination: SongView(song: musica), label: {
                            HStack{
                                AsyncImage(
                                    url: URL(string: musica.capa),
                                    content: { image in
                                        image.resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(maxWidth: 50, maxHeight: 50)
                                    },
                                    placeholder: {
                                        ProgressView()
                                    }
                                )
                                VStack{
                                    /*@START_MENU_TOKEN@*/Text(musica.name)/*@END_MENU_TOKEN@*/
                                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                        .foregroundStyle(.white)
                                    Text(musica.artist)
                                        .foregroundStyle(.white)
                                }
                                Spacer()
                                    .frame(width: 160)
                                Image(systemName: "ellipsis")
                                
                            }
                        })
                        
                    }
                    
                    
                }
                
            }
        }
    }
        
}

#Preview {
    ContentView()
}
