FROM node:22-alpine

WORKDIR /app

# install pnpm
RUN corepack enable

# copy dependency files
COPY package.json pnpm-lock.yaml ./

# install dependencies
RUN pnpm install --frozen-lockfile

# copy project files
COPY . .

EXPOSE 1000

CMD ["node", "index.js"]