/*
 * Copyright 2013 Sergey Akopkokhyants.
 * 
 * Licensed under the Apache License, Version 2.0 (the "License"); you may not
 * use this file except in compliance with the License. You may obtain a copy of
 * the License at
 * 
 * http://www.apache.org/licenses/LICENSE-2.0
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
 * WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
 * License for the specific language governing permissions and limitations under
 * the License.
 */

//Author: akserg

library dart_web_toolkit_showcase;

import 'dart:html' as dart_html;

import 'package:dart_web_toolkit/event.dart' as event;
import 'package:dart_web_toolkit/ui.dart' as ui;
import 'package:dart_web_toolkit/util.dart' as util;
import 'package:dart_web_toolkit/i18n.dart' as i18n;

part 'page.dart';
part 'home_page.dart';
part 'component_page.dart';

part 'component/component_model.dart';
part 'component/component_manager.dart';
part 'component/tree_view.dart';
part 'component/component_preview.dart';

part 'component/widget/button_model.dart';
part 'component/widget/checkbox_model.dart';
part 'component/widget/composite_model.dart';

void main() {
  // Main panel
  ui.DockLayoutPanel mainPanel = new ui.DockLayoutPanel(util.Unit.PX);
  // Add main panel to root layout panel
  ui.RootLayoutPanel.get().add(mainPanel);
  
  // Create Top content
  ui.HorizontalPanel topPanel = new ui.HorizontalPanel();
  topPanel.addStyleName("topPanel");
  topPanel.setSize("100%", "100%");
  // Add top panel to main
  mainPanel.addNorth(topPanel, 30.0);
  // Add Product name
  topPanel.add(new ui.Html("<div id=\"header-content\"><strong>Dart Web Toolkit Docs </strong>0.2</div>"));
  
  // Create status content
  ui.DockLayoutPanel statusPanel = new ui.DockLayoutPanel(util.Unit.PX);
  statusPanel.addStyleName("statusPanel");
  statusPanel.setSize("100%", "100%");
  // Add top panel to main
  mainPanel.addSouth(statusPanel, 20.0);
  // Add Product name
  ui.Html copyright = new ui.Html("<div style=\"text-align:right;\">Copyright 2012-2013 Sergey Akopkokhyants&nbsp;</div>");
  statusPanel.add(copyright);

  // Create Center panel
  ui.TabLayoutPanel centerPanel = new ui.TabLayoutPanel(25.0, util.Unit.PX);
  centerPanel.setAnimationDuration(1000);
  centerPanel.addStyleName("centerPanel");
  centerPanel.setSize("100%", "100%");
  // Add center panel to main
  mainPanel.add(centerPanel);

  // First Tab - Home
  Page home = new HomePage(); 
  centerPanel.add(home.content, home.title);
  
  // Second Tab - Component
  Page component = new ComponentPage();
  centerPanel.add(component.content, component.title);
  
  // Thierd Panel - Examples
  centerPanel.add(new ui.Html("Examples"), "Examples");
}