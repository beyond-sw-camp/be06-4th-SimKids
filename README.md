

---
## 1. 팀원 구성

| **강태성** | **유송연** | **오규림** | **송나경** | **김은선** |
|:---------:|:---------:|:---------:|:---------:|:---------:|
| <img src="https://avatars.githubusercontent.com/u/69503955?v=4" width="100" height="100"/> | <img src="https://avatars.githubusercontent.com/u/86238720?v=4" width="100" height="100"/> | <img src="https://avatars.githubusercontent.com/u/77095330?v=4" width="100" height="100"/> | <img src="https://avatars.githubusercontent.com/u/101664417?v=4" width="100" height="100"/> | <img src="https://avatars.githubusercontent.com/u/152248322?v=4" width="100" height="100"/> |
| [@kangkings](https://github.com/kangkings) | [@syy0O](https://github.com/syy0O) | [@ohgyulim](https://github.com/ohgyulim) | [@NakyungSong](https://github.com/NakyungSong) | [@kkkeess](https://github.com/kkkeess) |

<br><br>

---
## 2. 기술 스택
<h4>CI/CD</h4>
<div class="stack-container">
    <img src="https://img.shields.io/badge/jenkins-CF4045?style=for-the-badge&logo=jenkins&logoColor=white">
    <img src="https://img.shields.io/badge/docker-002260?style=for-the-badge&logo=docker&logoColor=white">
    <img src="https://img.shields.io/badge/kubernetes-%231572B6?style=for-the-badge&logo=kubernetes&logoColor=white">

<h4> Backend</h4>
<div class="stack-container">
    <img src="https://img.shields.io/badge/java-F7DF1E?style=for-the-badge&logo=java&logoColor=white">
    <img src="https://img.shields.io/badge/springboot-6DB33F?style=for-the-badge&logo=springboot&logoColor=white">	
</div>

<h4>Frontend</h4>
<div class="stack-container">
    <img src="https://img.shields.io/badge/html5-%23E34F26.svg?style=for-the-badge&logo=html5&logoColor=white">
    <img src="https://img.shields.io/badge/css3-%231572B6.svg?style=for-the-badge&logo=css3&logoColor=white">
    <img src="https://img.shields.io/badge/javascript-%23323330.svg?style=for-the-badge&logo=javascript&logoColor=%23F7DF1E">
    <img src="https://img.shields.io/badge/vuejs-%2335495e.svg?style=for-the-badge&logo=vuedotjs&logoColor=%234FC08D">
</div>

<h4>Server</h4>
 <img src="https://img.shields.io/badge/nginx-%23009639.svg?style=for-the-badge&logo=nginx&logoColor=white">


<h4>VCS</h4>
<img src="https://img.shields.io/badge/git-F05032?style=for-the-badge&logo=git&logoColor=white"/>

<h4>협업 툴</h4>
<img src="https://img.shields.io/badge/notion-000000?style=for-the-badge&logo=notion&logoColor=white"/>
<img src="https://img.shields.io/badge/googledocs-4285F4?style=for-the-badge&logo=googledocs&logoColor=white"/>
<img src="https://img.shields.io/badge/github-181717?style=for-the-badge&logo=github&logoColor=white"/>

<h4> OS </h4>
<img src="https://img.shields.io/badge/ubuntu-E95420?style=for-the-badge&logo=ubuntu&logoColor=white">
</div>

<br><br>

---

## 3. 프로젝트 목표
### 3.1 애플리케이션을 Docker 이미지로 변환하여 일관된 실행환경 제공
애플리케이션에 안정적이고 일관된 실행 환경을 제공하기 위해, JAR 파일 형태 대신 운영에 필요한 모든 종속성을 포함하고 격리된 환경에서 실행되는 Docker 이미지로 변환하는 것을 목표로 합니다. <br>
이를 통해 애플리케이션의 실행 환경을 표준화하고, 환경 간의 차이로 인한 문제를 최소화하여 보다 안정적인 운영을 지원할 수 있습니다.

### 3.2 컨테이너 오케스트레이션툴을 활용한 무중단 배포 (K8S)
배포 시, 컨테이너 오케스트레이션 툴을 사용하여 중단 없이 기존 시스템의 가용성을 유지하면서 새로운 버전의 애플리케이션을 원활하게 배포하는 것을 목표로 합니다.<br>
이를 통해 새로운 버전으로의 운영환경 전환 시 사용자에게 중단 없이 최신 기능을 제공하고, 배포 과정에서 혹여나 발생할지도 모르는 각종 리스크를 최소화할 수 있습니다.

### 3.3 Jenkins 파이프라인 구축으로 CI/CD 자동화
젠킨스를 사용한 CI/CD 파이프라인을 구축하여 원격 저장소에 저장된 코드를 Kubernetes 프로덕션 환경에 배포함으로써 개발-배포 프로세스를 자동화하고 빠른 배포 주기를 유지하는 것을 목표로 합니다. <br>
이를 통해 새로운 코드가 지속적으로 통합되어 시스템을 항상 최신 상태로 유지할 수 있으며, 신속하게 버그를 수정하고 기능을 개선할 수 있습니다.



<br>

---
## 4. 운영 환경

### 4.1 **Kubernetes 운영 환경**

**Kubernetes Cluster**
<br>
> 같은 네트워크 대역에 연결된 서로 다른 컴퓨터 4대의 가상머신을 K8S 마스터에 연결하여 하나의  Cluster 환경으로 구성

- 1대의 Master Node (Ubuntu 22.04 | 4 Core CPU, 12GB Mem)
- 4대의 Worker Node (Ubuntu 22.04 | 4 Core CPU, 8GB Mem)

Kubernetes의 Ingress, Rolling Update, Probe 기능을 활용해 운영 중단 없이 애플리케이션을 점진적으로 업데이트할 수 있도록 구성했습니다. 

---
## 5. 시스템 아키텍쳐
**배포 전**
![배포 전](https://github.com/user-attachments/assets/87021bb9-f606-4276-855d-d7c427dfe076)
**배포 중**
![배포 중](https://github.com/user-attachments/assets/c39efb4f-fbbb-464e-94b8-b3d2a79b8e1c)
**배포 후**
![배포 후](https://github.com/user-attachments/assets/b60ca54e-5e60-49cd-85c0-1546d2b18a1b)

### 5.1 배포 환경

- Canary Deployment
- 70:30 → 50:50 → 0:100의 비율로 점진적인 트래픽 전환
- 전체 트래픽 전환 완료시, 기존 배포버전 제거

### 5.2 상세 구성

**Backend**
- backend-ingress
- backend-service
- backend-deployment

**Frontend**
- frontend-ingress
- frontend-service
- backend-deployment
 
각 Deployment는 2개의파드를 Rolling Update방식으로 생성하며, Pod 생성 시 Probe를 설정하여 Down Time을 최소화하는 방식으로 구성하였습니다.




<br><br>

---
## 6. Canary 무중단 배포 방식을 선택한 이유

주문 관리 시스템은 비즈니스와 직접적으로 연관이 있는 서비스이기 때문에 그 어떤 요소보다도 안정성을 확보하는 것이 가장 중요합니다.
이러한 시스템의 성격 상 다운 타임이 발생하거나, 전체 시스템이 한번에 영향을 받는다면 치명적일 수 있기 때문에 배포를 진행할 때에도 혹시나 발생할지 모르는 피해를 최소화 해야할 필요가 있었습니다.

따라서 배포는 기본적으로 다운타임이 없도록 무중단 형태로 진행되어야 했고, 한 번에 새로운 버전으로 배포가 완료되는 것이 아니라 지속적인 테스트를 거쳐 점진적으로 안정성을 확보한 상태에서 진행되어야 했습니다.

Canary 배포는 새로운 버전의 애플리케이션을 준비하고 테스트를 거쳐 점진적으로 트래픽을 옮겨가며 배포하는데, 배포과정에서 문제가 생기더라도 일부만 롤백을 진행하면 되고 이로 인한 피해가 일부에서 그치는 등 위에서 언급한 우리 시스템의 요구사항을 전부 충족시켜 줄 수 있었을 뿐만 아니라 AB테스트도 용이하다는 추가적인 장점도 있었기 때문에 배포방식으로 선택하였습니다.

---
## 7. 배포 테스트

### 7-1 배포 시나리오
> 코드 작성 → 운영환경 배포까지 전체 시나리오

1. 개발자가 작성한 코드가 검토를 거쳐 각각 backend-dev, frontend-dev 브랜치에 merge

2. github에서 jenkins서버로 웹훅 전달.

3. merge가 감지된 브랜치에 맞는 jenkins 파이프라인이 동작
<br> 3-1. 파이프라인이 연결된 브랜치의 파일들 clone
<br> 3-2. frontend, backend 각각 npm, gradle을 이용해 build
<br> 3-3. 경로에 위치한 Dockerfile에 따라 Dockerize
<br> 3-4. ssh로 K8S master에 접속하여 배포 스크립트 실행

### 7-2 배포 테스트

**backend**

**frontend**
