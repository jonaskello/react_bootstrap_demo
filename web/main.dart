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

  getInitialState() {
    return {
      'activeKey': '2',
    };
  }

  void handleSelect(selectedKey, [b, c]) {
    print('selected ' + selectedKey);
    this.setState({'activeKey': selectedKey });
  }

  render() => div({}, [
    h1({'key': 1, 'style': {'color': 'red'}}, 'DEMO'),
    div({ 'key': 2, 'style': {'padding': '10px'} }, bs.Alert({'bsStyle': 'warning', }, div({}, "HELLO!"))),
    div({ 'key': 3, 'style': {'padding': '10px'} }, bs.Button({'bsStyle': 'primary', }, 'Primary')),


    div({ 'key': 4, 'style': {'padding': '10px'} },
    bs.ButtonToolbar({},
    bs.ButtonGroup({}, [
      bs.Button({'key': 1}, bs.Glyphicon({'glyph': 'align-left'})),
      bs.Button({'key': 2}, bs.Glyphicon({'glyph': 'align-center'})),
      bs.Button({'key': 3}, bs.Glyphicon({'glyph': 'align-right'})),
      bs.Button({'key': 4}, bs.Glyphicon({'glyph': 'align-justify'})),
    ]))),
    div({'key': 5, 'style': {'padding': '10px'}}, bs.Button({}, bs.Glyphicon({'glyph': 'star', }, 'Star'))),

    bs.Nav({'key': 6, 'bsStyle': 'tabs', 'activeKey': this.state['activeKey'], 'onSelect': this.handleSelect}, [
      bs.NavItem({'key': 1, 'eventKey': '1', 'href': '/home'}, 'NavItem 1 content'),
      bs.NavItem({'key': 2, 'eventKey': '2', 'title': 'Item', }, 'NavItem 2 content'),
      bs.NavItem({'key': 3, 'eventKey': '3', 'disabled': true}, 'NavItem 3 content'),
      bs.DropdownButton({'key': 4, 'eventKey': '4', 'title': 'Dropdown', 'navItem': true, 'onSelect': (a) => this.handleSelect(a, null, null)}, [
        bs.MenuItem({'key': 1, 'eventKey': '4.1'}, 'Action'),
        bs.MenuItem({'key': 2, 'eventKey': '4.2'}, 'Another action'),
        bs.MenuItem({'key': 3, 'eventKey': '4.3'}, 'Something else here'),
        bs.MenuItem({'key': 4, 'divider': true}),
        bs.MenuItem({'key': 5, 'eventKey': '4.4'}, 'Separated link')
      ])]
    )

  ]);
}
