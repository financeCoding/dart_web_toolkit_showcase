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
 * The Widgets page keeps main information about widgets and panels using in 
 * framework.
 */
class WidgetPage implements Page {
  
  /**
   * Return page title.
   */
  String get title => "Widgets";
  
  ui.Label _nameLabel;
  ui.Label _descriptionLabel;
  ui.Panel _previewPanel;
  ui.Panel _codePanel;
  ui.Panel _stylePanel;
  
  /**
   * Return page content.
   */
  ui.Widget get content {
    // Create split layout panel
    ui.SplitLayoutPanel splitPanel = new ui.SplitLayoutPanel();

    // Create a static tree
    ui.Tree staticTree = new ui.Tree();
    staticTree.setAnimationEnabled(true);
    // Create a container to hold the tree
    ui.ScrollPanel staticTreeWrapper = new ui.ScrollPanel(staticTree);
    staticTreeWrapper.setSize("100%", "100%");
    
    // Add staticTree wrapper to west side of split panel
    splitPanel.addWest(staticTreeWrapper, 200.0);

    // Add vertical split panel
    ui.SplitLayoutPanel verticalPanel = new ui.SplitLayoutPanel();
    verticalPanel.setSize("100%", "100%");
    splitPanel.add(verticalPanel);

    // Add Horizontal split panel
    ui.SplitLayoutPanel horizontalPanel = new ui.SplitLayoutPanel();
    horizontalPanel.setSize("100%", "100%");
    verticalPanel.addSouth(horizontalPanel, 300.0);
//    
//    _codePanel = new ui.SimplePanel();
//    horizontalPanel.add(_codePanel);
//    
//    _codePanel.add(new ui.Html("{Code}"));
//    
//    _stylePanel = new ui.SimplePanel();
//    horizontalPanel.addEast(_stylePanel, 300.0);
//    
//    _stylePanel.add(new ui.Html("{Style}"));

    
    ui.DockLayoutPanel infoPanel = new ui.DockLayoutPanel(util.Unit.PX);
    infoPanel.setSize("100%", "100%");
    verticalPanel.add(infoPanel);
    
//    _nameLabel = new ui.Label("{Name}");
//    infoPanel.addNorth(_nameLabel, 25.0);
//    
//    _descriptionLabel = new ui.Label("{Description}");
//    infoPanel.addNorth(_descriptionLabel, 75.0);
//    
//    _previewPanel = new ui.SimplePanel();
//    infoPanel.add(_previewPanel);
//    
//    _previewPanel.add(new ui.Html("{Widget Preview}"));
    
    return splitPanel;
  }
}
