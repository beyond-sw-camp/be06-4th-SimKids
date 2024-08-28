
<br><br>
---
## 🧑🏻‍💻 팀원 구성

| **강태성** | **유송연** | **오규림** | **송나경** | **김은선** |
|:---------:|:---------:|:---------:|:---------:|:---------:|
| <img src="https://avatars.githubusercontent.com/u/69503955?v=4" width="100" height="100"/> | <img src="https://avatars.githubusercontent.com/u/86238720?v=4" width="100" height="100"/> | <img src="https://avatars.githubusercontent.com/u/77095330?v=4" width="100" height="100"/> | <img src="https://avatars.githubusercontent.com/u/101664417?v=4" width="100" height="100"/> | <img src="https://avatars.githubusercontent.com/u/152248322?v=4" width="100" height="100"/> |
| [@kangkings](https://github.com/kangkings) | [@syy0O](https://github.com/syy0O) | [@ohgyulim](https://github.com/ohgyulim) | [@NakyungSong](https://github.com/NakyungSong) | [@kkkeess](https://github.com/kkkeess) |

<br><br>
---
## ⛓️ 기술 스택
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

## 프로젝트 기본 소개
<br><br>
---
## 프로젝트 목표
<br><br>
---
## 프로젝트 설계
<br><br>
---
## 🧩 운영 환경

### 시스템 아키텍쳐
![시스템아키텍처_수정2](https://github.com/user-attachments/assets/b5c6ce37-b286-47fb-b2b9-e27dd3a10176)




<br><br>
---
## 📨 Canary 무중단 배포 방식을 선택한 이유
Canary 배포는 새로운 버전을 소수의 사용자에게 먼저 배포한 후, 시스템의 안정성을 모니터링하여 문제 발생 여부를 판단합니다.
<br>초기 배포 단계에서 문제가 없다면, 점진적으로 더 많은 사용자에게 배포를 확대해 나갑니다. 만약 문제가 발견되면 즉시 롤백하여 영향을 최소화할 수 있다는 장점이 있습니다.

주문 관리 시스템은 운영 시 안정성이 중요한 서비스입니다.
만약 고객의 주문 처리와 관련된 시스템에서 문제가 발생한다면 서비스에 대한 신뢰도가 크게 하락할 수 있기 때문에 리스크를 최소화하는 것이 최우선이라고 생각했습니다.
이러한 이유로, 배포 단계에서 문제가 발생하더라도 전체 시스템으로 피해가 확대되지 않기위해 Canary 배포 방식을 선택했습니다.

