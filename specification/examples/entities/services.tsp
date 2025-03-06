import "../../entities";
import "./devices";

using IoT.Entities;

namespace IoT.Examples.Entities;

@@example(ServiceTypes.Button, Devices.Parcel.buttonClosed);
@@example(ServiceTypes.Switch, Devices.Socket.switchOn);
@@example(ServiceTypes.BooleanSensor, Devices.Parcel.doorClosed);
@@example(ServiceTypes.Counter, Devices.Socket.counterOn);
@@example(ServiceTypes.History, Devices.Toilet.history);
