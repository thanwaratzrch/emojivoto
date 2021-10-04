FROM datawire/emojivoto-svc-base:v11.2

ARG svc_name

COPY $svc_name/target/ /usr/local/bin/

# ARG variables arent available for ENTRYPOINT
ENV SVC_NAME $svc_name

RUN mv /usr/local/bin/$SVC_NAME /usr/local/bin/main

ENTRYPOINT ["/usr/local/bin/main"]
