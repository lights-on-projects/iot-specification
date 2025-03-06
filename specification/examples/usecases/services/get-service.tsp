import "../../../usecases";
import "../../entities";
import "../../responses";

using IoT.Examples.Entities;
using IoT.Usecases;

namespace IoT.Examples;

// Errors

@@opExample(Services.getService, serviceNotFound, serviceNotFoundOptions);
@@opExample(Services.getService, deviceNotFound, deviceNotFoundOptions);

// Success

// Ящик

@@opExample(Services.getService,
  #{
    parameters: #{
      device_id: Devices.Drawer.device_id,
      service_id: Devices.Drawer.switch_id,
    },
    returnType: #{ ...success, data: Devices.Drawer.switchClosedLocked },
  },
  #{ title: "Ящик (закрыт, заблокирован). Переключатель" }
);

@@opExample(Services.getService,
  #{
    parameters: #{
      device_id: Devices.Drawer.device_id,
      service_id: Devices.Drawer.switch_id,
    },
    returnType: #{ ...success, data: Devices.Drawer.switchClosedUnlocked },
  },
  #{ title: "Ящик (закрыт, разблокирован). Переключатель" }
);

@@opExample(Services.getService,
  #{
    parameters: #{
      device_id: Devices.Drawer.device_id,
      service_id: Devices.Drawer.switch_id,
    },
    returnType: #{ ...success, data: Devices.Drawer.switchOpenLocked },
  },
  #{ title: "Ящик (открыт, заблокирован). Переключатель" }
);

@@opExample(Services.getService,
  #{
    parameters: #{
      device_id: Devices.Drawer.device_id,
      service_id: Devices.Drawer.switch_id,
    },
    returnType: #{ ...success, data: Devices.Drawer.switchOpenUnlocked },
  },
  #{ title: "Ящик (открыт, разблокирован). Переключатель" }
);

@@opExample(Services.getService,
  #{
    parameters: #{
      device_id: Devices.Drawer.device_id,
      service_id: Devices.Drawer.mode_id,
    },
    returnType: #{ ...success, data: Devices.Drawer.modeLocked },
  },
  #{ title: "Ящик (заблокирован). Режим работы" }
);

@@opExample(Services.getService,
  #{
    parameters: #{
      device_id: Devices.Drawer.device_id,
      service_id: Devices.Drawer.mode_id,
    },
    returnType: #{ ...success, data: Devices.Drawer.modeUnlocked },
  },
  #{ title: "Ящик (разблокирован). Режим работы" }
);

@@opExample(Services.getService,
  #{
    parameters: #{
      device_id: Devices.Drawer.device_id,
      service_id: Devices.Drawer.door_id,
    },
    returnType: #{ ...success, data: Devices.Drawer.doorClosed },
  },
  #{ title: "Ящик (закрыт). Дверь" }
);

@@opExample(Services.getService,
  #{
    parameters: #{
      device_id: Devices.Drawer.device_id,
      service_id: Devices.Drawer.door_id,
    },
    returnType: #{ ...success, data: Devices.Drawer.doorOpen },
  },
  #{ title: "Ящик (открыт). Дверь" }
);

// Почтомат

@@opExample(Services.getService,
  #{
    parameters: #{
      device_id: Devices.Parcel.device_id,
      service_id: Devices.Parcel.button_id,
    },
    returnType: #{ ...success, data: Devices.Parcel.buttonClosed },
  },
  #{ title: "Почтомат (закрыт). Кнопка" }
);

@@opExample(Services.getService,
  #{
    parameters: #{
      device_id: Devices.Parcel.device_id,
      service_id: Devices.Parcel.button_id,
    },
    returnType: #{ ...success, data: Devices.Parcel.buttonOpen },
  },
  #{ title: "Почтомат (открыт). Кнопка" }
);

@@opExample(Services.getService,
  #{
    parameters: #{
      device_id: Devices.Parcel.device_id,
      service_id: Devices.Parcel.door_id,
    },
    returnType: #{ ...success, data: Devices.Parcel.doorClosed },
  },
  #{ title: "Почтомат (закрыт). Дверь" }
);

@@opExample(Services.getService,
  #{
    parameters: #{
      device_id: Devices.Parcel.device_id,
      service_id: Devices.Parcel.door_id,
    },
    returnType: #{ ...success, data: Devices.Parcel.doorOpen },
  },
  #{ title: "Почтомат (открыт). Дверь" }
);

// Розетка

@@opExample(Services.getService,
  #{
    parameters: #{
      device_id: Devices.Socket.device_id,
      service_id: Devices.Socket.switch_id,
    },
    returnType: #{ ...success, data: Devices.Socket.switchOff },
  },
  #{ title: "Розетка (выключена). Переключатель" }
);

@@opExample(Services.getService,
  #{
    parameters: #{
      device_id: Devices.Socket.device_id,
      service_id: Devices.Socket.switch_id,
    },
    returnType: #{ ...success, data: Devices.Socket.switchOn },
  },
  #{ title: "Розетка (включена). Переключатель" }
);

@@opExample(Services.getService,
  #{
    parameters: #{
      device_id: Devices.Socket.device_id,
      service_id: Devices.Socket.counter_id,
    },
    returnType: #{ ...success, data: Devices.Socket.counterOff },
  },
  #{ title: "Розетка (выключена). Расход" }
);

@@opExample(Services.getService,
  #{
    parameters: #{
      device_id: Devices.Socket.device_id,
      service_id: Devices.Socket.counter_id,
    },
    returnType: #{ ...success, data: Devices.Socket.counterOn },
  },
  #{ title: "Розетка (включена). Расход" }
);

// Туалет

@@opExample(Services.getService,
  #{
    parameters: #{
      device_id: Devices.Toilet.device_id,
      service_id: Devices.Toilet.history_id,
    },
    returnType: #{ ...success, data: Devices.Toilet.history },
  },
  #{ title: "Недавние посещения туалета" }
);

@@opExample(Services.getService,
  #{
    parameters: #{
      device_id: Devices.Toilet.device_id,
      service_id: Devices.Toilet.openingCounter_id,
    },
    returnType: #{ ...success, data: Devices.Toilet.openingCounter },
  },
  #{ title: "Кол-во открытий туалета" }
);

@@opExample(Services.getService,
  #{
    parameters: #{
      device_id: Devices.Toilet.device_id,
      service_id: Devices.Toilet.closingCounter_id,
    },
    returnType: #{ ...success, data: Devices.Toilet.closingCounter },
  },
  #{ title: "Кол-во закрытий туалета" }
);
