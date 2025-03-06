import "../errors";

using TypeSpec.Http;
using IoT.Errors;

namespace IoT.Responses;

model ResourceResponse<T, C = 200> {
  @statusCode statusCode: C;
  status: "ok";
  data: T;
}

model CollectionResponse<T> extends ResourceResponse<T[]> {}

model CreatedResourceResponse<T> is ResourceResponse<T, 201>;

/**
 * Запрос проигнорирован.
 */
model IgnoreResponse is ResourceResponse<never, 204>;

model ErrorResponse<C, E> {
  @statusCode statusCode: C;
  @body error: {
    status: "error";
    ...E;
  };
}

alias NotFoundResponse = ErrorResponse<404, NotFoundError>;

/**
 * Устройство с указанным device_id не найдено.
 */
model DeviceNotFoundResponse is NotFoundResponse;

/**
 * Сервис с указанным service_id не найден.
 */
model ServiceNotFoundResponse is NotFoundResponse;

/**
 * Устройство с указанным device_id или сервис с указанным service_id не найдены.
 */
model DeviceOrServiceNotFoundResponse is NotFoundResponse;

/**
 * Некорректный запрос.
 */
model ValidationResponse is ErrorResponse<400, ValidationError>;

/**
 * Состояние сервиса доступно только для чтения.
 */
model ReadonlyServiceResponse is ErrorResponse<409, ReadonlyServiceError>;
