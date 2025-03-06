import "@typespec/http";
import "@typespec/rest";
import "../entities";
import "../responses";

using TypeSpec.Http;
using TypeSpec.Rest;
using IoT.Entities;
using IoT.Responses;

namespace IoT.Usecases;

@tag("Events")
@autoRoute
@route("events")
interface Events {
  @post
  @summary("Сохранить событие Home Assistant")
  @returnsDoc("Событие сохранено.")
  createEvent(event: Event):
    | CreatedResourceResponse<never>
    | IgnoreResponse
    | ValidationResponse
    | ServiceNotFoundResponse;
}
