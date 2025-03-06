import "../../../usecases";
import "../../entities";
import "../../responses";

using IoT.Examples.Entities;
using IoT.Usecases;

namespace IoT.Examples;

// Errors

@@opExample(Services.getServices, deviceNotFound);

// Success

// Ящик

@@opExample(Services.getServices,
  #{
    parameters: #{ device_id: Devices.Drawer.device_id },
    returnType: #{
      ...success,
      data: #[
        Devices.Drawer.switchClosedLocked,
        Devices.Drawer.modeLocked,
        Devices.Drawer.doorClosed
      ],
    },
  },
  #{ title: "Ящик (закрыт, заблокирован)" }
);

@@opExample(Services.getServices,
  #{
    parameters: #{ device_id: Devices.Drawer.device_id },
    returnType: #{
      ...success,
      data: #[
        Devices.Drawer.switchClosedUnlocked,
        Devices.Drawer.modeUnlocked,
        Devices.Drawer.doorClosed
      ],
    },
  },
  #{ title: "Ящик (закрыт, разблокирован)" }
);

@@opExample(Services.getServices,
  #{
    parameters: #{ device_id: Devices.Drawer.device_id },
    returnType: #{
      ...success,
      data: #[
        Devices.Drawer.switchOpenLocked,
        Devices.Drawer.modeLocked,
        Devices.Drawer.doorOpen
      ],
    },
  },
  #{ title: "Ящик (открыт, заблокирован)" }
);

@@opExample(Services.getServices,
  #{
    parameters: #{ device_id: Devices.Drawer.device_id },
    returnType: #{
      ...success,
      data: #[
        Devices.Drawer.switchOpenUnlocked,
        Devices.Drawer.modeUnlocked,
        Devices.Drawer.doorOpen
      ],
    },
  },
  #{ title: "Ящик (открыт, разблокирован)" }
);

// Почтомат

@@opExample(Services.getServices,
  #{
    parameters: #{ device_id: Devices.Parcel.device_id },
    returnType: #{
      ...success,
      data: #[Devices.Parcel.buttonClosed, Devices.Parcel.doorClosed],
    },
  },
  #{ title: "Почтомат (закрыт)" }
);

@@opExample(Services.getServices,
  #{
    parameters: #{ device_id: Devices.Parcel.device_id },
    returnType: #{
      ...success,
      data: #[Devices.Parcel.buttonOpen, Devices.Parcel.doorOpen],
    },
  },
  #{ title: "Почтомат (открыт)" }
);

// Розетка

@@opExample(Services.getServices,
  #{
    parameters: #{ device_id: Devices.Socket.device_id },
    returnType: #{
      ...success,
      data: #[Devices.Socket.switchOff, Devices.Socket.counterOff],
    },
  },
  #{ title: "Розетка (выключена)" }
);

@@opExample(Services.getServices,
  #{
    parameters: #{ device_id: Devices.Socket.device_id },
    returnType: #{
      ...success,
      data: #[Devices.Socket.switchOn, Devices.Socket.counterOn],
    },
  },
  #{ title: "Розетка (включена)" }
);

// Туалет

@@opExample(Services.getServices,
  #{
    parameters: #{ device_id: Devices.Toilet.device_id },
    returnType: #{
      ...success,
      data: #[
        Devices.Toilet.history,
        Devices.Toilet.openingCounter,
        Devices.Toilet.closingCounter
      ],
    },
  },
  #{ title: "Туалет" }
);
