import React, { Component } from 'react';
import { SafeAreaView, View } from 'react-native';
import MainView from './common/components/MainView/';
import CustomViewManager from './common/components/CustomView/manager.js';

export default class App extends Component<Props> {
  render() {
    return (
      <SafeAreaView style={{ flex: 1 }}>
        <MainView />
      </SafeAreaView>
    );
  }
}