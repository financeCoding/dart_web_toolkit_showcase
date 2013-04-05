//Copyright (C) 2012 Sergey Akopkokhyants. All Rights Reserved.
//Author: akserg

part of dart_web_toolkit_event;

/**
 * Implemented by objects that handle {@link AttachEvent}.
 */
class ValueChangeHandlerAdapter<T> extends EventHandlerAdapter implements ValueChangeHandler<T> {

  ValueChangeHandlerAdapter(EventHandlerAdapterCallback callback) : super(callback);

  /**
   * Called when {@link ValueChangeEvent} is fired.
   *
   * @param event the {@link ValueChangeEvent} that was fired
   */
  void onValueChange(ValueChangeEvent<T> event) {
    callback(event);
  }
}
