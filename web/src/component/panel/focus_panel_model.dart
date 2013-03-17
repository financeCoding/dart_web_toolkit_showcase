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

part of dart_web_toolkit_component;

class FocusPanelModel implements mvp.ViewModel {
  
  // Component's category name
  String get category => "Panel";
  
  // Return component's name
  String get name => "FocusPanel";
  
  // Return component's description
  String get desc => '''
A simple panel that makes its contents focusable, and adds the ability to catch 
mouse and keyboard events.
''';
  
  // Return code snipet how to use component
  String get code {
    return '''

''';
  }
  
  // Return style snipet for using component
  String get style {
    return "";
  }
  
  /**
   * Return instantiated Component code.
   */
  ui.Widget asWidget() {

    ui.FocusPanel panel = new ui.FocusPanel();
    panel.setSize("200px", "120px");
    panel.addStyleName("demo-panel-borderless");
    
    ui.Label label = new ui.Label("Label");
    label.setWidth("100px");
    label.addStyleName("demo-label");
    
    event.AllMouseHandlersAdapter allMouseHandlersAdapter = new event.AllMouseHandlersAdapter((event.MouseEvent evt){
      if (evt is event.MouseOverEvent) {
        label.addStyleName("demo-label-over");
      } else if (evt is event.MouseOutEvent) {
        label.removeStyleName("demo-label-over");
      }
    });
    label.addMouseOverHandler(allMouseHandlersAdapter);
    label.addMouseOutHandler(allMouseHandlersAdapter);
    
    panel.add(label);

    // Return the content
    return panel;
  }
}