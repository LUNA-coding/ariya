import Home from './pages/home';

interface Route<string, Route> {
  [key: string]: Route;
}

type Route = {
  title: string;
  page: JSX.Element;
};

export const routes: Dictionary<string, Route> = {
  home: {
    title: '홈',
    page: Home(),
  },
};
