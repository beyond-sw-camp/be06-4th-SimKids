

---
## 1. 팀원 구성

| **강태성** | **유송연** | **오규림** | **송나경** | **김은선** |
|:---------:|:---------:|:---------:|:---------:|:---------:|
| <img src="https://avatars.githubusercontent.com/u/69503955?v=4" width="100" height="100"/> | <img src="https://avatars.githubusercontent.com/u/86238720?v=4" width="100" height="100"/> | <img src="https://avatars.githubusercontent.com/u/77095330?v=4" width="100" height="100"/> | <img src="https://avatars.githubusercontent.com/u/101664417?v=4" width="100" height="100"/> | <img src="https://avatars.githubusercontent.com/u/152248322?v=4" width="100" height="100"/> |
| [@kangkings](https://github.com/kangkings) | [@syy0O](https://github.com/syy0O) | [@ohgyulim](https://github.com/ohgyulim) | [@NakyungSong](https://github.com/NakyungSong) | [@kkkeess](https://github.com/kkkeess) |

<br><br>

---
## 2. 기술 스택
<h4> Backend</h4>
<div class="stack-container">
    <img src="https://img.shields.io/badge/linux-FCC624?style=for-the-badge&logo=linux&logoColor=white">
    <img src="https://img.shields.io/badge/ubuntu-E95420?style=for-the-badge&logo=ubuntu&logoColor=white">
    <img src="https://img.shields.io/badge/java-F7DF1E?style=for-the-badge&logo=java&logoColor=white">
    <img src="https://img.shields.io/badge/springboot-6DB33F?style=for-the-badge&logo=springboot&logoColor=white">
    <img src="https://img.shields.io/badge/spring security-6DB33F?style=for-the-badge&logo=springsecurity&logoColor=white">	
</div>

<h4>Frontend</h4>
<div class="stack-container">
    <img src="https://img.shields.io/badge/html5-%23E34F26.svg?style=for-the-badge&logo=html5&logoColor=white">
    <img src="https://img.shields.io/badge/css3-%231572B6.svg?style=for-the-badge&logo=css3&logoColor=white">
    <img src="https://img.shields.io/badge/javascript-%23323330.svg?style=for-the-badge&logo=javascript&logoColor=%23F7DF1E">
    <img src="https://img.shields.io/badge/vuejs-%2335495e.svg?style=for-the-badge&logo=vuedotjs&logoColor=%234FC08D">
    <img src="https://img.shields.io/badge/nginx-%23009639.svg?style=for-the-badge&logo=nginx&logoColor=white">
    <img src="https://img.shields.io/badge/figma-F24E1E?style=for-the-badge&logo=figma&logoColor=white"/>
    <img src="https://img.shields.io/badge/amazons3-569A31?style=for-the-badge&logo=amazons3&logoColor=white"/>
    <img src="https://img.shields.io/badge/Router-CA4245?style=for-the-badge&logo=Router&logoColor=white"/>
</div>

<h4>Database</h4>
<div class="stack-container">
    <img src="https://img.shields.io/badge/mariadb-003545?style=for-the-badge&logo=mariadb&logoColor=white">
</div>

<h4>CI/CD</h4>
<div class="stack-container">
    <img src="https://img.shields.io/badge/jenkins-CF4045?style=for-the-badge&logo=jenkins&logoColor=white">
    <img src="https://img.shields.io/badge/docker-002260?style=for-the-badge&logo=docker&logoColor=white">
    <img src="https://img.shields.io/badge/k8s-%231572B6?style=for-the-badge&logo=k8s&logoColor=white">
</div>

<br><br>

---

## 3. 프로젝트 목표
<br><br>

---
## 4. 운영 환경
### 4.1 **[Jenkins] 배포를 위한 파이프라인 구축 환경**

CI/CD 도구인 Jenkins를 사용하여 소스 코드 전달부터 빌드 결과물 생성, 빌드 결과물 전송/실행까지의 파이프라인 구축 및 실행을 자동화했습니다.
Jenkins의 파이프라인 스크립트를 이용해 코드 푸시 시 자동으로 빌드와 테스트를 수행하도록했습니다. 또한, 빌드 성공 시 K8S에 접속하여 새로운 버전의 애플리케이션 배포를 자동화하도록 했습니다.

### 4.2 **[K8S] 배포 환경**

K8S Cluster를 구성하여 배포했으며, 클러스터는 1대의 Master Node와 4대의 Worker Node로 구성했습니다.
Kubernetes의 Ingress, Rolling Update, Probe 기능을 활용해 운영 중단 없이 애플리케이션을 점진적으로 업데이트할 수 있도록 구성했습니다. 

---
## 5. 시스템 아키텍쳐
개발자가 GitHub에 코드를 push하면, GitHub가 Jenkins에 웹훅을 보내 빌드 프로세스를 시작합니다.<br>
Jenkins는 Docker 이미지를 빌드하여 Docker Hub에 업로드하고, Kubernetes는 배포된 이미지를 받아 새로운 파드를 생성하여 백엔드와 프론트엔드 서비스를 배포합니다.

![시스템아키텍처_수정2](https://github.com/user-attachments/assets/b5c6ce37-b286-47fb-b2b9-e27dd3a10176)

### 5.1 배포 환경

 Kubernetes에 Ingress Controller Service를 이용한 카나리 배포 환경을 구축하였습니다. <br>
새로운 서비스가 생성될 때, 기존의 서비스와 업데이트된 서비스는 70:30 비율로 트래픽이 분산됩니다.

### 5.2 상세 구성

 프론트엔드와 백엔드 서비스는 두 개의 디플로이먼트를 가지고 있으며, 각각의 디플로이먼트는 Old버전과 New버전을 관리합니다. <br>
디플로이먼트는 두 개의 Pod를 Rolling Update방식으로 생성하며, Pod 생성 시 Probe를 설정하여 Down Time을 최소화하였습니다.


<br><br>

---
## 6. Canary 무중단 배포 방식을 선택한 이유
Canary 배포는 새로운 버전을 소수의 사용자에게 먼저 배포한 후, 시스템의 안정성을 모니터링하여 문제 발생 여부를 판단합니다.
<br>초기 배포 단계에서 문제가 없다면, 점진적으로 더 많은 사용자에게 배포를 확대해 나갑니다. 만약 문제가 발견되면 즉시 롤백하여 영향을 최소화할 수 있다는 장점이 있습니다.

주문 관리 시스템은 운영 시 안정성이 중요한 서비스입니다.
만약 고객의 주문 처리와 관련된 시스템에서 문제가 발생한다면 서비스에 대한 신뢰도가 크게 하락할 수 있기 때문에 리스크를 최소화하는 것이 최우선이라고 생각했습니다.
이러한 이유로, 배포 단계에서 문제가 발생하더라도 전체 시스템으로 피해가 확대되지 않기위해 Canary 배포 방식을 선택했습니다.

<br><br>

---
## 7. 배포 시나리오

