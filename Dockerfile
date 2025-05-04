FROM julia

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    build-essential \
    ca-certificates \
    git \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY Project.toml ./
RUN julia --project=. -e 'using Pkg; Pkg.add("Genie"); Pkg.status(); Pkg.precompile()'

COPY . .

EXPOSE 8000

CMD ["julia", "--project=.", "src/app.jl"]