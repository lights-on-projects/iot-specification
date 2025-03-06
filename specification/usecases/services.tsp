import "@typespec/http";
import "@typespec/rest";
import "../entities";
import "../parameters";
import "../responses";

using TypeSpec.Http;
using TypeSpec.Rest;
using IoT.Entities;
using IoT.Responses;

namespace IoT.Usecases;

@tag("Services")
@autoRoute
interface Services {
  @get
  @action("services")
  @summary("Список сервисов устройства")
  @returnsDoc("Список сервисов устройства в порядке отображения в пользовательском интерфейсе.")
  getServices(
    ...DeviceParameters,
  ): CollectionResponse<AnyService> | DeviceNotFoundResponse;

  @get
  @summary("Сервис устройства")
  @returnsDoc("Сервис устройства.")
  getService(
    ...ServiceParameters,
  ): ResourceResponse<AnyService> | DeviceOrServiceNotFoundResponse;

  @put
  @action("state")
  @summary("Изменить текущее состояние сервиса устройства")
  @returnsDoc("Измененное состояние сервиса устройства.")
  updateServiceState(...ServiceParameters, @bodyRoot state: ServiceState):
    | ResourceResponse<ServiceState>
    | ValidationResponse
    | DeviceOrServiceNotFoundResponse
    | ReadonlyServiceResponse;
}
