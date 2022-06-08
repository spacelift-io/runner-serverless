FROM public.ecr.aws/spacelift/runner-terraform
USER root
WORKDIR /home/spacelift
RUN apk add --update --no-cache curl nodejs npm
RUN npm install -g serverless
RUN serverless --version
USER spacelift
