# bci-ai-runner
Blockchain Inspector Artificial Intelligence runner.

To run an IA source, put your file in the src folder (src/hello.cc) and run : `docker run -it -v /opt/workspace/bci-ai-runner/src:/src -e SRC_FILE="hello.cc" bci-ai-runner`