import "../../../usecases";
import "../../entities";
import "../../responses";

using IoT.Examples.Entities;
using IoT.Usecases;

namespace IoT.Examples;

// Errors

@@opExample(Services.updateServiceState,
  #{
    returnType: #{
      statusCode: 400,
      error: #{
        status: "error",
        error: "VALIDATION",
        message: "Invalid service state.",
      },
    },
  },
  #{ title: "Установить невалидное значение" }
);
@@opExample(Services.updateServiceState,
  #{
    returnType: #{
      statusCode: 400,
      error: #{
        status: "error",
        error: "VALIDATION",
        message: "Invalid service state.",
      },
    },
  },
  #{
    title: "Поднять кнопку",
    description: """
      На сервис с типом button можно послать только значение true,
      что символизирует нажатие на кнопку.
      После нажатия кнопка возвращается в исходное положение,
      поэтому сервис с типом button всегда имеет состояние false.
      """,
  }
);

@@opExample(Services.updateServiceState,
  serviceNotFound,
  serviceNotFoundOptions
);
@@opExample(Services.updateServiceState, deviceNotFound, deviceNotFoundOptions);

@@opExample(Services.updateServiceState,
  #{
    returnType: #{
      statusCode: 409,
      error: #{
        status: "error",
        error: "READONLY_SERVICE",
        message: "Service (id: socket.counter) is readonly.",
      },
    },
  }
);

// Success

// Ящик

@@opExample(Services.updateServiceState,
  #{
    parameters: #{
      device_id: Devices.Drawer.device_id,
      service_id: Devices.Drawer.switch_id,
      state: Devices.Drawer.switchStateOpen,
    },
    returnType: #{ ...success, data: Devices.Drawer.switchStateOpen },
  },
  #{ title: "Открыть ящик" }
);

@@opExample(Services.updateServiceState,
  #{
    parameters: #{
      device_id: Devices.Drawer.device_id,
      service_id: Devices.Drawer.switch_id,
      state: Devices.Drawer.switchStateClosed,
    },
    returnType: #{ ...success, data: Devices.Drawer.switchStateClosed },
  },
  #{ title: "Закрыть ящик" }
);

// Почтомат

@@opExample(Services.updateServiceState,
  #{
    parameters: #{
      device_id: Devices.Parcel.device_id,
      service_id: Devices.Parcel.button_id,
      state: true,
    },
    returnType: #{ ...success, data: false },
  },
  #{
    title: "Открыть почтомат",
    description: """
      На сервис с типом button можно послать только значение true,
      что символизирует нажатие на кнопку.
      После нажатия кнопка возвращается в исходное положение,
      поэтому сервис с типом button всегда имеет состояние false.
      """,
  }
);

// Розетка

@@opExample(Services.updateServiceState,
  #{
    parameters: #{
      device_id: Devices.Socket.device_id,
      service_id: Devices.Socket.switch_id,
      state: Devices.Socket.switchStateOn,
    },
    returnType: #{ ...success, data: Devices.Socket.switchStateOn },
  },
  #{ title: "Включить розетку" }
);

@@opExample(Services.updateServiceState,
  #{
    parameters: #{
      device_id: Devices.Socket.device_id,
      service_id: Devices.Socket.switch_id,
      state: Devices.Socket.switchStateOff,
    },
    returnType: #{ ...success, data: Devices.Socket.switchStateOff },
  },
  #{ title: "Выключить розетку" }
);
