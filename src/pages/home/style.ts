import {StyleSheet} from 'react-native';

import {AppColor} from '../../global';

export const styles = StyleSheet.create({
  appBar: {
    flexDirection: 'row',
    justifyContent: 'space-between',
  },

  title: {},

  questionButton: {
    width: 72,
    height: 72,
    borderRadius: 24,
    backgroundColor: AppColor.primary,
    shadowColor: 'rgba(104.65, 57.93, 244.79, 0.50)',
    shadowRadius: 15.5,
  },
});
