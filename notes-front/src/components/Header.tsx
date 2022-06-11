import { Button, Container, Navbar } from "react-bootstrap";
import { Link } from "react-router-dom";

interface HeaderProps {
  isLoggedIn: boolean;
  setIsLoggedIn(value: boolean): void;
}

export function Header(props: HeaderProps) {
  const myStyle = {
    color: "white",
    backgroundColor: "grey",
    padding: "10px",
    fontFamily: "Sans-Serif",
  };
  return (
    <>
      <Navbar style={myStyle}>
        <Container>
          <Link style={{ textDecoration: "inherit", color: "inherit" }} to="/">
            <Navbar>Dokumenthantering.se</Navbar>
          </Link>
          <Navbar.Toggle aria-controls="basic-navbar-nav" />
          {props.isLoggedIn && (
            <Button
              variant="light"
              onClick={() => {
                props.setIsLoggedIn(false);
              }}
            >
              Logga ut
            </Button>
          )}
        </Container>
      </Navbar>
    </>
  );
}
