# Jetbot-nano-setup
 - guidence  jetbot-nano setup repo
 - 원문출처 : JetBot AI Kit Wiki [Link](https://www.waveshare.com/wiki/JetBot_AI_Kit)
 - 목차
   1. ㅇㄹ
   2. ㅇㄹ0
   3. 
   4. 
   5. 
   6. 
   7. 
   8. 
   9. ㄴㅇㄹ

  #
  ## 1. Jetbot Kit 조립하기
   - JetBot AI Kit 조립 메뉴얼 [Link](https://www.waveshare.com/wiki/JetBot_AI_Kit_Assemble_Manual) , [Mirror](/meterials/JetBot AI Kit Assemble Manual - Waveshare Wiki.pdf)
  #
  ## 2. Jetbot을 위한 Image 를 SD카드에 굽기
   - [링크 참조]()
  #
  ## 3. Jetbot을 WIFI에 연결
   - 모든 예제는 WIFI를 사용하므로 JetBot을 WIFI에 먼저 연결해야합니다.
   - Jetson nano Developer Kit을 시작하십시오. 
   - Jetbot의 기본 사용자 이름과 암호는 모두 jetbot입니다.
   - 바탕 화면 오른쪽 상단의 네트워크 아이콘을 클릭하고 WIFI를 연결하십시오
   - 전원을 OFF시킨 다음 Jetbot을 조립하십시오
   - Jetson nano를 다시 시작하십시오. 부팅 후 Ubuntu는 WIFI를 자동 연결하며 IP 주소도 OLED에 표시됩니다
  #
  ## 4. 웹을 통해 JetBot에 액세스
   - 네트워킹 연결 후에. 주변 장치 및 전원 어댑터를 제거 할 수 있습니다.
   - Jetbot의 전원 스위치를 켭니다
   - 부팅 후 OLED의 IP 주소를 OLED에 표시 할 수 있습니다
   - 데스크탑 웹 브라우저에서 아래 주소로 이동 하십시오.
      ```
      http://<jetbot_ip_address>:8888
      ```
     - 예시: Jetson Nano의 IP address 가 192.168.102.22인 경우
      ```
      http://192.168.102.22:8888
      ```
     - 주피터 노트북 특성상 크로미움/크롬 사용권장 
  #
  ## 5. 최신 소프트웨어 설치 (선택 사항)
   - JetBot GitHub 리포지토리에는 SD 카드 이미지에 사전 설치된 것보다 새로운 소프트웨어가 포함되어있을 수 있습니다. 최신 소프트웨어를 설치하려면
   - http : // <jetbot_ip_address> : 8888 로 이동하여 Jetbot에 액세스 하십시오.
   - 새 터미널을 시작하십시오. 기본 사용자 이름과 비밀번호는 모두 jetbot입니다
   - GitHub에서 최신 JetBot 리포지토리를 다운로드하여 설치하십시오. 여기에 제공된 리포지토리는 Waveshare에서 수정하여 배터리의 현재 전압 표시를 지원합니다. 원래 코드를 설치하려면 NVIDIA jetbot GitHub를 따르십시오.
   - 깃허브 주소 : https://github.com/waveshare/jetbot
   - 설치 명령어
      ```
      cd jetbot
      ```
      ```
      sudo python3 setup.py install
      ```
  #
  ## 6. 전원 모드 구성
   - Jetson Nano가 배터리 팩이 공급할 수있는 것보다 더 많은 전류를 소비하지 않도록하려면 다음 명령을 호출하여 Jetson Nano를 5W 모드로 설정하십시오.
   - 5W 전원 모드를 선택하려면 새 터미널을 시작하고 다음 명령을 입력해야합니다
      ```
      sudo nvpmodel -m1
      ```
   - 모드가 올바른지 확인
      ```
      sudo nvpmodel -q
      ```
   - 참고 m1 : 5W 전원 모드, m2 : 10W 전원 모델
   - 혹시라도 나노가 자꾸 꺼진다면 이 부분을 확인
  #
  ## 7. 원격에서 주피터노트북으로 접속
   - http : // <jetbot_ip_address> : 8888 로 이동
   - "~/Notebooks/basic_motion/" 경로로 이동하여 jetbot에 액세스 하십시오.(아래 명령어 사용)
      ```
      cd ~/Notebooks/basic_motion/ 
      ```
   - basic_motion.ipynb 파일을 열고 노트북을 팔로우하십시오
   - 【참고】 아이콘 ▶을 클릭하여 코드를 실행하거나 실행-> 셀 선택을 선택할 수 있습니다. JetBot에 충분한 공간이 있는지 확인하십시오.
  #
  ## 8. 무선조종(원격조종)
   - http : // <jetbot_ip_address> : 8888 로 이동하여 Jetbot에 액세스 하십시오.
   - teleoperation /으로 이동하여 JetBot에 액세스 하십시오.
   - teleoperation.ipynb 파일 및 다음 노트북 열기
   - USB 어댑터를 PC에 연결
   - https://html5gamepad.com으로 이동하여 Gamepad의 INDEX를 확인하십시오.
      ```
      JetBot AI 키트 매뉴얼 7.jpg
      색인을 수정하십시오. 게임 패드 실행 및 테스트
      JetBot AI 키트 매뉴얼 8.jpg
      필요한 경우 좌표축 값을 수정합니다. 여기서 좌표축 [0] 및 좌표축 [1]을 사용합니다.
      JetBot AI 키트 매뉴얼 9.jpg
      자세한 내용은 노트북을 참조하십시오
      ```
  #
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
  #
  ## 10. 객체 팔로우
  - 여기에서 coco 데이터 셋 을 사용합니다
    - https : // <jetbot_ip_address> : 8888 로 이동하여 ~ / Notebooks / object_following /으로 이동하여 JetBot에 액세스 하십시오.
  - 예제를 실행하기 전에 사전 훈련 된 ssd_mobilenet_v2_coco.engine 모델을 현재 디렉토리에 업로드해야 하며 마지막 장에서 사용 된 모델도 필요합니다.
  - live_demo.ipynb 노트북을 열고 팔로우하십시오
  - JetBot AI 키트 매뉴얼 23.jpg
  #
  ## 11. 라인 추적
  - 이 장에서는 로봇 자동 라인 추적을 실현하기 위해 데이터 수집, 링크 추적 및 자동 감지를 사용합니다.
    - 1 단계. JetBot으로 데이터 수집
      - https : // <jetbot_ip_address> : 8888 로 이동하여 ~ / Notebooks / road_following /으로 이동하여 JetBot에 액세스 하십시오.
      - data-collection.ipynb 파일 열기
        - JetBot AI 키트 매뉴얼 24.jpg : 코드를 실행하면 비디오가 재생됩니다.
        - JetBot AI 키트 매뉴얼 25.jpg : 카메라로 캡처 한 이미지에는 녹색 점과 파란색 선이 있습니다. 포인트와 라인은 로봇이 실행하는 예상 도로입니다
      - 아래 내용은 [# 3. 원격 조작], 인덱스 및 축 값 수정
      - 【참고】 여기서 사용되는 축 버튼은 아날로그 버튼이어야 합니다
        - JetBot AI 키트 매뉴얼 26.jpg : 캡처 버튼 값을 수정하십시오. (기본 설정을 유지할 수도 있습니다)
        - JetBot AI 키트 매뉴얼 27.jpg : 데이터 수집 JetBot을 선의 다른 위치로 설정하고 게임 패드를 사용하여 녹색 점을 검은 선으로 이동하십시오. 파란색 선은 Jetbot이 예상되는 방식입니다. 캡처 버튼을 눌러 사진을 캡처 할 수 있습니다. 당신은 가능한 한 빨리 사진을 수집해야 카운트는 캡처 한 사진의 양을 보여줍니다.
      - 【참고】 게임 패드가 불편한 경우 스티어링 및 스로틀 슬라이더를 드래그하여 녹색 점의 위치를 ​​설정할 수 있습니다.
    - 2 단계. 훈련 모델
      - https : // <jetbot_ip_address> : 8888 로 이동하여 
      ~/Notebooks/road_following/ 으로 이동하여 Jetbo에 액세스 하십시오.
      - train_model.ipynb 파일을 엽니다
      - 위의 데이터 수집을 사용하는 경우 다음에 파일 압축을 풀 필요가 없습니다.  
      - 외부 데이터를 사용하는 경우 road_following.zip 이름을 해당 파일 이름으로 수정하고 셀을 실행해야합니다.
        - JetBot AI 키트 매뉴얼 29.jpg
        - JetBot AI 키트 매뉴얼 30.jpg : 모델 다운로드
        - JetBot AI 키트 매뉴얼 31.jpg : 기차 모델, 그것은 best_steerin_mdel_xy.pth 파일을 생성합니다
    - 3 단계. 도로 추적
      - https : // <jetbot_ip_address> : 8888 로 이동하여 ~/Notebooks/road_following/ 으로 이동하여 Jetbot 에 액세스 하십시오.
      - live_demo.ipynb 파일을여십시오 : 라이브 비디오를위한 모델로드 및 카메라 열기.
      - 슬라이더를 드래그하여 매개 변수를 수정할 수 있습니다
        - JetBot AI 키트 매뉴얼 32.jpg : x, y는 예측값입니다. 속도는 jetbot의 VSL, 스티어링은 jetbot의 스티어링 속도
        - JetBot AI 키트 매뉴얼 33.jpg : 속도 게인을 변경하여 Jetbot 이동
        - 【참고】 속도 게인을 너무 높게 설정할 수 없습니다. 그렇지 않으면 JetBot가 빠르게 작동하여 레일에서 벗어날 수 있습니다. 또한 제트 봇의 움직임을 훨씬 부드럽게하기 위해 조향을 작게 설정할 수도 있습니다.
        - JetBot AI 키트 매뉴얼 34.jpg
  #
  ## 7. ROS 
   - 2019-09-03 기준 비어있음
   - (Jetson nano 에 ROS melodic 설치하기) Setup installatio : ROS-Melodic-Jetson-Nano 
  
  ## 참고 사이트
  1. jetsonhacks[LINK](https://www.jetsonhacks.com/) : 
     - 원 사이트 [Link](https://www.jetsonhacks.com/)
     - 젯슨 나노 튜토리얼 [Link](https://www.jetsonhacks.com/category/tutorial/)
  2. realvnc[Link](https://www.realvnc.com/en/connect/download/viewer/)동일 네트워크 상에서 모니터 출력
     - https://www.realvnc.com/en/connect/download/viewer/  
  3. 모형차 대회 자료 
     - https://github.com/mit-racecar
     - https://mit-racecar.github.io/
     - http://f1tenth.org/
  4. 이외 문제 해결시 참고자료 
     - https://stackoverflow.com/questions/8863917/importerror-no-module-named-pil
     - https://devtalk.nvidia.com/default/topic/1049302/jetson-nano/jetbot-pioled-access-/
     - https://learn.adafruit.com/adafruit-pioled-128x32-mini-oled-for-raspberry-pi/usage
  - 엔비디아의 Jetson 제품군 tensorflow 설치 사이트 [링크](https://docs.nvidia.com/deeplearning/frameworks/install-tf-jetson-platform/index.html)
    - https://docs.nvidia.com/deeplearning/frameworks/install-tf-jetson-platform/index.html
  - 젯봇에 로스를 설치할때 jetbot_ros[링크](https://github.com/dusty-nv/jetbot_ros?nvid=nv-int-86795)
    - https://github.com/dusty-nv/jetbot_ros?nvid=nv-int-86795
  - 젯봇 로스 링크 여기도 참고
    - https://www.stereolabs.com/blog/ros-and-nvidia-jetson-nano/
  - 엔비디아 공식 임베디드 개발자 사이트 [링크](https://developer.nvidia.com/embedded-computing)
    - https://developer.nvidia.com/embedded-computing
  - 젯봇 사이트 [링크](https://developer.nvidia.com/embedded/community/jetson-projects)
    - https://developer.nvidia.com/embedded/community/jetson-projects
  - 우리의 Dusty-nv의 jetson-inference [링크](https://github.com/dusty-nv/jetson-inference)
    - https://github.com/dusty-nv/jetson-inference
  - ROS기반의 딥러닝 [링크](https://github.com/dusty-nv/ros_deep_learning)
    - https://github.com/dusty-nv/ros_deep_learning
