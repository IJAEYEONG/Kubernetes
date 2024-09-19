# Node.js 이미지를 기반으로 사용
FROM node:14

# 작업 디렉터리 설정
WORKDIR /app

# 현재 디렉터리의 모든 파일을 컨테이너의 /app 디렉터리로 복사
COPY . .

# 패키지 설치
RUN npm install

# 애플리케이션이 실행될 포트
EXPOSE 3000

# 애플리케이션을 시작하는 명령어
CMD ["node", "app.js"]
