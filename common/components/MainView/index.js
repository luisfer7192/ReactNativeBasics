// @flow
import React, { Component } from 'react';
import { View, Button } from 'react-native';
import CustomView from '../CustomView';
import CustomManager from '../CustomView/manager.js';

type Props = {};
type State = {
  cont: number,
  color: string
};

export default class MainView extends Component<Props, State> {

  constructor(props: Props) {
    super(props);

    this.state = {
      cont: 0,
      color: "#0090F8"
    };
  }

  onIncreaseValue = (data: Object) => {
    const cont = this.state.cont + 1;
    if(cont % 10 === 0) {
      const color = '#' + Math.random().toString(16).slice(2, 8).toUpperCase();
      this.setState({ cont, color });
    } else {
      this.setState({ cont });
    }
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
          color={this.state.color}
        />
        <Button
          onPress={this.onButtonPressed}
          title="RN Button calls native function"
        />
      </View>
    );
  }
}