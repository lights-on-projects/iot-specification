import "../../../usecases";
import "../../entities";
import "../../responses";

using IoT.Examples.Entities;
using IoT.Usecases;

namespace IoT.Examples;

// Errors

@@opExample(Events.createEvent,
  #{
    returnType: #{
      statusCode: 400,
      error: #{
        status: "error",
        error: "VALIDATION",
        message: "Invalid event.",
      },
    },
  }
);

@@opExample(Events.createEvent, serviceNotFound);

// Success

@@opExample(Events.createEvent, #{ parameters: #{ event: event } });
