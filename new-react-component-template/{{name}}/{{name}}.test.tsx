import * as React from "react";
import * as ReactDOM from "react-dom";
import { {{name}} } from "./";

test("renders without crashing", () => {
  const div = document.createElement("div");
  ReactDOM.render(<{{name}} />, div);
  ReactDOM.unmountComponentAtNode(div);
});
