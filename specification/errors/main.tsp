import "@typespec/http";

using TypeSpec.Http;

namespace IoT.Errors;

@error
model Error<E extends string> {
  error: E;
  message: string;
}

/**
 * Состояние сервиса доступно только для чтения.
 */
model ReadonlyServiceError extends Error<"READONLY_SERVICE"> {}

/**
 * Ресурс не найден.
 */
model NotFoundError extends Error<"NOT_FOUND"> {}

/**
 * Ошибка валидации.
 */
model ValidationError extends Error<"VALIDATION"> {}
