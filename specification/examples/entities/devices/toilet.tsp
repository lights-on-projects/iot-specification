namespace IoT.Examples.Entities.Devices.Toilet;

const device_id = "toilet";

const history_id = "toilet.history";
const openingCounter_id = "toilet.opening-counter";
const closingCounter_id = "toilet.closing-counter";

const history = #{
  id: history_id,
  type: "history",
  view: "",
  name: "Недавние посещения",
  state: #["16:50", "15:30", "14:58", "14:20"],
  readonly: true,
};

const openingCounter = #{
  id: openingCounter_id,
  type: "counter",
  view: "",
  name: "Открытий",
  state: 254,
  readonly: true,
};

const closingCounter = #{
  id: closingCounter_id,
  type: "counter",
  view: "",
  name: "Закрытий",
  state: 120,
  readonly: true,
};
