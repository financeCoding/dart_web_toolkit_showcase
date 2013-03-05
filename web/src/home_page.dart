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

part of dart_web_toolkit_showcase;

/**
 * The Home page contents main information about DWT showcase.
 */
class HomePage implements Page {
  
  /**
   * Return page title.
   */
  String get title => "Home";
  
  /**
   * Return page content.
   */
  ui.Widget get content {
    ui.FlexTable layout = new ui.FlexTable();
    layout.setSize("100%", "100%");
    layout.setCellSpacing(6);
    ui.FlexCellFormatter cellFormatter = layout.getFlexCellFormatter();

    // Add a title to the form
    layout.setHtml(0, 0, "Welcom to Dart Web Toolkit Showcase");
    cellFormatter.setColSpan(0, 0, 2);
    cellFormatter.setHorizontalAlignment(0, 0, i18n.HasHorizontalAlignment.ALIGN_CENTER);

    // Add some standard form options
    layout.setHtml(1, 0, "Dart Web Toolkit is a pure Dart application framework that works on all modern browsers from IE6 to the latest version of Chrome. It enables you to create the best cross-platform applications using nothing but a browser, and has a phenomenal API.");
    layout.setWidget(1, 1, new ui.Image("img/preview.png"));
//    layout.setHtml(2, 0, "Description:");
//    layout.setWidget(2, 1, new ui.TextBox());

    // Wrap the content in a DecoratorPanel
    ui.DecoratorPanel decPanel = new ui.DecoratorPanel();
    decPanel.setWidget(layout);
    
    return layout;
  }
}