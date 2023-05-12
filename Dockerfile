FROM node:alpine

workdir /app

entrypoint ["/usr/bin/env"]

CMD ["tail","-f","/dev/null"]
