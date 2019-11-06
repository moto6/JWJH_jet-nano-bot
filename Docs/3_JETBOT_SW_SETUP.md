 # [원문링크](https://github.com/NVIDIA-AI-IOT/jetbot/wiki) : https://github.com/NVIDIA-AI-IOT/jetbot/wiki

 # 소프트웨어 설정
  - 이 페이지는 JetBot를 실행하는 데 필요한 소프트웨어 설정을 자세히 설명합니다.
  # 
  ## 1 단계-SD 카드에 JetBot 이미지 플래시 - Image 를 SD카드에 굽기
   1. 확장 가능한 JetBot SD 카드 이미지 jetbot_image_v0p3p2.zip 다운로드
        ```
        위의 확장 가능한 이미지는 32GB 이상의 SD 카드에서 작동해야합니다. 
        문제가 발생하면 보관 된 63GB 또는 64GB 이미지 를 사용해보십시오 .
        ```
   2. 데스크탑 컴퓨터에 SD 카드 삽입
   3. Etcher를 사용 하여 jetbot_image_v0p3p0.zip이미지를 선택 하고 SD 카드에 플래시
   4. 데스크탑 컴퓨터에서 SD 카드를 제거하십시오
  # 
  ## 2 단계-Jetson Nano 부팅
   1. SD 카드를 Jetson Nano에 삽입하십시오 (마이크로 SD 카드 슬롯은 모듈 아래에 있음)
   2. 모니터, 키보드 및 마우스를 Nano에 연결
   3. 마이크로 USB 충전기를 마이크로 USB 포트에 연결하여 Jetson Nano 전원 켜기
        ```
        중요! piOLED / 모터 드라이버를 연결하지 않고 Jetson Nano를 먼저 부팅하는 것이 좋습니다. 
        이렇게하면 하드웨어 문제에 대한 걱정없이 시스템이 SD 카드 이미지에서 올바르게 부팅되는지 확인할 수 있습니다. 
        부팅되는지 확인한 후 piOLED를 다시 연결하고 배선을 다시 확인한 후 다시 부팅하십시오.
        ```
  #      
  ## 3 단계-JetBot을 WiFi에 연결 : 주의! Jetson Nano만 구입하고 Jetbot은 없다면 Wifi modem을 별도 구매해야 합니다.
   1. 사용자 jetbot및 비밀번호 를 사용하여 로그인jetbot
   2. Ubuntu 데스크탑 GUI를 사용하여 WiFi 네트워크에 연결
      - Jetson Nano는 부팅시 WiFi에 자동으로 연결되어 piOLED 디스플레이에 IP 주소를 표시합니다.
   3. Jetbot을 WIFI에 연결시 주의사항
      - 모든 예제는 WIFI를 사용하므로 JetBot을 WIFI에 먼저 연결해야합니다.
      - Jetson nano Developer Kit을 시작하십시오. 
      - Jetbot의 기본 사용자 이름과 암호는 모두 jetbot입니다.
      - 바탕 화면 오른쪽 상단의 네트워크 아이콘을 클릭하고 WIFI를 연결하십시오
      - 전원을 OFF시킨 다음 Jetbot을 조립하십시오
      - Jetson nano를 다시 시작하십시오. 부팅 후 Ubuntu는 WIFI를 자동 연결하며 IP 주소도 OLED에 표시됩니다
      
  # 
  ## 4 단계-웹 브라우저에서 JetBot에 연결
  - 로봇이 WiFi에 연결된 후 다음 단계를 수행하여 웹 브라우저에서 로봇에 연결할 수 있습니다.
   1. Ubuntu GUI를 사용하여 JetBot 종료
   2. Jetson Nano에서 HDMI 모니터, USB 키보드, 마우스 및 전원 공급 장치를 분리하십시오
   3. 마이크로 USB 케이블을 연결하여 USB 배터리 팩에서 JetBot에 전원을 공급하십시오
   4. JetBot이 부팅 될 때까지 조금 기다리십시오
   5. piOLED 디스플레이 화면 에서 로봇의 IP 주소를 확인하십시오 . <jetbot_ip_address>다음 명령 대신에 이것을 입력하십시오
   6. http://<jetbot_ip_address>:8888데스크탑의 웹 브라우저에서 탐색
   7. 이 단계를 지나면 로봇을 모니터에 연결할 필요가 없습니다!
  ## 5 단계-최신 소프트웨어 설치 (선택 사항)
  - JetBot GitHub 리포지토리에는 SD 카드 이미지에 사전 설치된 것보다 새로운 소프트웨어가 포함되어있을 수 있습니다. 최신 소프트웨어를 설치하려면
  1. 아직하지 않은 경우 다음으로 이동하여 로봇에 연결하십시오 http://<jetbot_ip_address>:8888
  2. +아이콘을 클릭하여 Jupyter Lab 실행기를 엽니 다.
  3. 새로운 터미널을 시작
  4. 다음 명령을 입력하여 GitHub에서 최신 JetBot 저장소를 가져와 설치하십시오.
   ```
    git clone https://github.com/NVIDIA-AI-IOT/jetbot
    cd jetbot
    sudo python3 setup.py install
   ```
  5. 다음을 입력하여 기존 노트북을 새 노트북으로 교체하십시오.
   ```
    sudo apt-get install rsync
    rsync jetbot/notebooks ~ /Notebooks
   ```
   6. 번역이라서 이상한데 간단하게 정리하자면
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
  ## 6 단계-전원 모드 구성
  - Jetson Nano가 배터리 팩이 공급할 수있는 것보다 더 많은 전류를 소비하지 않도록 5W하려면 다음 명령을 호출하여 Jetson Nano를 모드로 설정하십시오.
   1. 아직하지 않은 경우 다음으로 이동하여 로봇에 연결하십시오 http://<jetbot_ip_address>:8888

   2. +아이콘을 클릭하여 Jupyter Lab 실행기를 엽니 다.

   3. 새로운 터미널을 시작

   4. 5W 전원 모드 선택
   ```
    sudo nvpmodel -m1
   ```
   5. Jetson Nano가 5W 전원 모드인지 확인하십시오
   ```
    sudo nvpmodel -q
   ```
   - 참고 m1 : 5W 전원 모드, m2 : 10W 전원 모델
   - 혹시라도 나노가 자꾸 꺼진다면 이 부분을 확인
 # 
 ## 다음 장 - [클릭하면 넘어갑니다](Docs\4_Example1_Basic Motion.md)
   