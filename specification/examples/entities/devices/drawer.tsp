namespace IoT.Examples.Entities.Devices.Drawer;

const device_id = "drawer";

const switch_id = "drawer.switch";
const mode_id = "drawer.mode";
const door_id = "drawer.door";

const switchStateClosed = false;
const switchStateOpen = true;

const switchClosedLocked = #{
  id: switch_id,
  type: "switch",
  view: "lock",
  name: "Замок",
  state: switchStateClosed,
  readonly: true,
};

const switchOpenLocked = #{
  id: switch_id,
  type: "switch",
  view: "lock",
  name: "Замок",
  state: switchStateOpen,
  readonly: true,
};

const switchClosedUnlocked = #{
  id: switch_id,
  type: "switch",
  view: "lock",
  name: "Замок",
  state: switchStateClosed,
  readonly: false,
};

const switchOpenUnlocked = #{
  id: switch_id,
  type: "switch",
  view: "lock",
  name: "Замок",
  state: switchStateOpen,
  readonly: false,
};

const doorClosed = #{
  id: door_id,
  type: "boolean-sensor",
  view: "door",
  name: "Дверь локера",
  state: false,
  readonly: true,
};

const doorOpen = #{
  id: door_id,
  type: "boolean-sensor",
  view: "door",
  name: "Дверь локера",
  state: true,
  readonly: true,
};

const modeLocked = #{
  id: mode_id,
  type: "boolean-sensor",
  view: "mode",
  name: "Тип",
  state: false,
  readonly: true,
};

const modeUnlocked = #{
  id: mode_id,
  type: "boolean-sensor",
  view: "mode",
  name: "Тип",
  state: true,
  readonly: true,
};
