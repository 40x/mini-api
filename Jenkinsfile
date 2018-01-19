node {
    stage "Build and push"

        sh "sh create.sh"

    stage "Deploy"

        sh "kubectl apply -f ./api.k8s.yml"
}