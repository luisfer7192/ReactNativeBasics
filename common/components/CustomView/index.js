// @flow
import PropTypes from 'prop-types';
import React, { Component } from 'react';
import { requireNativeComponent } from 'react-native';

type Props = {
  message: string,
  onIncreaseValue: Function
};

class CustomView extends Component<Props> {

  _onIncreaseValue = (event) => {
    if (!this.props.onIncreaseValue) {
      return;
    }

    // process raw event...
    this.props.onIncreaseValue(event.nativeEvent);
  }

  render() {
    return <RCTCustomView
      {...this.props}
      onIncreaseValue={this._onIncreaseValue} />;
  }
}

CustomView.propTypes = {
  message: PropTypes.string,
  onIncreaseValue: PropTypes.func
};

var RCTCustomView = requireNativeComponent('RCTCustomView', CustomView, {
  nativeOnly: {
    testID: true,
    accessibilityComponentType: true,
    renderToHardwareTextureAndroid: true,
    accessibilityLabel: true,
    accessibilityLiveRegion: true,
    importantForAccessibility: true,
    onLayout: true,
    nativeID: true
  }
});

module.exports = CustomView;