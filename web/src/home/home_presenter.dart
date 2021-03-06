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

part of dart_web_toolkit_home;

/**
 * Home presenter managing home's view.
 */
class HomePresenter implements mvp.Presenter {
 
  HomeDisplay display;
  
  void addViewTo(ui.HasWidgets container) {
    assert(container is ui.TabLayoutPanel);
    (container as ui.TabLayoutPanel).addTabText(display.asWidget(), display.title);
  }
}

abstract class HomeDisplay implements mvp.Display, mvp.View {
}

