# Intermediate container
Intermediate container to nic innego jak realizacja [[Docker Layer|warstwy dockerowej]]:

```
Sending build context to Docker daemon 20.04 MB
Step 1 : FROM ubuntu:14.04
---> b1719e1db756
Step 2 : MAINTAINER RAGHU
---> Running in 532ed79e6d55
---> ea6184bb8ef5
Removing intermediate container 532ed79e6d55
Step 3 : RUN echo "hello Raghu"
---> Running in da327c9b871a
hello Raghu
---> f02ff92252e2
Removing intermediate container da327c9b871a
Step 4 : RUN sleep 10
---> Running in aa58dea59595
---> fe9e9648e969
Removing intermediate container aa58dea59595
Step 5 : RUN echo "TASK COMPLETED"
---> Running in 612adda45c52
TASK COMPLETED
---> 86c73954ea96
Removing intermediate container 612adda45c52
Successfully built 86c73954ea96
```

1) `b1719e1db756` to id obrazu kontenera, który powstał z `FROM ubuntu:14.04`
2) `532ed79e6d55` to id tymczasowego kontenera, który został stworzony z `b1719e1db756`
3) `ea6184bb8ef5` to id warstwy dockera stworzona jako wynik instrukcji, tzn. zapisanie tymczasowego kontenera `532ed79e6d55`
4) Następnie Docker tworzony jest jako złączenie tych wszystkich obrazów - i jest to nazwanej jako [[Docker Union File System]]