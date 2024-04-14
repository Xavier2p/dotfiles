function tfviz {
    terraform plan -out=plan.out -var-file=$1 $2
    terraform show -json plan.out >plan.json
    docker run -it --rm --name tfviz \
        --volume $(pwd)/plan.json:/src/plan.json \
        --publish 9000:9000 \
        im2nguyen/rover \
        -planJSONPath=plan.json
}
