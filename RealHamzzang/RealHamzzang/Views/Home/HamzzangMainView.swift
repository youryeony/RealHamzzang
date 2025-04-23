import SwiftUI

struct HamzzangMainView: View {
    var body: some View {
        ZStack {
            GeometryReader { geometry in
                Circle()
                    .frame(
                        width: geometry.size.width * 3.5,
                        height: geometry.size.width * 2
                    )
                    .foregroundColor(.ngreen)
                    .position(x: 500, y: 940)
            }
            GeometryReader { geometry in
                Circle()
                    .frame(
                        width: geometry.size.width * 3,
                        height: geometry.size.width * 2
                    )
                    .foregroundColor(.ngreen)
                    .position(x: 130, y: 930)
            }
            VStack(spacing: 20) {
                // MARK: 상단 아이콘 바

                Spacer()
                HStack {
                    Spacer()
                    Button {}
                        label: {
                            Image("listicon")
                        }
                    Spacer()
                    Button {}
                        label: {
                            Image("noteicon")
                        }
                    Spacer()
                    Button {}
                        label: {
                            Image("calendaricon")
                        }
                    Spacer()
                }
                ScrollView {
                    Spacer()
                    VStack(spacing: 20) {
                        // MARK: 말풍선
                        
                        Group {
                            Text("나만의 목표 이름을\n먼저 정해볼까?\n\n그리고 #오늘실패완료 기록을 하며\n실패 근육을 키워가는거야..!")
                        }
                        .font(.custom("DungGeunMo", size: 18))
                        .padding()
                        .background(Color.bubble.opacity(0.7))
                        .cornerRadius(20)
                        
                        RoundedRectangle(cornerRadius: 8)
                            .frame(width: 25, height: 25)
                            .foregroundStyle(.bubble)
                            .opacity(0.7)
                            .padding(.leading, 200)
                        
                        RoundedRectangle(cornerRadius: 6)
                            .frame(width: 20, height: 20)
                            .foregroundStyle(.bubble)
                            .opacity(0.7)
                            .padding(.leading, 170)
                    }
                    
                    // MARK: 햄짱이 이미지
                    
                    VStack(spacing: 20) {
                        Image("HamzzangX")
                            .frame(width: 143, height: 143)
                        
                        Text("텍스트 필드로 바꿀 곳")
                            .padding(.horizontal, 30)
                            .multilineTextAlignment(.center)
                        
                        Rectangle()
                            .frame(height: 2)
                            .foregroundStyle(.gray)
                            .padding(.horizontal, 30)
                    }
                    .padding(.horizontal, 30)
                    .font(.custom("DungGeunMo", size: 24))
                    
                    // MARK: 햄짱이 레벨, 데이카운트
                    
                    VStack(spacing: 20) {
                        Text("레벨입력할곳")
                            .foregroundStyle(.gray)
                            .font(.custom("DungGeunMo", size: 24))
                        
                        Text("D+day입력할곳")
                            .foregroundStyle(.black)
                            .font(.custom("DungGeunMo", size: 20))
                    }
                    .padding(.top, 24)
                    .padding(.bottom, 120)
                }
            }
        }
    }
}

#Preview {
    HamzzangMainView()
}
