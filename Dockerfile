#https://stackoverflow.com/questions/55291850/kubernetes-how-to-copy-a-cfg-file-into-container-before-contaner-running
#FROM cgr.dev/chainguard/busybox:latest
FROM busybox:latest

COPY ./carbide-assets /tmp/assets

CMD ["/bin/sh", "-c", "cp -rf /tmp/assets/* /rancher-images/"]

    #  initContainers:
    #    - name: copy
    #      image: busybox:1.28
    #      command: ["/bin/sh", "-c", "cp /config/cassandra.yaml /config/cassandra/"]
    #      volumeMounts:
    #      - name: tmp-config
    #        mountPath: /config/cassandra/
    #      - name: cassandraconfig
    #        mountPath: /config/
