import { Button, Form } from "react-bootstrap";

export function Start() {
  return (
    <>
      <Form>
        <Form.Group className="mb-3" controlId="formBasicEmail">
          <Form.Label>Användarnamn</Form.Label>
          <Form.Control type="text" />
        </Form.Group>

        <Form.Group className="mb-3" controlId="formBasicPassword">
          <Form.Label>Lösenord</Form.Label>
          <Form.Control type="password" />
        </Form.Group>

        <Button variant="primary" type="submit">
          Logga in
        </Button>
      </Form>
    </>
  );
}
