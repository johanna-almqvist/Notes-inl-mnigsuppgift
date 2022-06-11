import { ChangeEvent, useState } from "react";
import { Button, Container, Form } from "react-bootstrap";
import { ILoginUser } from "../models/ILoginUser";
import { loginFunction } from "../services/DocumentService";

interface StartProps {
  setIsLoggedIn(v: boolean): void;
}

export function Start(props: StartProps) {
  const [login, setLogin] = useState<ILoginUser>({
    username: "",
    password: "",
  });

  function handleChange(e: ChangeEvent<HTMLInputElement>) {
    let name = e.target.name;
    setLogin({ ...login, [name]: e.target.value });
  }

  function onFormSubmit(event: any) {
    event.preventDefault();

    loginFunction(login)
      .then((value) => {
        console.log(value);
        localStorage.setItem("isLoggedIn", JSON.stringify(value));
        props.setIsLoggedIn(value);
      })
      .catch(() => {});
  }
  return (
    <Container>
      <Form onSubmit={onFormSubmit}>
        <Form.Group className="mb-3" controlId="formBasicEmail">
          <Form.Label>Användarnamn</Form.Label>
          <Form.Control
            type="text"
            name="username"
            required
            value={login.username}
            onChange={handleChange}
          />
        </Form.Group>

        <Form.Group className="mb-3" controlId="formBasicPassword">
          <Form.Label>Lösenord</Form.Label>
          <Form.Control
            type="password"
            name="password"
            required
            value={login.password}
            onChange={handleChange}
          />
        </Form.Group>

        <Button variant="primary" type="submit">
          Logga in
        </Button>
      </Form>
    </Container>
  );
}
