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

  render() => div({}, [
    h1({"style": {"color": "red"}}, [ "DEMO"]),


    div({
      "style": {"padding": "10px"}
    }, [react_bootstrap.Alert({'bsStyle': 'warning', }, div({}, "HELLO!")), ]),
    div({
      "style": {"padding": "10px"}
    }, [react_bootstrap.Button({'bsStyle': 'primary', }, 'Primary')]),


/*
<ButtonToolbar>
<ButtonGroup>
<Button><Glyphicon glyph='align-left' /></Button>
<Button><Glyphicon glyph='align-center' /></Button>
<Button><Glyphicon glyph='align-right' /></Button>
<Button><Glyphicon glyph='align-justify' /></Button>
</ButtonGroup>
</ButtonToolbar>
*/


    div({
      "style": {"padding": "10px"}
    },
    react_bootstrap.ButtonToolbar({},
    react_bootstrap.ButtonGroup({}, [
      react_bootstrap.Button({}, react_bootstrap.Glyphicon({'glyph': 'align-left'})),
      react_bootstrap.Button({}, react_bootstrap.Glyphicon({'glyph': 'align-center'})),
      react_bootstrap.Button({}, react_bootstrap.Glyphicon({'glyph': 'align-right'})),
      react_bootstrap.Button({}, react_bootstrap.Glyphicon({'glyph': 'align-justify'})),
    ]))),

    div({"style": {"padding": "10px"}}, [
      react_bootstrap.Button(
          {}, react_bootstrap.Glyphicon({'glyph': 'star', }, 'Star')),
    ]),



  ]);
}
