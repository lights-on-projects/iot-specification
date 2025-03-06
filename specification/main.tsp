import "@typespec/versioning";
import "./examples";
import "./usecases";

using TypeSpec.Versioning;

/**
 * Веб-сервис для интеграции Карт Офиса с Home Assistant.
 */
@service(#{ title: "IoT. Карта Офиса. API" })
@versioned(Versions)
namespace IoT;

enum Versions {
  v0_1_0: "0.1.0",
}
