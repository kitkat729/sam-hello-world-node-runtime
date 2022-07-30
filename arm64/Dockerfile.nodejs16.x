FROM scratch

ADD 170d437a45b523d0034f41bf41a624ed4a96c8bd44a993ce2e4dde7f3f0e162e.tar.xz /
ADD 72f6404aba08ef3021e15d5e8127aeead76ae94dcba46e92fe5473c07b6fe153.tar.xz /
ADD 858e167449884e4f94c98f520e8776080fd8da18a0af6bdd0d565e508d0cd373.tar.xz /
ADD 94eaf10fd23e006d8e08260cb24cee936c516878c9c5a20bf0e5ce37a8cef415.tar.xz /
ADD a10875aa60d90504babefb3ba4d63483639464e13d1f2670e15af87247fc8162.tar.xz /
ADD c11568b758cc32d431475c362a085d14d71d32bffd4465b989cea08030c944d6.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
