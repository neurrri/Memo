//
//  MemoData.swift
//  LitIt
//
//  Created by CAUAD09 on 2018. 7. 26..
//  Copyright © 2018년 NEURRRI. All rights reserved.
//

import Foundation

let memoData:MemoData = MemoData()

class MemoData {
    var tags:[Tag] = []
    
    init() {
        //일단은 let으로 더미값을 집어넣자!!!
        var memo1 = Memo(context: "더미 텍스트 하나, 엔터는 어떻게 스트링에 집어넣는 거지??", date: "2018. 07. 26.")
        var memo2 = Memo(context: "더미 텍스트 둘, 날짜는 어떻게 넣는다고 하셨지??", date: "2018. 07. 25.")
        var memo3 = Memo(context: "더미 텍스트 셋, 이거 왜케 어렵냐...", date: "2018. 07. 24.")
        
        var memo4 = Memo(context: "그리고 오베는 자기가 남은 일생 동안 그녀가 좋아하는 것에 대해 그녀의 입으로 듣길 원한다는 사실을 깨달았다. 오베라는 남자.", date: "2017. 09. 12.")
        var memo5 = Memo(context: "Ever thine, Ever mine, Ever ours. 섹스앤더시티", date: "2018. 07. 29")
        var memo6 = Memo(context: "'당신이 바라보는 사람이 된다는 건 어떤 기분인지 알고 싶었을 뿐입니다.' 오베라는 남자.", date: "2017. 09. 12.")
        
        var memo7 = Memo(context: "a shrink - 가끔은", date: "2018. 07. 18.")
        var memo8 = Memo(context: "I want that you to be the best version of Blake that you can be.", date: "2018. 07. 18.")
        var memo9 = Memo(context: "I have many titles among them ~~ . 난 많은 직함이 있지만 여기선 그 중에 ~~야.", date: "2017. 09. 29.")
        
        var memo10 = Memo(context: "나는 앞서 살았던 수백만 여성들의 희생을 딛고 서서 생각한다. 내가 어떻게 하면 이 산을 더 높게 만들어서 나 이후에 살 여성들이 더 멀리 보게 할 수 있을까. 루피카우르.", date: "2018. 05. 15.")
        var memo11 = Memo(context: "에드가 라이트 코미디 영화, 블루발렌타인, 매디슨 카운티의 다리, 월플라워, 모터사이클 다이어리, 소스코드, 우리들", date: "2017. 03. 04.")
        var memo12 = Memo(context: "해병대 면회같은 걸 가려고 기차를 겁나게 타고 갔다. 여기가 맞나 싶었는데 누구를 면회가려고 간거더라.엄마한테 전화했더니 아빠가 받았고 다시 엄마가 받아서 여기가 맞냐고 물었는데 제대로 답 안하고 그냥 맞다고만 했다. 암튼 거기서 가는데 어떤 여자애 하나를 만났다. 내가 아는 애였다. 어떤 남자 둘도 만났다 나랑 무슨 관계가 있었던 사람이었다. 근데 그 남자 둘중에 하나가 다른 남자가 있는데로 가는 거였다. 헐 쟤들 아나 싶었는데 그 간 남자가 다시 나랑 오더니 손잡고 같이 가자고 한다 그냥 존잡은게 아니라 팔짱끼듯 팔을 하공ㅇ 그리고 그 여자애랑 같이 셋이서 면회가러 간다. 가는 중에 손을 그냥 팔짱으로 바꾼다. 가는 길은 멀고 험한데 가는 중에 몇명 만나서 인사한다. 어떤 긴 복도? 그런데서는 정인이를 만난다 정인이가 군복입은 사진은 이미 봤었었다. 만나서 울고 너무 반갑다고 막 그런다. 근데 덕분에 시간이 지체되서 일행이 조금 걱정한다. 배?가 시간이 정해져있나 그랬던 거 같다. 이번에는 물이 간득한곳인데 그 양 가로 나있는 돌길을 밟아서 가는건데 돌다리 비슷한거였다. 근데 그냥 나무 다리같은건데 그게 돌로되어있는, 그니까 아래에 기둥이 없는 다리었다. 둘다 오른쪽에 있길래 나도 그리가려는데 가서 보니까 못건너겠어서 왼쪽으로 돌아와서 건너고 둘은 오른쪽으로 건너다. 마지막 발을 딛고 무사히 건너는데 내가 마지막에 밟았던 그 끝부분이 다 무너져있었다. 그냥 쌓여서 모양만 흐트러진느낌. 거긴 동굴같은 분위기였다. 거기서 깼다.", date: "2017. 01. 15.")
        

        
        let tag_all = Tag(name: "모든 메모")
        let tag_nil = Tag(name: "태그되지 않은 메모")
        var tag_1 = Tag(name: "앱개발")
        var tag_2 = Tag(name: "영화, 책")
        var tag_3 = Tag(name: "영어표현")
        tag_all.memoes = [memo1, memo2, memo3, memo4, memo5, memo6, memo7, memo8, memo9, memo10, memo11, memo12]
        tag_nil.memoes = [memo10, memo11, memo12]
        tag_1.memoes = [memo1, memo2, memo3]
        tag_2.memoes = [memo4, memo5, memo6]
        tag_3.memoes = [memo7, memo8, memo9]
        
        tags += [tag_all, tag_nil, tag_1, tag_2, tag_3]
        
    }
}

class Tag { //태그목록의 태그들
    var name:String
    var memoes:[Memo]?
    
    init(name:String) {
        self.name = name
    }
}

class Memo { //메모들
    var context:String
    var date:String
    
    init(context:String, date:String) {
        self.context = context
        self.date = date
    }
}
