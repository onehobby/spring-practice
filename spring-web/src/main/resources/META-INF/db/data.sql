-- 사용자 등록
insert into spring_users values ('hong1234', '홍길동', '7C79DD68B400E6B0C9F99F8F221DAE26', 'hong@gmail.com', 0, 'N', current_date, current_date, null);
insert into spring_users values ('kim1234', '김유신', '7C79DD68B400E6B0C9F99F8F221DAE26', 'kim1234@gmail.com', 0, 'N', current_date, current_date, null);
insert into spring_users values ('kang1234', '감감찬', '7C79DD68B400E6B0C9F99F8F221DAE26', 'kang1234@gmail.com', 0, 'N', current_date, current_date, null);
insert into spring_users values ('lee1234', '이순신', '7C79DD68B400E6B0C9F99F8F221DAE26', 'lee1234@gmail.com', 0, 'N', current_date, current_date, null);
insert into spring_users values ('ryu1234', '이순신', '7C79DD68B400E6B0C9F99F8F221DAE26', 'ryu1234@gmail.com', 0, 'N', current_date, current_date, null);

-- 포인트 적립/차감 이유 카테고리 등록
insert into spring_point_reason_categories values (1, '도서주문');
insert into spring_point_reason_categories values (2, '회원정보 공개');
insert into spring_point_reason_categories values (3, '주문취소');
insert into spring_point_reason_categories values (4, '이벤트 당첨');
insert into spring_point_reason_categories values (5, '리뷰작성');
insert into spring_point_reason_categories values (6, '댓글작성');

-- 게시판 게시글 카테고리 등록
insert into spring_board_categories values (1, '자유글')
insert into spring_board_categories values (2, '주문문의')
insert into spring_board_categories values (3, '상품문의')
insert into spring_board_categories values (4, '주문취소')
insert into spring_board_categories values (5, '반품문의')
insert into spring_board_categories values (6, '환불문의')
insert into spring_board_categories values (7, '이벤트문의')
insert into spring_board_categories values (8, '답변')
insert into spring_board_categories values (9, '기타')

-- 북 카테고리
insert into spring_book_categories values (1, '국내도서', null);
insert into spring_book_categories values (101, '가정/살림', 1);
insert into spring_book_categories values (102, '건강/취미', 1);
insert into spring_book_categories values (103, '경제/경영', 1);
insert into spring_book_categories values (104, '국어/외국어/사전', 1);
insert into spring_book_categories values (105, '대학교재', 1);
insert into spring_book_categories values (106, '만화/라이트노벨', 1);
insert into spring_book_categories values (107, '사회/정치', 1);
insert into spring_book_categories values (108, '소설/시/희곡', 1);
insert into spring_book_categories values (109, '수험서/자격증', 1);
insert into spring_book_categories values (110, '인문', 1);
insert into spring_book_categories values (111, '자연과학', 1);
insert into spring_book_categories values (112, 'IT/모바일', 1);

-- 책 정보 등록
insert into spring_books 
values(1001, 101, '공부머리 독서법', '최승필', '책구루', '1001.jpg', '12년 동안 아이들과 함께 독서 논술 수업을 하면서 축적한 노하우를 집약한 독서교육 지침서', 16500, 14850, 100, 0, 0, 'N', current_date, current_date, null);
insert into spring_books 
values(1002, 101, '최강의 육아', '트레이시 커크로', '앵글북스', '1002.jpg', '15년차 베테랑 육아 전문기자가 리얼 현실 육아를 겪으며 찾아낸 최강의 육아 솔루션', 15000, 13600, 100, 0, 0, 'N', current_date, current_date, null);
insert into spring_books 
values(1003, 101, '못 참는 아이 욱하는 부모', '오은영', '코리아닷컴', '1003.jpg', '대한민국 육아 멘토 오은영 박사의 긴급진단! 감정 조절의 어려움을 겪는 아이와 부모를 위한 지침서', 16800, 15120, 100, 0, 0, 'N', current_date, current_date, null);

insert into spring_books 
values(1004, 102, '백년운동', '정선근', '아티잔', '1004.jpg', '서울대 의대 재활의학과 정선근의 새로운 책, 100년 인생을 건강하고 멋지게 사는 방법', 19500, 17550, 100, 0, 0, 'N', current_date, current_date, null);
insert into spring_books 
values(1005, 102, '맛있게 살 빠지는 고단백 전탄수화물 다이어트 레시피', '박지우', '비베이블', '1005.jpg', '30만명이 선택한 최강의 다이어터이며 베스트셀러, 다이어트 할 때도 맛있게 먹자', 175000, 15750, 100, 0, 0, 'N', current_date, current_date, null);
insert into spring_books 
values(1006, 102, '먹어서 병을 이기는 방법', '윌리엄 리', '흐름출판', '1006.jpg', '몸이 스스로 치유할 수 있는 새로운 과학적 방법, 5가지 방어체계를 활성화하자', 22000, 19800, 100, 0, 0, 'N', current_date, current_date, null);

