namespace IoT.Examples.Entities.Devices.Parcel;

const device_id = "parcel";

const button_id = "parcel.button";
const door_id = "parcel.door";

const buttonClosed = #{
  id: button_id,
  device_id: device_id,
  type: "button",
  view: "",
  name: "Замок",
  state: false,
  readonly: false,
};

const buttonOpen = #{
  id: button_id,
  device_id: device_id,
  type: "button",
  view: "",
  name: "Замок",
  state: false,
  readonly: true,
};

const doorClosed = #{
  id: door_id,
  device_id: device_id,
  type: "boolean-sensor",
  view: "door",
  name: "Дверь локера",
  state: false,
  readonly: true,
};

const doorOpen = #{
  id: door_id,
  device_id: device_id,
  type: "boolean-sensor",
  view: "door",
  name: "Дверь локера",
  state: true,
  readonly: true,
};
