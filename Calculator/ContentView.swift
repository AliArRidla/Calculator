import SwiftUI

enum TombolKalkulator : String {
    case kosong,satu,dua,tiga,empat,lima,enam,tujuh,delapan,sembilan
    case samaDengan,tambah,kurang,kali,bagi
    case ac,tambahKurang,persen,desimal
    
    var judul : String {
        switch self {
        case .kosong: return "0"
        case .satu: return "1"
        case .dua: return "2"
        case .tiga: return "3"
        case .empat: return "4"
        case .lima: return "5"
        case .enam: return "6"
        case .tujuh: return "7"
        case .delapan: return "8"
        case .sembilan: return "9"
        case .tambah: return "+"
        case .kurang: return "-"
        case .kali: return "X"
        case .bagi: return "/"
        case .persen: return "%"
        case .samaDengan: return "=="
        case .desimal: return "."
         case .tambahKurang: return "+/-"
        default:
            return "AC"
        }
    }
    
    
    var backgroundColor: Color {
        switch self {
        case .kosong,.satu,.dua,.tiga,.empat,.lima,.enam,.tujuh,.delapan,.sembilan:
            return Color(.darkGray)
        case .ac,.tambahKurang,.persen:
            return Color(.lightGray)
        default:
            return.orange
        }
    }
}

struct ContentView: View {
    let buttons:[[TombolKalkulator]] = [
        [.ac,.tambahKurang,.persen,.bagi],
        [.tujuh,.delapan,.sembilan,.kali],
        [.empat,.lima,.enam,.kurang],
        [.satu,.dua,.tiga,.tambah],
        [.kosong,.desimal,.samaDengan]
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
                            
                            Button(action: {
                                
                            }){
                            
                            Text(button.judul)
                                .font(.system(size:32))
                                .frame(width:self.lebarTombol(button: button),
                                       height: (UIScreen.main.bounds.width - 5 * 12) / 4)
                                .foregroundColor(.white)
                                .background(button.backgroundColor)
                                .cornerRadius(45)
                            }
                        }
                    }
                }
            }.padding(.bottom)
        }
    }
    func lebarTombol(button:TombolKalkulator) -> CGFloat {
        if button == .kosong {
            return (UIScreen.main.bounds.width - 5 * 12) / 4 * 2
        }
        return (UIScreen.main.bounds.width - 5 * 12) / 4
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
