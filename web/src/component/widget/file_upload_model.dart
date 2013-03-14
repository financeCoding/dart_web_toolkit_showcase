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

class FileUploadModel implements mvp.ViewModel {
  
  // Component's category name
  String get category => "Widget";
  
  // Return component's name
  String get name => "FileUpload";
  
  // Return component's description
  String get desc => "A widget that wraps the HTML <input type='file'> element. This widget must be used with FormPanel if it is to be submitted to a server.";
  
  // Return code snipet how to use component
  String get code {
    return '''
// Create a vertical panel to align the content
ui.VerticalPanel vPanel = new ui.VerticalPanel();

// Add a label
vPanel.add(new ui.Html("Select File"));

// Add a file upload widget
ui.FileUpload fileUpload = new ui.FileUpload();
vPanel.add(fileUpload);

// Add a button to upload the file
ui.Button uploadButton = new ui.Button("Upload");
uploadButton.addClickHandler(new event.ClickHandlerAdapter((event.ClickEvent evt) {
  String filename = fileUpload.getFilename();
  if (filename.length == 0) {
    dart_html.window.alert("File not selected");
  } else {
    dart_html.window.alert("File uploaded successfully");
  }
}));
vPanel.add(new ui.Html("<br>"));
vPanel.add(uploadButton);
// Return the layout panel
return vPanel;
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
    // Create a vertical panel to align the content
    ui.VerticalPanel vPanel = new ui.VerticalPanel();

    // Add a label
    vPanel.add(new ui.Html("Select File"));

    // Add a file upload widget
    ui.FileUpload fileUpload = new ui.FileUpload();
    vPanel.add(fileUpload);

    // Add a button to upload the file
    ui.Button uploadButton = new ui.Button("Upload");
    uploadButton.addClickHandler(new event.ClickHandlerAdapter((event.ClickEvent evt) {
      String filename = fileUpload.getFilename();
      if (filename.length == 0) {
        dart_html.window.alert("File not selected");
      } else {
        dart_html.window.alert("File uploaded successfully");
      }
    }));
    vPanel.add(new ui.Html("<br>"));
    vPanel.add(uploadButton);

    // Return the layout panel
    return vPanel;
  }
}
