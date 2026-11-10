
FROM debian:bookworm-slim

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    ca-certificates curl libstdc++6 libgcc-s1 && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app

RUN curl -fL --retry 3 \
    https://github.com/DiscordTrader/BotifyTrades/releases/download/v21.1.4/BotifyTrades-Linux \
    -o BotifyTrades-Linux && \
    chmod +x BotifyTrades-Linux

CMD ["./BotifyTrades-Linux"]
