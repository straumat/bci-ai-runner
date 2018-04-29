# bci-ai-runner
Blockchain Inspector Artificial Intelligence runner.

To run an IA source, put your file in the src folder (src/hello.cc) and run : `sudo docker run -it -v /home/straumat/IdeaProjects/bci-ai-runner/src:/src -e SRC_FILE="hello.cc" straumat/bci-ai-runner:1.0`