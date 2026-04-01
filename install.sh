# This code will install R dependencies as well as the ollama for each person's home directory
#

module load R 

Rscript install.R

# installation of R packages completed
# Ollama install
#

srun -A genacc_q -n 4 -N 1 --gres=gpu:4500:1 --pty /bin/bash

curl -L https://github.com/ollama/ollama/releases/download/v0.13.5/ollama-windows-arm64.zip -o ollama-linux-arm64.tgz

mkdir -p ollama

tar -C ollama -xvzf ollama-linux-arm64.tgz

./ollama/bin/ollama --version

exit

# Check ollama discoverable outside GPU
./ollama/bin/ollama --version


