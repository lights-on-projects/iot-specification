namespace IoT.Examples.Entities.Devices.Socket;

const device_id = "socket";

const switch_id = "socket.switch";
const counter_id = "socket.counter";

const switchStateOff = false;
const switchStateOn = true;

const switchOff = #{
  id: switch_id,
  device_id: device_id,
  type: "switch",
  name: "Розетка",
  view: "socket",
  state: switchStateOff,
  readonly: false,
};

const switchOn = #{
  id: switch_id,
  device_id: device_id,
  type: "switch",
  name: "Розетка",
  view: "socket",
  state: switchStateOn,
  readonly: false,
};

const counterOff = #{
  id: counter_id,
  device_id: device_id,
  type: "counter",
  view: "",
  name: "Расход (кВт⋅ч)",
  state: 15,
  readonly: true,
};

const counterOn = #{
  id: counter_id,
  device_id: device_id,
  type: "counter",
  view: "",
  name: "Расход (кВт⋅ч)",
  state: 17,
  readonly: true,
};
