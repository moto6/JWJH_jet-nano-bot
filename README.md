# Jetbot & jetson-nano
 - guidence  jetbot-nano setup repo
 - 원문출처 : JetBot AI Kit Wiki [Link](https://www.waveshare.com/wiki/JetBot_AI_Kit)
 - 아래 두가지 것들에 대한 문서입니다
 - ![](./img/jn.jpg)
 - ![](/img/jb.jpg).
 ### 목차
   1. README & 시작하기전에 : [README](\README.md)(이 페이지) 
   2. [젯봇 하드웨어 구성](/Docs/2_JETBOT_HW_SETUP.md)
   3. [젯봇 소프트웨어 구성](/Docs/3_JETBOT_SW_SETUP.md)
   4. [예제 1번 - 기본동작 : Basic Motion](/notebooks_deploy/basic_motion/BM_1_basic_motion.ipynb)
   5. [예제 2번 - 원격조종 : teleoperation](/notebooks_deploy/teleoperation/TOP_teleoperation.ipynb)
   6. 예제 3번 - 충돌회피
     - 6-1 [예제 3번 - 충돌회피 - 데이터 수집 : collision_avoidance](/notebooks_deploy/collision_avoidance/CA_1_data_collection.ipynb)
     - 6-2 [예제 3번 - 충돌회피 - 모델 학습 : collision_avoidance](/notebooks_deploy/collision_avoidance/CA_2_train_model.ipynb)
     - 6-3 [예제 3번 - 충돌회피 - 라이브 데모 : collision_avoidance](/notebooks_deploy/collision_avoidance/CA_3_live_demo.ipynb)
   7. [예제 4번 - 객체추적 : object_following](Docs/7_object_following.md)
   8. [예제 5번 - 라인따라가기 : road_following](Docs/8_road_following.md)
   9. [도움말 - 원격에서 주피터노트북으로 접속](Docs)
   10. [도움말 - ROS Melodic 설치하기]()
   11. [도움말 - 참고 사이트]()
 # 
 ## 프로젝트를 시작하기 전에
 -  Jetson Nano을 구매해서 실제로 동작시키기 위해서는 아래의 몇가지 추가적인 물품 구매가 필요합니다
    - (필수) MicroSD카드 (64기가 이상 추천) + SD카드 리더기
    - (필수) 5V 4A 어댑터 : [구매링크 - 명호전자 5V4A](https://smartstore.naver.com/mhtech/products/4717183893?NaPm=ct%3Dk2oc94jk%7Cci%3Dc77bde10634bb8be81395c3976830508b9c9331c%7Ctr%3Dsls%7Csn%3D1059532%7Chk%3Dbf83484570075152a0e65ebfa4ab2489ea497471) - 이해관계 없습니다. 
    - (옵션) Wifi 모듈 : 네.. 기본 wifi모듈은 없습니다. 모뎀을 따로 구매해야 합니다.. 모뎀을 따로 구매하면 약 4만원이지만 약 12만원정도 하는 Jetbot 키트를 구매하시면 Wifi 모듈이 동봉되어 있습니다 (Wifi모듈 : Intel Dual Band Wireless-AC 8265)
         - Wifi 모뎀 구매처 [링크-네이버 최저가 검색](https://search.shopping.naver.com/search/all.nhn?query=Intel+Dual+Band+Wireless-AC+8265&frm=NVSCPRO)
  #
  ## 셋업하는 방법 두가지
   1. JETPACK4.X 버전 설치 후 SW 패키지설치 -> 단점 : 비교적 시간이 더 걸림(2~3H정도), 장점 : 항상 최신버전의 SW사용 가능 
   2. JETBOT ISO파일 다운받아 굽기 -> 시간이 짧으나 최신버전 SW사용이 힘듬... [젯봇위키의 ISO 위치 Link](https://github.com/NVIDIA-AI-IOT/jetbot/wiki/software-setup#step-1---flash-jetbot-image-onto-sd-card)  /  [바로 다운로드:구글드라이브](https://drive.google.com/open?id=1GF2D814hkViwluZ5SgNKW56cQu_5Ekt5)
   
  # 
  ## 원격에서 주피터노트북으로 접속
   #### [이 링크를 클릭하여 참고해 주세요](https://github.com/NVIDIA-AI-IOT/jetbot/wiki/software-setup#step-5---install-latest-software-optional)
   - http : // <jetbot_ip_address> : 8888 로 이동
   - "~/Notebooks/basic_motion/" 경로로 이동하여 jetbot에 액세스 하십시오.(아래 명령어 사용)
      ```
      cd ~/Notebooks/basic_motion/ 
      ```
   - basic_motion.ipynb 파일을 열고 노트북을 팔로우하십시오
   - 【참고】 아이콘 ▶을 클릭하여 코드를 실행하거나 실행-> 셀 선택을 선택할 수 있습니다. JetBot에 충분한 공간이 있는지 확인하십시오.
   - 설치
     ```
     git clone https://github.com/NVIDIA-AI-IOT/jetbot
     cd jetbot
     sudo python3 setup.py install
     sudo apt-get install rsync
     rsync jetbot/notebooks ~/Notebooks
     ```
  # 
  ## ROS 
   - Melodic 설치만 가능합니다. 키네틱은 공식적으로 지원되지 않습니다
   - 2019-11-07 기준 : install-jet-nano-ros-melodic.sh <<- 파일을 만들긴 했는데 자꾸 에러가 떠서 해결중입니다.. (멋지게 한줄설치 할수 있도록 수정중입니다)
     - Jetson nano 에 ROS melodic 설치하기 Setup installatio : ROS-Melodic-Jetson-Nano.sh <<--당분간은 사용 중지 부탁드립니다.. 
   - 로스 멜로딕 설치는 ROS 공식 Wiki 사이트 : http://wiki.ros.org/melodic/Installation/Ubuntu
   - 젯봇에 로스를 설치한 어느 능력자분의 깃허브 : dusty-nv[링크](https://github.com/dusty-nv/jetbot_ros?nvid=nv-int-86795)
   - Jetson nano & ROS 관련 링크
     - https://github.com/dusty-nv/jetbot_ros?nvid=nv-int-86795
     - https://www.stereolabs.com/blog/ros-and-nvidia-jetson-nano/
  # 
  ## 참고 사이트
  0. 엔비디아 공식 젯봇위키 https://github.com/NVIDIA-AI-IOT/jetbot
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
  - 엔비디아 공식 임베디드 개발자 사이트 [링크](https://developer.nvidia.com/embedded-computing)
    - https://developer.nvidia.com/embedded-computing
  - 젯봇 사이트 [링크](https://developer.nvidia.com/embedded/community/jetson-projects)
    - https://developer.nvidia.com/embedded/community/jetson-projects
  - 우리의 Dusty-nv의 jetson-inference [링크](https://github.com/dusty-nv/jetson-inference)
    - https://github.com/dusty-nv/jetson-inference
  - ROS기반의 딥러닝 [링크](https://github.com/dusty-nv/ros_deep_learning)
    - https://github.com/dusty-nv/ros_deep_learning
