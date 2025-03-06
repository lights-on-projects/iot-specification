import "../../responses";

namespace IoT.Examples;

using IoT.Responses;

const success = #{ statusCode: 200, status: "ok" };

const deviceNotFoundOptions = #{ title: "Устройство не найдено" };
const deviceNotFound = #{
  returnType: #{
    statusCode: 404,
    error: #{
      status: "error",
      error: "NOT_FOUND",
      message: "Device (id: absent) not found.",
    },
  },
};

const serviceNotFoundOptions = #{ title: "Сервис не найден" };
const serviceNotFound = #{
  returnType: #{
    statusCode: 404,
    error: #{
      status: "error",
      error: "NOT_FOUND",
      message: "Service (id: socket.absent) not found.",
    },
  },
};
