import "./NewComponent.css";
import * as React from "react";
import { observer, inject } from "mobx-react";

@inject("")
@observer
export default class {{name}} extends React.Component<any, any> {
  public render() {
    return <div className="{{name}}">{{name}}</div>;
  }
}
