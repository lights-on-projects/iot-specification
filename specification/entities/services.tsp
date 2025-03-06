import "@typespec/http";
import "./id.tsp";

using TypeSpec.Http;

namespace IoT.Entities;

/**
 * Состояние устройства. Различается в зависимости от <a href='#model-Entities.AnyService'>типа устройства</a>.
 */
union ServiceState {
  boolean,
  integer,
  string[],
  unknown,
}

/**
 * Компонент устройства, который определеяет одно из его поведений (кнопка, датчик и т.д.).
 *
 * Контролируется за счет изменения состояния (state).
 *
 * Состояние сервиса может быть редактируемым и нередактируемым (readonly) в зависимости от состояний других сервисов.
 * Некоторые сервисы, например, датчики и счетчики нередактируемые (readonly) всегда.
 */
model Service {
  id: id;

  /** Идентификатор устройства, частью которого является сервис. */
  device_id: id;

  /**
   * Тип сервиса, определяющий его поведение (переключатель, датчик и т.д.).
   *
   * Полный список типов сервисов: <a href='#model-Entities.AnyService'>Entities.AnyService</a>.
   */
  type: string;

  /**
   * Режим отображения сервиса на клиенте.
   *
   * Различается в зависимости от типа сервиса.
   * При отсутвии значения – пустая строка.
   */
  view: string;

  /** Название сервиса, отображаемое на клиенте. */
  name: string;

  state: ServiceState;

  /** Указывает, можно ли послать запрос на изменение состояния сервиса. */
  readonly: boolean;
}

namespace ServiceTypes {
  /**
   * Кнопка.
   *
   * На сервис с типом button можно послать только значение true,
   * что символизирует нажатие на кнопку.
   * После нажатия кнопка возвращается в исходное положение,
   * поэтому сервис с типом button всегда имеет состояние false.
   */
  model Button extends Service {
    type: "button";

    /** Состояние устройства. Всегда false. */
    state: false;
  }

  /**
   * Переключатель (розетка, замок и т.д.).
   *
   * Состояние true – переключатель включен (замок открыт, розетка работает).
   *
   * Состояние false – переключатель выключен (замок закрыт, розетка не работает).
   */
  model Switch extends Service {
    type: "switch";

    /**
     * Режим отображения сервиса на клиенте.
     *
     * lock – отображать как замок.
     *
     * socket – отображать как розетку.
     */
    view: "lock" | "socket" | string;

    /**
     * Состояние устройства.
     *
     * Состояние true – переключатель включен (замок открыт, розетка работает).
     *
     * Состояние false – переключатель выключен (замок закрыт, розетка не работает).
     */
    state: boolean;
  }

  /**
   * Бинарный датчик (отображает одно из двух значений).
   */
  model BooleanSensor extends Service {
    type: "boolean-sensor";

    /**
     * Режим отображения сервиса на клиенте.
     *
     * door – отображать как статус открытости двери (true – открыта, false – закрыта).
     *
     * mode – отображать как статус режима работы (true – автоматический, false – ручной).
     */
    view: "door" | "mode" | string;

    state: boolean;
    readonly: true;
  }

  /** Счетчик чего-либо (расход электроэнергии, кол-во открытий и закрытий двери). */
  model Counter extends Service {
    type: "counter";
    state: integer;
    readonly: true;
  }

  /** История событий */
  model History extends Service {
    type: "history";
    state: string[];
    readonly: true;
  }
}

/**
 * Перечисление типов доступных на текущий момент сервисов.
 * Каждый сервис имеет тип <a href='#model-Entities.Service'>Entities.Service</a>.
 */
union AnyService {
  ServiceTypes.Button,
  ServiceTypes.Switch,
  ServiceTypes.BooleanSensor,
  ServiceTypes.Counter,
  ServiceTypes.History,
  Service,
}
