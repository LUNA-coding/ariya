import React from 'react';

import {AppColor} from './global.ts';

import Home from './pages/home';
import Test from './pages/test';
import Profile from './pages/profile';
import Dictionary from './pages/dictionary';

import HomeIcon from '../assets/icons/home.svg';
import TestIcon from '../assets/icons/kid_star.svg';
import ProfileIcon from '../assets/icons/person.svg';
import DictionaryIcon from '../assets/icons/auto_stories.svg';

interface Route {
  title: string;
  page: React.JSX.Element;
  icon: Function;
}

interface Routes {
  [key: string]: Route;
}

export const routes: Routes = {
  home: {
    title: '홈',
    page: Home(),
    icon: (currentLoction: string): React.JSX.Element => {
      return (
        <HomeIcon
          width={28}
          height={28}
          fill={currentLoction === 'home' ? AppColor.primary : AppColor.grey500}
        />
      );
    },
  },
  dictionary: {
    title: '사전',
    page: Dictionary(),
    icon: (currentLoction: string): React.JSX.Element => {
      return (
        <DictionaryIcon
          width={28}
          height={28}
          fill={
            currentLoction === 'dictionary'
              ? AppColor.primary
              : AppColor.grey500
          }
        />
      );
    },
  },
  test: {
    title: '테스트',
    page: Test(),
    icon: (currentLoction: string): React.JSX.Element => {
      return (
        <TestIcon
          width={28}
          height={28}
          fill={currentLoction === 'test' ? AppColor.primary : AppColor.grey500}
        />
      );
    },
  },
  profile: {
    title: '프로필',
    page: Profile(),
    icon: (currentLoction: string): React.JSX.Element => {
      return (
        <ProfileIcon
          width={28}
          height={28}
          fill={
            currentLoction === 'profile' ? AppColor.primary : AppColor.grey500
          }
        />
      );
    },
  },
};
