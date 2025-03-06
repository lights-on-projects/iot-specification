import "../../entities";
import "./devices";

using IoT.Entities;

namespace IoT.Examples.Entities;

const event: Event = #{ service_id: Devices.Socket.counter_id, state: "16" };

@@example(Event, event);
