// Copyright (c) 2016, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.
@HtmlImport('main_app.html')
library orderapp.lib.main_app;		

import 'dart:html';

import 'package:orderapp/order_item.dart';

import 'package:polymer_elements/paper_input.dart';
import 'package:polymer_elements/paper_button.dart';
import 'package:polymer_elements/gold_email_input.dart';
import 'package:polymer_elements/iron_icon.dart';
import 'package:polymer_elements/paper_dropdown_menu.dart';
import 'package:polymer_elements/paper_listbox.dart';
import 'package:polymer/polymer.dart';
import 'package:web_components/web_components.dart';

/// Uses [PaperInput]
@PolymerRegister('main-app')
class MainApp extends PolymerElement {
  @property
  String text;
  @property
  String customerName;
  @property
  String email;
  @property
  String selectedMenuItem;
  @property
  String selected  = '';

  PaperListbox get _itemList => querySelector('#ItemList');
  SelectElement get _optionOne => querySelector('#OptionOne');
  LabelElement get _optionOneLabel => querySelector('#OptionOneLabel');
  SelectElement get _optionTwo => querySelector('#OptionTwo');
  LabelElement get _optionTwoLabel => querySelector('#OptionTwoLabel');


  /// Constructor used to create instance of MainApp.
  MainApp.created() : super.created();

  void ready() {

  }

  @Listen('iron-select')
  void listenSelect(event, [_]) {
    if (selectedMenuItem != null) {
      OrderItem orderItem = new OrderItem();
      _optionOneLabel.text = orderItem.option1Label;
      for (int i = 0; i < orderItem.option1.length; i++) {
        OptionElement optionElement = new OptionElement();
        optionElement.text = orderItem.option1[i];
        _optionOne.children.add(optionElement);
      }
      _optionOne.hidden = false;
      _optionOneLabel.hidden = false;
    }
  }

  // Optional lifecycle methods - uncomment if needed.

//  /// Called when an instance of main-app is inserted into the DOM.
//  attached() {
//    super.attached();
//  }

//  /// Called when an instance of main-app is removed from the DOM.
//  detached() {
//    super.detached();
//  }

//  /// Called when an attribute (such as a class) of an instance of
//  /// main-app is added, changed, or removed.
//  attributeChanged(String name, String oldValue, String newValue) {
//    super.attributeChanged(name, oldValue, newValue);
//  }

//  /// Called when main-app has been fully prepared (Shadow DOM created,
//  /// property observers set up, event listeners attached).
//  ready() {
//  }
}
