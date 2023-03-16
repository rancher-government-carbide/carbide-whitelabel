# `carbide-whitelabel`

## Building from SSF Tekton
```bash
curl -X POST http://el-carbide-docs-listener.ssf.svc.cluster.local:8080 -H 'Content-Type: application/json' -d '{ "gitUrl": "git@github.com:rancherfederal/carbide-whitelabel.git", "gitBranch": "bdev", "buildPath": ".", "imageName": "carbide/carbide-whitelabel", "imageTag": "0.1.0", "chartPath": "", "valuesImagePath": ".images.carbide-whitelabel.name", "valuesTagPath": ".images.carbide-whitelabel.tag" }'
```

