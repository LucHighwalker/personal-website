if [ "$ENVIRONMENT" = "dev" ]; then
    yarn start
else
    serve -s build
fi