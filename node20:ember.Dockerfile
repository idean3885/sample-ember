FROM node:20-alpine

WORKDIR /usr/local/app

COPY . .

RUN npm ci

# 디폴트 포트를 명시하기 위해 추가함.(포트 변경하지 않는 경우 필요없는 옵션임)
EXPOSE 4200

ENTRYPOINT npm run start
