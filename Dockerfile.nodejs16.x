FROM scratch
ADD x86_64/1db5dde08e61a8a41da963d2577134c862849f5f66fa7db2be02bb8080b4e9d5.tar.xz /
ADD x86_64/7ed5243c55b1d9c698dc7ebcac8bd660935e5ac9e94b6e7615d91e13352a1db3.tar.xz /
ADD x86_64/981e6e79d45246d4b8702d656fb5d917fc973f633138a77c11d91ddb2d322b9c.tar.xz /
ADD x86_64/a0fe0ea66a69f4a58818941ca8d050676585ee0c92e29a2e507592899549fe34.tar.xz /
ADD x86_64/ae2a4072e727326a73633bec57fb14feefd3bb69d4bec2c4037418bb0411a6c4.tar.xz /
ADD x86_64/bcdbb7cfb9d22600ce21c7b1640780e3a21198f46cca7fb51f658fe30a12a762.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
