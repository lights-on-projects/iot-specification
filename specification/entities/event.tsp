import "./id.tsp";

namespace IoT.Entities;

/** Событие Home Assistant */
model Event {
  service_id: id;
  state: string;
}
