FROM julia


#setup the environment
RUN apt-get update && \ 
apt-get install -y --no-install-recommends \
build-essential \
ca-certificates \
git \
&& rm -rf /var/lib/apt/lists/*
WORKDIR /app

#Takes care of the Julia dependencies
COPY Project.toml Manifest.toml* ./
RUN if [ -f Project.toml ]; then \
    julia --project=. -e 'using Pkg; Pkg.instantiate(); Pkg.precompile()'; \
    fi


COPY . .

#For the Webserver
EXPOSE 8000

ENV CONTEXT=development

#Runs the main julia file
CMD ["julia", "--project=.", "src/main.jl"]