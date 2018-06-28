// @flow
import React, { Component } from 'react';
import { View, Button } from 'react-native';
import CustomView from '../CustomView';
import CustomManager from '../CustomView/manager.js';

type Props = {};
type State = {
  cont: number
};

export default class MainView extends Component<Props, State> {

  constructor(props: Props) {
    super(props);

    this.state = {
      cont: 0
    };
  }

  onIncreaseValue = (data: Object) => {
    this.setState({ cont: this.state.cont + 1 })
  }

  onButtonPressed = () => {
    CustomManager.show('Current React State', 'cont:' + this.state.cont);
  }

  render() {
    return (
      <View style={{ flex: 1 }}>
        <CustomView
          style={{ flex: 1 }}
          message={"" + this.state.cont}
          onIncreaseValue={this.onIncreaseValue}
        />
        <Button
          onPress={this.onButtonPressed}
          title="RN Button calls native function"
        />
      </View>
    );
  }
}