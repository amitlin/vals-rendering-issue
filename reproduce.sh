#!/bin/bash
echo "# helm template values file with secrets result"
helm template -f values-with-secret.yaml . | vals eval

echo "----------------"

echo "# helm template -f values-empty.yaml result"
helm template -f values-empty.yaml . | vals eval

echo "----------------"

echo "# vals eval -f templates/argocd-infra-git-repo.yaml result"
vals eval -f templates/argocd-infra-git-repo.yaml