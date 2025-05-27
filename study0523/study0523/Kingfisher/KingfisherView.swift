//
//  KingfisherView.swift
//  study0523
//
//  Created by 임소은 on 5/28/25.
//

import SwiftUI
import Kingfisher

struct KingfisherView : View {
    var body : some View {
        VStack {
            if let url = URL(string: "https://i.pinimg.com/736x/68/fe/3c/68fe3c71aaa252331a850a940a399794.jpg"){
                KFImage(url)
                    .setProcessors([DownsamplingImageProcessor(size: CGSize(width: 400, height: 400)),RoundCornerImageProcessor(radius: .heightFraction(0.5))])
                    //다운 샘플링을 적용하며 동시에, 원형 이미지로 적용
                   //.downsampling(size: CGSize(width:400,height:400)) -> Downsampling은 다운로드 및 캐싱 전에 자동으로 다운샘플링을 적용
                    .cacheOriginalImage()
                    .placeholder({ //이미지 로딩중
                        ProgressView()
                            .controlSize(.mini)
                    }).retry(maxCount : 2, interval: .seconds(2)) //두번만 다시 시도, 2초간격으로
                    .onFailure{ //이미지 다운 시패시
                        error in print("이미지 다운로드 실패")
                    }
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:400, height:200)
            }
            Text("뿌이 ~~")
        }
        .padding()
    }
}

#Preview {
    KingfisherView()
}
