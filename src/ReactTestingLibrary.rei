module FireEvent: {
  let abort: (~eventInit: Js.t({..})=?, Dom.element) => unit;
  let animationEnd: (~eventInit: Js.t({..})=?, Dom.element) => unit;
  let animationIteration: (~eventInit: Js.t({..})=?, Dom.element) => unit;
  let animationStart: (~eventInit: Js.t({..})=?, Dom.element) => unit;
  let blur: (~eventInit: Js.t({..})=?, Dom.element) => unit;
  let canPlay: (~eventInit: Js.t({..})=?, Dom.element) => unit;
  let canPlayThrough: (~eventInit: Js.t({..})=?, Dom.element) => unit;
  let change: (~eventInit: Js.t({..})=?, Dom.element) => unit;
  let click: (~eventInit: Js.t({..})=?, Dom.element) => unit;
  let compositionEnd: (~eventInit: Js.t({..})=?, Dom.element) => unit;
  let compositionStart: (~eventInit: Js.t({..})=?, Dom.element) => unit;
  let compositionUpdate: (~eventInit: Js.t({..})=?, Dom.element) => unit;
  let contextMenu: (~eventInit: Js.t({..})=?, Dom.element) => unit;
  let copy: (~eventInit: Js.t({..})=?, Dom.element) => unit;
  let cut: (~eventInit: Js.t({..})=?, Dom.element) => unit;
  let dblClick: (~eventInit: Js.t({..})=?, Dom.element) => unit;
  let doubleClick: (~eventInit: Js.t({..})=?, Dom.element) => unit;
  let drag: (~eventInit: Js.t({..})=?, Dom.element) => unit;
  let dragEnd: (~eventInit: Js.t({..})=?, Dom.element) => unit;
  let dragEnter: (~eventInit: Js.t({..})=?, Dom.element) => unit;
  let dragExit: (~eventInit: Js.t({..})=?, Dom.element) => unit;
  let dragLeave: (~eventInit: Js.t({..})=?, Dom.element) => unit;
  let dragOver: (~eventInit: Js.t({..})=?, Dom.element) => unit;
  let dragStart: (~eventInit: Js.t({..})=?, Dom.element) => unit;
  let drop: (~eventInit: Js.t({..})=?, Dom.element) => unit;
  let durationChange: (~eventInit: Js.t({..})=?, Dom.element) => unit;
  let emptied: (~eventInit: Js.t({..})=?, Dom.element) => unit;
  let encrypted: (~eventInit: Js.t({..})=?, Dom.element) => unit;
  let ended: (~eventInit: Js.t({..})=?, Dom.element) => unit;
  let error: (~eventInit: Js.t({..})=?, Dom.element) => unit;
  let focus: (~eventInit: Js.t({..})=?, Dom.element) => unit;
  let focusIn: (~eventInit: Js.t({..})=?, Dom.element) => unit;
  let focusOut: (~eventInit: Js.t({..})=?, Dom.element) => unit;
  let input: (~eventInit: Js.t({..})=?, Dom.element) => unit;
  let invalid: (~eventInit: Js.t({..})=?, Dom.element) => unit;
  let keyDown: (~eventInit: Js.t({..})=?, Dom.element) => unit;
  let keyPress: (~eventInit: Js.t({..})=?, Dom.element) => unit;
  let keyUp: (~eventInit: Js.t({..})=?, Dom.element) => unit;
  let load: (~eventInit: Js.t({..})=?, Dom.element) => unit;
  let loadStart: (~eventInit: Js.t({..})=?, Dom.element) => unit;
  let loadedData: (~eventInit: Js.t({..})=?, Dom.element) => unit;
  let loadedMetadata: (~eventInit: Js.t({..})=?, Dom.element) => unit;
  let mouseDown: (~eventInit: Js.t({..})=?, Dom.element) => unit;
  let mouseEnter: (~eventInit: Js.t({..})=?, Dom.element) => unit;
  let mouseLeave: (~eventInit: Js.t({..})=?, Dom.element) => unit;
  let mouseMove: (~eventInit: Js.t({..})=?, Dom.element) => unit;
  let mouseOut: (~eventInit: Js.t({..})=?, Dom.element) => unit;
  let mouseOver: (~eventInit: Js.t({..})=?, Dom.element) => unit;
  let mouseUp: (~eventInit: Js.t({..})=?, Dom.element) => unit;
  let paste: (~eventInit: Js.t({..})=?, Dom.element) => unit;
  let pause: (~eventInit: Js.t({..})=?, Dom.element) => unit;
  let play: (~eventInit: Js.t({..})=?, Dom.element) => unit;
  let playing: (~eventInit: Js.t({..})=?, Dom.element) => unit;
  let progress: (~eventInit: Js.t({..})=?, Dom.element) => unit;
  let rateChange: (~eventInit: Js.t({..})=?, Dom.element) => unit;
  let scroll: (~eventInit: Js.t({..})=?, Dom.element) => unit;
  let seeked: (~eventInit: Js.t({..})=?, Dom.element) => unit;
  let seeking: (~eventInit: Js.t({..})=?, Dom.element) => unit;
  let select: (~eventInit: Js.t({..})=?, Dom.element) => unit;
  let stalled: (~eventInit: Js.t({..})=?, Dom.element) => unit;
  let submit: (~eventInit: Js.t({..})=?, Dom.element) => unit;
  let suspend: (~eventInit: Js.t({..})=?, Dom.element) => unit;
  let timeUpdate: (~eventInit: Js.t({..})=?, Dom.element) => unit;
  let touchCancel: (~eventInit: Js.t({..})=?, Dom.element) => unit;
  let touchEnd: (~eventInit: Js.t({..})=?, Dom.element) => unit;
  let touchMove: (~eventInit: Js.t({..})=?, Dom.element) => unit;
  let touchStart: (~eventInit: Js.t({..})=?, Dom.element) => unit;
  let transitionEnd: (~eventInit: Js.t({..})=?, Dom.element) => unit;
  let volumeChange: (~eventInit: Js.t({..})=?, Dom.element) => unit;
  let waiting: (~eventInit: Js.t({..})=?, Dom.element) => unit;
  let wheel: (~eventInit: Js.t({..})=?, Dom.element) => unit;
};

