package admission

test_deny_admin {
	 result := deny[{"id": id, "resource": {"kind": "pods", "namespace": "dummy", "name": "testpod"}, "resolution": resolution}] with data.kubernetes.pods.dummy.testpod as {
    "uid":"0df28fbd-5f5f-11e8-bc74-36e6bb280816",
    "kind":{
        "group":"",
        "version":"v1",
        "kind":"Pod"
    },
    "resource":{
        "group":"",
        "version":"v1",
        "resource":"pods"
    },
    "namespace":"dummy",
    "operation":"CREATE",
    "userInfo":{
        "username":"system:serviceaccount:kube-system:replicaset-controller",
        "uid":"a7e0ab33-5f29-11e8-8a3c-36e6bb280816",
        "groups":[
        "system:serviceaccounts",
        "system:serviceaccounts:kube-system",
        "system:authenticated"
        ]
    },
    "object":{
        "metadata":{
        "generateName":"nginx-deployment-6c54bd5869-",
        "creationTimestamp":null,
        "labels":{
            "app":"nginx",
            "pod-template-hash":"2710681425"
        },
        "annotations":{
            "openshift.io/scc":"restricted"
        },
        "ownerReferences":[
            {
                "apiVersion":"extensions/v1beta1",
                "kind":"ReplicaSet",
                "name":"nginx-deployment-6c54bd5869",
                "uid":"16c2b355-5f5d-11e8-ac91-36e6bb280816",
                "controller":true,
                "blockOwnerDeletion":true
            }
        ]
        },
        "spec":{
        "volumes":[
            {
                "name":"default-token-tq5lq",
                "secret":{
                    "secretName":"default-token-tq5lq"
                }
            }
        ],
        "containers":[
            {
                "name":"nginx",
                "image":"nginx:latest",
                "ports":[
                    {
                    "containerPort":80,
                    "protocol":"TCP"
                    }
                ],
                "resources":{

                },
                "volumeMounts":[
                    {
                    "name":"default-token-tq5lq",
                    "readOnly":true,
                    "mountPath":"/var/run/secrets/kubernetes.io/serviceaccount"
                    }
                ],
                "terminationMessagePath":"/dev/termination-log",
                "terminationMessagePolicy":"File",
                "imagePullPolicy":"IfNotPresent",
                "securityContext":{
                    "capabilities":{
                    "drop":[
                        "KILL",
                        "MKNOD",
                        "SETGID",
                        "SETUID"
                    ]
                    },
                    "runAsUser":1000080000
                }
            }
        ],
        "restartPolicy":"Always",
        "terminationGracePeriodSeconds":30,
        "dnsPolicy":"ClusterFirst",
        "serviceAccountName":"default",
        "serviceAccount":"default",
        "securityContext":{
            "seLinuxOptions":{
                "level":"s0:c9,c4"
            },
            "fsGroup":1000080000
        },
        "imagePullSecrets":[
            {
                "name":"default-dockercfg-kksdv"
            }
        ],
        "schedulerName":"default-scheduler"
        },
        "status":{

        }
    },
    "oldObject":null
}
  result[_].message = "image pull policy and image tag cannot be repectively IfNotPresent and latest at the same time"
}