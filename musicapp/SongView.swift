//
//  SongView.swift
//  musicapp
//
//  Created by Turma01-9 on 12/06/24.
//

import SwiftUI
var teste = Song(id: 2, name: "Numbcore", artist: "Linkin Park", capa: "https://upload.wikimedia.org/wikipedia/pt/8/83/Linkin_park-meteora_a.jpg")
struct SongView: View {
    @State var song : Song = teste
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.azulfade, .black]), startPoint: .top, endPoint: .center).ignoresSafeArea()
            VStack{
                AsyncImage(
                    url: URL(string: song.capa),
                    content: { image in
                        image.resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(maxWidth: 300, maxHeight: 300)
                    },
                    placeholder: {
                        ProgressView()
                    }
                    
                )
                Text(song.name)
                    .font(.title)
                    .foregroundStyle(.white)
                Text(song.artist)
                    .foregroundStyle(.white)
                Spacer()
                    .frame(height:  150)
                HStack{
                    Image(systemName: "shuffle")
                        .resizable()
                        .foregroundStyle(.white)
                        .frame(width:  30, height: 30)
                    Spacer()
                        .frame(width: 30)
                    Image(systemName: "backward.end.fill")
                        .resizable()
                        .foregroundStyle(.white)
                        .frame(width:  30, height: 30)
                        .foregroundStyle(.white)
                    Spacer()
                        .frame(width: 30)
                    Image(systemName: "play.fill")
                        .resizable()
                        .foregroundStyle(.white)
                        .frame(width:  50, height: 50)
                        .foregroundStyle(.white)
                    Spacer()
                        .frame(width: 30)
                    Image(systemName: "forward.end.fill")
                        .resizable()
                        .foregroundStyle(.white)
                        .frame(width:  30, height: 30)
                        .foregroundStyle(.white)
                    Spacer()
                        .frame(width: 30)
                    Image(systemName: "repeat")
                        .resizable()
                        .foregroundStyle(.white)
                        .frame(width:  30, height: 30)
                        .foregroundColor(.white)
                }

                
            }
        }
    }
    
}

#Preview {
    SongView()
}
