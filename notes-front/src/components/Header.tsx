import { Button, Container, Nav, Navbar } from "react-bootstrap";
import { Link } from "react-router-dom";

export function Header() {
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
          <Navbar>Dokumenthantering.se</Navbar>
          <Navbar.Toggle aria-controls="basic-navbar-nav" />
        </Container>
      </Navbar>
    </>
  );
}
