#https://stackoverflow.com/questions/55291850/kubernetes-how-to-copy-a-cfg-file-into-container-before-contaner-running
FROM cgr.dev/chainguard/busybox:latest
COPY ./carbide-assets /tmp/assets

# spec:
#   initContainers:
#     - name: copy
#       image: bgulla/copypotomus
#       imagePullPolicy: Always
#       command:  ["/bin/sh", "-c", "cp -rf /tmp/assets/* /rancher-images/"]
#       # ["/bin/sh", "-c", "cp /config/cassandra.yaml /config/cassandra/"]
#       volumeMounts:
#       - name: work-dir
#         mountPath: /rancher-images/