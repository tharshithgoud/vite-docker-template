Install node and vite on host if note present and then run the following commands:

1. git clone https://github.com/tharshithgoud/vite-docker-template

2. cd vite-template

3. rm -rf .git

4. npm create vite@latest
```
user@MacBook react-vite % npm create vite@latest
Need to install the following packages:
create-vite@5.2.3
Ok to proceed? (y) y
✔ Project name: … .
✔ Current directory is not empty. Please choose how to proceed: › Ignore files and continue
✔ Select a framework: › React
✔ Select a variant: › JavaScript

Scaffolding project in /Users/tharshith/Desktop/DBG/react-dbg...

Done. Now run:

  npm install
  npm run dev

npm notice 
npm notice New minor version of npm available! 10.5.0 -> 10.8.1
npm notice Changelog: https://github.com/npm/cli/releases/tag/v10.8.1
npm notice Run npm install -g npm@10.8.1 to update!
npm notice 
```

5. docker build -t react-vite-app .

6. docker run --rm -it -p 5173:5173 -v $(pwd):/app react-vite-app

Potentially usefull commands,

```
npm install

npm run dev -- --host
```
