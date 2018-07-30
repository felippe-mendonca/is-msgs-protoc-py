# is-msgs-protoc-py

Repository containing docker image to build protobuf to Python language including messages from [is-msgs](https://github.com/labviros/is-msgs/tree/modern-cmake) as well as prevent error on package import. To build your protobufs, run the command bellow with a list of protobuf files to be built:

```bash
docker run --rm -v `pwd`:/protos mendonca/is-msgs-protoc:1.1.7 <LIST_OF_PROTOBUF_FILES>
```