insert into spring_books 
values(1007, 103, '존리의 부자되기 습관', '존 리', '지식노마드', '1007.jpg', '대한민국 경제독립 액션 플랜(친필사인 인쇄본, 10만부 한정 리커버 한정판)', 15000, 135000, 100, 0, 0, 'N', current_date, current_date, null);
insert into spring_books 
values(1008, 103, '돈의 속성', '김승호', '스노우폭스북스', '1008.jpg', '유투브 1,100만명이 시청한 돈의 속성 완결판 최상위 부자 김승호 회장이 밝히는 돈에 대한 통찰', 16800, 15120, 100, 0, 0, 'N', current_date, current_date, null);
insert into spring_books 
values(1009, 103, '부의 대이동', '오건영', '페이지2', '1009.jpg', '달러와 금의 흐름의 읽는 미래 투자 정략, 거시경제의 흐름과 투자 인사이트', 17000, 15300, 100, 0, 0, 'N', current_date, current_date, null);

insert into spring_books 
values(1010, 104, '해커스 토익 기출 보카', '데이비드 조', '해커스어학연구소', '1010.jpg', '토익 기출 보카 30일 완성! 주제별 연상암기로 쉽게 단어학습', 12900, 11610, 100, 0, 0, 'N', current_date, current_date, null);
insert into spring_books 
values(1011, 104, '영단어700 + 토익 기술 기적의 필기노트', '영단기 연구소', '에스티유니타스', '1011.jpg', '초단기 토익 정복, 최신 기술 압축 분석, 암기 APP/동영상 강의 제공', 4900, 4410, 100, 0, 0, 'N', current_date, current_date, null);
insert into spring_books 
values(1012, 104, 'ETS 토익 정기시험 기출문제집', 'ETS', 'YBM', '1012.jpg', 'Vol.2 READING 기출문제집 + 해설 + 무료 어플 학습 지원', 17800, 16020, 100, 0, 0, 'N', current_date, current_date, null);

insert into spring_books 
values(1013, 105, '간호사면접', '간호취업연구소', '홍지문', '1013.jpg', '상급병원 간호사들과 간호취업연구소가 2020년 최신 채용자료를 분석한 책', 25000, 22500, 100, 0, 0, 'N', current_date, current_date, null);
insert into spring_books 
values(1014, 105, '간호사전공 필기', '간호취업연구소', '홍지문', '1014.jpg', '2020년 신규 간호사 채용 필기시험을 분석한 책', 17000, 15300, 100, 0, 0, 'N', current_date, current_date, null);
insert into spring_books 
values(1015, 105, '그림으로 보는 그골격해부학', '정진우', '대학서림', '1015.jpg', '근골격해부학을 다룬 이론서이다.', 18000, 18000, 100, 0, 0, 'N', current_date, current_date, null);

insert into spring_books 
values(1016, 106, '디얍의 라스트오리진', '디얍', '제우미디어', '1016.jpg', '화제의 라스트오리진 공식 작가! 디얍이 돌아왔다.', 15000, 13500, 100, 0, 0, 'N', current_date, current_date, null);
insert into spring_books 
values(1017, 106, '코믹 나 혼자만 레벨업 3', '추공', '디앤씨미디어', '1017.jpg', '최약체에서 최강 헌터로, 세상의 중심에 서다.', 14500, 13050, 100, 0, 0, 'N', current_date, current_date, null);
insert into spring_books 
values(1018, 106, '코믹 나 혼자만 레벨업 1', '추공', '디앤씨미디어', '1018.jpg', '카카오페이지 150만 독자가 열광한 레이드 액션의 진수', 14500, 13050, 100, 0, 0, 'N', current_date, current_date, null);

insert into spring_books 
values(1019, 107, '검찰개혁과 촛불시민', '조국백서추진위원회', '오마이북', '1019.jpg', '2019년 8월 조국 법무부 장관의 지명으로 촉발된 검찰개혁의 갈등', 25000, 22500, 100, 0, 0, 'N', current_date, current_date, null);
insert into spring_books 
values(1020, 107, '정책의 배신', '윤희숙', '21세기북스', '1020.jpg', '최저임그, 주 52시간제, 비정규직, 국민연금, 정년연금, 신산업정책의 위협', 17000, 15300, 100, 0, 0, 'N', current_date, current_date, null);
insert into spring_books 
values(1021, 107, '지리의 힘', '팀 마샬', '사이', '1021.jpg', '사드, 남중국해, IS, 영유권분쟁, 유럽의 분열, 모든 것은 지리에서 시작된다.', 17000, 15300, 100, 0, 0, 'N', current_date, current_date, null);

