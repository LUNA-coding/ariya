import Home from './pages/home';
import Test from './pages/test';
import Profile from './pages/profile';
import Dictionary from './pages/dictionary';

interface Route {
  title: string;
  page: React.JSX.Element;
}

interface Routes {
  [key: string]: Route;
}

export const routes: Routes = {
  home: {
    title: '홈',
    page: Home(),
    // icon: 'home',
  },
  dictionary: {
    title: '사전',
    page: Dictionary(),
  },
  test: {
    title: '테스트',
    page: Test(),
  },
  profile: {
    title: '프로필',
    page: Profile(),
  },
};
