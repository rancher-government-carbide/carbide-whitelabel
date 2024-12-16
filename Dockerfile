#https://stackoverflow.com/questions/55291850/kubernetes-how-to-copy-a-cfg-file-into-container-before-contaner-running
FROM cgr.dev/chainguard/busybox:latest

LABEL classification="UNCLASSIFIED"

COPY ./carbide-assets /tmp/assets

# spec:
#   initContainers:
#     - name: copy
#       image: ssf/carbide-whitelabel
#       imagePullPolicy: Always
#       command:  ["/bin/sh", "-c", "cp -rf /tmp/assets/* /rancher-images/"]
#       volumeMounts:
#       - name: work-dir
#         mountPath: /rancher-images/