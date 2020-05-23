import SwiftUI

struct ContentView: View {
    let buttons = [
        ["7","8","9","X"],
        ["4","5","6","X"],
        ["1","2","3","X"],
        ["0",".",".","X"] 
    ]
    var body: some View {
        ZStack(alignment: .bottom) {
            Color.black.edgesIgnoringSafeArea(.all)
            VStack(spacing:12){
                HStack {
                    Spacer()
                    Text("42")
                        .font(.system(size: 72 ))
                        .foregroundColor(.white)
                    .padding()
                }
                ForEach(buttons,id: \.self) { row in
                    HStack {
                        ForEach(row,id: \.self) { button in
                            Text(button)
                                .font(.system(size:32))
                                .frame(width:self.lebarTombol(),height:self.lebarTombol())
                                .foregroundColor(.white)
                                .background(Color.yellow)
                                .cornerRadius(45)
                        }
                    }
                }
            }.padding(.bottom)
        }
    }
    func lebarTombol() -> CGFloat {
        return (UIScreen.main.bounds.width - 5 * 12) / 4
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
