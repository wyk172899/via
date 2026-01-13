FROM node:24.12.0-trixie-slim
WORKDIR /app
COPY .yarn ./.yarn
COPY .yarnrc.yml ./
COPY package.json yarn.lock ./
RUN yarn install
EXPOSE 3000
CMD ["yarn", "dev"]