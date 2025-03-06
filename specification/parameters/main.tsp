import "@typespec/http";
import "@typespec/rest";
import "../entities";

using TypeSpec.Http;
using TypeSpec.Rest;
using IoT.Entities;

namespace IoT.Usecases;

model DeviceParameters {
  @path
  @segment("devices")
  device_id: id;
}

model ServiceParameters is DeviceParameters {
  @path
  @segment("services")
  service_id: id;
}
