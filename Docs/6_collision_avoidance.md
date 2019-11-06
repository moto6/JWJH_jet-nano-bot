
  ## 9. 충돌 방지
  - 이 예에서는 JetBot을 안전하게 유지하는 데 사용될 이미지 분류 데이터 세트를 수집합니다! JetBot에 두 가지 시나리오를 무료로 감지하고 차단하도록 지시합니다. 이 AI 분류기를 사용하여 JetBot이 위험한 지역으로 진입하는 것을 방지합니다.
    - 1 단계. JetBot에서 데이터 수집 
      - https : // <jetbot_ip_address> : 8888 로 이동하여 ~ / Notebooks / collision_avoidance /로 이동하여 JetBot에 액세스 하십시오.
      - data_collection.ipynb 파일 및 다음 노트북 열기
      - 이 모델은 광각 부착 기능이있는 IMX219-160 카메라를 사용하여 제한된 데이터 세트에 대해 학습했습니다.
      - 데이터를 최대한 많이 수집하려면 JetBot을 다른 공간에 두어야합니다.
      - JetBot AI 키트 매뉴얼 13.jpg
    - 2 단계. 신경망 훈련
      - https : // <jetbot_ip_address> : 8888 로 이동하여 ~ / Notebooks / collision_avoidance /로 이동하여 JetBot에 액세스 하십시오.
      - tain_model.ipynb 노트북을 열고 따르십시오
    - 3 단계. JetBot에서 라이브 데모 실행
      - https : // <jetbot_ip_address> : 8888 로 이동하여 ~ / Notebooks / collision_avoidance /로 이동하여 JetBot에 액세스 하십시오.
      - live_demo.ipynb 노트북 열기 및 팔로우