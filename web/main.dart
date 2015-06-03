// Copyright (c) 2015, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:html';
import 'package:react/react.dart';
import 'package:react/react_client.dart' as reactClient;
import 'package:react_bootstrap/react_bootstrap.dart' as react_bootstrap;

main() {

  reactClient.setClientConfiguration();

//  var component = div({}, "Hello world!");
//  render(component, querySelector('#content'));

  render(rootComponent({}), querySelector('#content'));

}

var rootComponent = registerComponent(() => new RootComponent());

class RootComponent extends Component {

  var colors = ['orange', 'red', 'blue', 'purple'];

//  getInitialState() {
//    return {
//      "dropdownListValue": colors[0],
//      "comboboxValue": colors[0],
//      "numberPickerValue": 5,
//      "multiselectValue": [colors[0], colors[2]],
//      "selectListValue": [colors[0]],
//    };
//  }

  render() =>
  div({}, [
    h1({"style": {"color": "red"}}, "DEMO"),
    div({"style": {"padding": "10px"}}, [
      this.state["value"],
      react_bootstrap.Alert({
        'bsStyle': 'warning',
      }, div({}, "HELLO!")),
    ]),
    div({"style": {"padding": "10px"}}, [
      this.state["value"],
      react_bootstrap.Button({
        'bsStyle': 'primary',
      }, "Primary"),
    ]),
    /*
    div({"style": {"padding": "10px"}}, [
      "NumberPicker: ${this.state["numberPickerValue"]}",
      widgets.numberPicker({
        "style": {"width": "200px"},
        "format": (v, c) => v,
        "parse": (v, c) => v,
        "value": this.state["numberPickerValue"],
        "onChange": (value) => this.setState({"numberPickerValue": value})}),
    ]),
    */
  ]);

}