insert into spring_books 
values(1022, 108, '악목을 먹고 자란 소년', '조용', '위즈덤하우스', '1022.jpg', '사이코지만 괜찮아 속 동화들을 책으로 만나다!', 12000, 10800, 100, 0, 0, 'N', current_date, current_date, null);
insert into spring_books 
values(1023, 108, '아몬드', '손원평', '창비', '1023.jpg', '감정을 느끼지 못하는 소년의 특별한 성장 이야기.', 12000, 10800, 100, 0, 0, 'N', current_date, current_date, null);
insert into spring_books 
values(1024, 108, '사이코지만 괜찮아 1', '조용', '호우야', '1024.jpg', '믿보배들의 활약, 기존 드라마엔 없는 잔혹동화라는 장치', 16800, 15120, 100, 0, 0, 'N', current_date, current_date, null);

insert into spring_books 
values(1025, 109, '전한길 한국사 합격생 필기노트', '전한길', '전한길한국사', '1025.jpg', '2021 전한길 한국사 합격생 필기노트는 공무원 9급 대비을 위한 수험서다.', 145000, 13050, 100, 0, 0, 'N', current_date, current_date, null);
insert into spring_books 
values(1026, 109, '한국사능력검정시험 심화', '최태성', '이투스북', '1026.jpg', '오늘 영구와 검증으로 한구사에 기초가 전혀 없는 사람도 합격할 수 있다.', 14000, 13000, 100, 0, 0, 'N', current_date, current_date, null);
insert into spring_books 
values(1027, 109, '에듀윌 한국사능력검정시험 2주 끝장', '에듀윌한국사연구소', '에듀윌', '1027.jpg', '진짜 2주 합격을 증명한 에듀윌 2주 끝장장의 업그레이드 개정판 출간', 21000, 18900, 100, 0, 0, 'N', current_date, current_date, null);

insert into spring_books 
values(1028, 110, '매우 예민한 사람들을 위한 책', '전홍진', '글항아리', '1028.jpg', '우울증 연구와 임상경험을 통한 매우 예민한 사람들을 위한 조언', 18000, 16200, 100, 0, 0, 'N', current_date, current_date, null);
insert into spring_books 
values(1029, 110, '사피엔스', '유발 하라리', '김영사', '1029.jpg', '변방의 유인원 호마 사피엔스는 어떻게 세상의 지배자가 되었는가?', 22000, 19800, 100, 0, 0, 'N', current_date, current_date, null);
insert into spring_books 
values(1030, 110, '내가 원하는 것을 나도 모들 때', '전승환', '다산초당', '1030.jpg', '이해인 수녀, 정재찬 교수 추천! 150만 독자가 사랑한 책의 저자 전승환의 인문 에세이', 16000, 14400, 100, 0, 0, 'N', current_date, current_date, null);

insert into spring_books 
values(1031, 111, '노화의 종말', '데이비드 A. 싱클레어', '부키', '1031.jpg', '하버드 의대 수명 혁명 프로젝트. 하버드 의대 25년 장수 연구의 결정판', 22000, 19800, 100, 0, 0, 'N', current_date, current_date, null);
insert into spring_books 
values(1032, 111, '코스모스', '칼 세이건', '사이언스북스', '1032.jpg', '전 세계 60개 국에 방송되어 6억 시청자를 감동시킨 텔레비전 교양 프로그램을 책으로 만난다.', 18500, 16500, 100, 0, 0, 'N', current_date, current_date, null);
insert into spring_books 
values(1033, 111, '다시, 수학이 필요한 순간', '김민형', '인플루엔셜', '1033.jpg', '수학책에 쏟아진 유례없는 환호! 8만 베스트셀러 수학이 필요한 순간의 김민형 교수가 돌아왔다.', 18800, 16920, 100, 0, 0, 'N', current_date, current_date, null);

insert into spring_books 
values(1034, 112, 'Do it! 점프 투 파이썬', '박응용', '이지스퍼블리싱', '1034.jpg', '파이썬 4년 연속 베스트셀러 1위! 『Do it! 점프 투 파이썬』 전면 개정판 출시!', 18800, 16920, 100, 0, 0, 'N', current_date, current_date, null);
insert into spring_books 
values(1035, 112, '혼자 공부하는 파이썬', '칼 세이건', '사이언스북스', '1035.jpg', '혼자 해도 충분하다! 1:1 과외하듯 배우는 파이썬 프로그래밍 자습서(파이썬 최신 버전 반영)', 18000, 16920, 100, 0, 0, 'N', current_date, current_date, null);
insert into spring_books 
values(1036, 112, '파이썬 알고리즘 인터뷰', '박상길', '책만', '1036.jpg', '코딩 테스트와 인터뷰를 준비하는 취준생과 이직자를 위한 알고리즘 문제 풀이 완벽 마스터', 18000, 16200, 100, 0, 0, 'N', current_date, current_date, null);

-- 주문상태 등록
insert into spring_order_state_categories values(100000, '주문완료');
insert into spring_order_state_categories values(100001, '주문취소');
insert into spring_order_state_categories values(100002, '반품');
insert into spring_order_state_categories values(100003, '상품준비중');
insert into spring_order_state_categories values(100004, '배송대기중');
insert into spring_order_state_categories values(100005, '배송중');
insert into spring_order_state_categories values(100006, '배송완료');
insert into spring_order_state_categories values(100007, '배송완료');

commit;