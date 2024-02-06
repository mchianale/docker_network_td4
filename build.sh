docker build -t app -f Dockerfile.app .
if [ $? -eq 0 ]; then
    echo "API image ✓."
else
    echo "API image x."
    exit 1
fi


docker build -t db -f Dockerfile.db .
if [ $? -eq 0 ]; then
    echo "DB image ✓"
else
    echo "DB image x"
    exit 1
fi

