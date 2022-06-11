import { Outlet } from "react-router-dom";
import { Header } from "./Header";

interface LayoutProps {
  isLoggedIn: boolean;
  setIsLoggedIn(value: boolean): void;
}

export function Layout(props: LayoutProps) {
  return (
    <>
      <div>
        <header>
          <nav>
            <Header
              isLoggedIn={props.isLoggedIn}
              setIsLoggedIn={props.setIsLoggedIn}
            ></Header>
          </nav>
        </header>
        <main>
          <Outlet></Outlet>
        </main>
      </div>
    </>
  );
}