type renderResult;
type renderOptions = {
  .
  "baseElement": Js.undefined(Dom.element),
  "container": Js.undefined(Dom.element),
};

[@bs.module "@testing-library/react"] external cleanup: unit => unit = "";

[@bs.module "@testing-library/react"]
external act: (unit => Js.Nullable.t(Js.Promise.t(unit))) => unit = "";

[@bs.get] external container: renderResult => Dom.element = "";

[@bs.get] external baseElement: renderResult => Dom.element = "";

[@bs.send.pipe: renderResult] external unmount: unit => bool = "";

let getByAltText: (string, renderResult) => Dom.element;

let getByPlaceholderText: (string, renderResult) => Dom.element;

let getByTestId: (string, renderResult) => Dom.element;

let getByText:
  (
    ~matcher: [
                | `Func((string, Dom.element) => bool)
                | `RegExp(Js.Re.t)
                | `Str(string)
              ],
    ~options: DomTestingLibrary.Query.options=?,
    renderResult
  ) =>
  Dom.element;

let getByLabelText:
  (
    ~matcher: [
                | `Func((string, Dom.element) => bool)
                | `RegExp(Js.Re.t)
                | `Str(string)
              ],
    ~options: DomTestingLibrary.Query.options=?,
    renderResult
  ) =>
  Dom.element;

let getByTitle: (string, renderResult) => Dom.element;

let getByDisplayValue: (string, renderResult) => Dom.element;

[@bs.send.pipe: renderResult]
external rerender: ReasonReact.reactElement => unit = "";

let render:
  (
    ~baseElement: Dom.element=?,
    ~container: Dom.element=?,
    ReasonReact.reactElement
  ) =>
  renderResult;

let debug: (~el: Dom.element=?, unit, renderResult) => unit;
