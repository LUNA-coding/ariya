import React from 'react';
import {Text, Touchable, TouchableOpacity, View} from 'react-native';

import {styles} from './style';

function Home(): JSX.Element {
  return (
    <>
      <View style={styles.appBar}>
        <Text>홈</Text>
        <Text>홈</Text>
      </View>
      <View>
        {/* behind button */}
        <TouchableOpacity>{/* <ArrowIcon /> */}</TouchableOpacity>
        <Text>Chapter 1. 돈이란 무엇일까?</Text>
        {/* forward button */}
        <TouchableOpacity>{/* <ArrowIcon /> */}</TouchableOpacity>
      </View>
      <View>
        <Text>돼지 저금통</Text>
      </View>
      <View>
        <Text>문제들</Text>
      </View>
    </>
  );
}

export default Home;
