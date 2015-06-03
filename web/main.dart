// Copyright (c) 2015, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:html';
import 'package:react/react.dart';
import 'package:react/react_client.dart' as reactClient;
import 'package:react_bootstrap/react_bootstrap.dart' as bs;

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


  void handleSelect(selectedKey, [b, c]) {
    window.alert('selected ' + selectedKey);
  }

  render() => div({}, [
    h1({"style": {"color": "red"}}, [ "DEMO"]),


    div({
      "style": {"padding": "10px"}
    }, [bs.Alert({'bsStyle': 'warning', }, div({}, "HELLO!")), ]),
    div({
      "style": {"padding": "10px"}
    }, [bs.Button({'bsStyle': 'primary', }, 'Primary')]),


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
    bs.ButtonToolbar({},
    bs.ButtonGroup({}, [
      bs.Button({}, bs.Glyphicon({'glyph': 'align-left'})),
      bs.Button({}, bs.Glyphicon({'glyph': 'align-center'})),
      bs.Button({}, bs.Glyphicon({'glyph': 'align-right'})),
      bs.Button({}, bs.Glyphicon({'glyph': 'align-justify'})),
    ]))),
    div({"style": {"padding": "10px"}}, [
      bs.Button(
          {}, bs.Glyphicon({'glyph': 'star', }, 'Star')),
    ]),

    bs.Nav({'bsStyle': 'tabs', 'activeKey': 1, 'onSelect': this.handleSelect}, [
      bs.NavItem({'eventKey': '1', 'href': '/home'}, 'NavItem 1 content'),
      bs.NavItem({'eventKey': '2', 'title': 'Item', }, 'NavItem 2 content'),
      bs.NavItem({'eventKey': '3', 'disabled': true}, 'NavItem 3 content'),
      bs.DropdownButton({'eventKey': '4', 'title': 'Dropdown', 'navItem': true, 'onSelect': (a) => this.handleSelect(a, null, null)}, [
        bs.MenuItem({'eventKey': '4.1'}, 'Action'),
        bs.MenuItem({'eventKey': '4.2'}, 'Another action'),
        bs.MenuItem({'eventKey': '4.3'}, 'Something else here'),
        bs.MenuItem({'divider': true}),
        bs.MenuItem({'eventKey': '4.4'}, 'Separated link')
      ])]
    )

  ]);
}
