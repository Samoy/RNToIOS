/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 * @flow
 */

import React, {Component} from 'react';
import {
    AppRegistry,
    StyleSheet,
    Text,
    View,
    TouchableOpacity,
    NativeModules
} from 'react-native';

export default class Demo extends Component {
    render() {
        var contents = this.props["scores"].map(
            score => <Text key={score.name}>{score.name}:{score.value}{"\n"}</Text>
        );
        return (
            <View style={styles.container}>
                <Text style={styles.highScoresTitle}>
                    2048 High Scores!
                </Text>
                <Text style={styles.scores}>
                    {contents}
                </Text>
                <TouchableOpacity onPress={()=>{
                    //获取原生模块
                    let RNToNative = NativeModules.RNToNativeBridge;
                    //调用原生方法
                    RNToNative.gotoNative('原生页面');
                }}>
                    <Text style={{color: 'blue'}}>点我跳转到下一个原生界面</Text>
                </TouchableOpacity>
            </View>
        );
    }
}

const styles = StyleSheet.create({
    container: {
        flex: 1,
        justifyContent: 'center',
        alignItems: 'center',
        backgroundColor: '#FFFFFF',
    },
    highScoresTitle: {
        fontSize: 20,
        textAlign: 'center',
        margin: 10,
    },
    scores: {
        textAlign: 'center',
        color: '#333333',
        marginBottom: 5,
    },
});

AppRegistry.registerComponent('Demo', () => Demo);
