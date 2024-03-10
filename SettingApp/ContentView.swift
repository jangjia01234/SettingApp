import SwiftUI

struct ContentView: View {
    
    @State private var searchText: String = ""
    @State private var isToggleOn: Bool = false
    
    var body: some View {
        NavigationView {
            List {
                Section {
                    HStack {
                        ZStack {
                            Circle()
                                .frame(width: 60)
                                .foregroundColor(.gray)
                            Text("J")
                                .font(.title)
                                .fontWeight(.semibold)
                                .foregroundColor(.white)
                        }
                        
                        HStack {
                            VStack(alignment: .leading) {
                                Section {
                                    Text("Jia")
                                        .font(.title2)
                                        .fontWeight(.semibold)
                                    Text("Apple ID, iCloud+, 미디어 및 구입 항목")
                                        .font(.caption)
                                }
                            }
                            Spacer()
                            Image(systemName: "chevron.right")
                                .foregroundColor(.gray)
                        }
                        .padding(.leading, 10)
                    }
                    
                    HStack {
                        Section {
                            Text("Apple Arcade 3개월 무료")
                                .font(.subheadline)
                        }
                        Spacer()
                        Image(systemName: "chevron.right")
                            .foregroundColor(.gray)
                    }
                }
                
                Section {
                    
                    HStack {
                        ZStack {
                            RoundedRectangle(cornerRadius: 5)
                                .fill(Color.orange)
                                .frame(width: 30, height: 30)
                            Image(systemName: "airplane")
                                .foregroundColor(.white)
                        }
                        Text("에어플레인 모드")
                            .padding(.leading, 5)
                        Spacer()
                        Toggle(isOn: $isToggleOn) {
                            // 토글 코드
                        }
                    }
                    
                    HStack {
                        ZStack {
                            RoundedRectangle(cornerRadius: 5)
                                .fill(Color.blue)
                                .frame(width: 30, height: 30)
                            Image(systemName: "wifi")
                                .foregroundColor(.white)
                        }
                        Text("Wi-Fi")
                            .padding(.leading, 5)
                        Spacer()
                        Text("public_2F")
                            .foregroundColor(.gray)
                        Image(systemName: "chevron.right")
                            .foregroundColor(.gray)
                    }
                    
                    HStack {
                        ZStack {
                            RoundedRectangle(cornerRadius: 5)
                                .fill(Color.green)
                                .frame(width: 30, height: 30)
                            Image(systemName: "antenna.radiowaves.left.and.right")
                                .foregroundColor(.white)
                        }
                        Text("셀룰러")
                            .padding(.leading, 5)
                        Spacer()
                        Image(systemName: "chevron.right")
                            .foregroundColor(.gray)
                    }
                    
                    HStack {
                        ZStack {
                            RoundedRectangle(cornerRadius: 5)
                                .fill(Color.green)
                                .frame(width: 30, height: 30)
                            Image(systemName: "personalhotspot")
                                .foregroundColor(.white)
                        }
                        Text("개인용 핫스팟")
                            .padding(.leading, 5)
                        Spacer()
                        Text("끔")
                            .foregroundColor(.gray)
                        Image(systemName: "chevron.right")
                            .foregroundColor(.gray)
                    }
                    
                }
                
                Section {
                    HStack {
                        ZStack {
                            RoundedRectangle(cornerRadius: 5)
                                .fill(Color.red)
                                .frame(width: 30, height: 30)
                            Image(systemName: "bell.badge.fill")
                                .foregroundColor(.white)
                        }

                        Text("알림")
                            .padding(.leading, 5)
                        Spacer()
                        Image(systemName: "chevron.right")
                            .foregroundColor(.gray)
                    }
                    
                    HStack {
                        ZStack {
                            RoundedRectangle(cornerRadius: 5)
                                .fill(Color.red)
                                .frame(width: 30, height: 30)
                            Image(systemName: "speaker.wave.3.fill")
                                .foregroundColor(.white)
                        }
                        Text("사운드 및 햅틱")
                            .padding(.leading, 5)
                        Spacer()
                        Image(systemName: "chevron.right")
                            .foregroundColor(.gray)
                    }
                    
                    HStack {
                        ZStack {
                            RoundedRectangle(cornerRadius: 5)
                                .fill(Color.indigo)
                                .frame(width: 30, height: 30)
                            Image(systemName: "moon.fill")
                                .foregroundColor(.white)
                        }
                        Text("집중 모드")
                            .padding(.leading, 5)
                        Spacer()
                        Image(systemName: "chevron.right")
                            .foregroundColor(.gray)
                    }
                    
                    HStack {
                        ZStack {
                            RoundedRectangle(cornerRadius: 5)
                                .fill(Color.indigo)
                                .frame(width: 30, height: 30)
                            Image(systemName: "hourglass")
                                .foregroundColor(.white)
                        }
                        Text("스크린 타임")
                            .padding(.leading, 5)
                        Spacer()
                        Image(systemName: "chevron.right")
                            .foregroundColor(.gray)
                    }
                    
                }
                
                Section {
                    HStack {
                        ZStack {
                            RoundedRectangle(cornerRadius: 5)
                                .fill(Color.gray)
                                .frame(width: 30, height: 30)
                            Image(systemName: "gear")
                                .foregroundColor(.white)
                        }
                        Text("일반")
                            .padding(.leading, 5)
                        Spacer()
                        Image(systemName: "chevron.right")
                            .foregroundColor(.gray)
                    }
                    
                    HStack {
                        ZStack {
                            RoundedRectangle(cornerRadius: 5)
                                .fill(Color.blue)
                                .frame(width: 30, height: 30)
                            Image(systemName: "sun.max.fill")
                                .foregroundColor(.white)
                        }
                        Text("디스플레이 및 밝기")
                            .padding(.leading, 5)
                        Spacer()
                        Image(systemName: "chevron.right")
                            .foregroundColor(.gray)
                    }
                    
                    HStack {
                        ZStack {
                            RoundedRectangle(cornerRadius: 5)
                                .fill(Color.blue)
                                .frame(width: 30, height: 30)
                            
                            Image(systemName: "accessibility")
                                .foregroundColor(.white)
                        }
                        Text("손쉬운 사용")
                            .padding(.leading, 5)
                        Spacer()
                        Image(systemName: "chevron.right")
                            .foregroundColor(.gray)
                    }
                    
                    HStack {
                        ZStack {
                            RoundedRectangle(cornerRadius: 5)
                                .fill(Color.green)
                                .frame(width: 30, height: 30)
                            Image(systemName: "battery.100percent")
                                .foregroundColor(.white)
                        }
                        Text("배터리")
                            .padding(.leading, 5)
                        Spacer()
                        Image(systemName: "chevron.right")
                            .foregroundColor(.gray)
                    }
                }
            }
            .navigationTitle(Text("설정"))
        }
    }
}

#if canImport(UIKit)
extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
#endif

#Preview {
    ContentView()
}
