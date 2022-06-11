import { ChangeEvent, useEffect, useState } from "react";
import { Button, Container, Form } from "react-bootstrap";
import { Link, useNavigate } from "react-router-dom";
import { IGetNewDoc } from "../models/IGetNewDoc";
import { createDocuments } from "../services/DocumentService";

export function NewDoc() {
  const [newDocument, setNewDocument] = useState<IGetNewDoc>({
    docName: "",
    docDescription: "",
  });

  const navigate = useNavigate();

  function handleChange(e: ChangeEvent<HTMLInputElement>) {
    let name = e.target.name;
    setNewDocument({ ...newDocument, [name]: e.target.value });
  }

  useEffect(() => {
    console.log(newDocument);
  }, [newDocument]);

  function onFormSubmit(event: any) {
    event.preventDefault();
    const html = "<p>Nytt Dokument</p>";

    newDocument.htmlText = html;

    createDocuments(newDocument)
      .then((value) => {
        navigate("/", { replace: true });
        console.log(value);
      })
      .catch(console.log);

    console.log(newDocument);
  }
  return (
    <Container>
      <h2>Nytt Dokument</h2>
      <Form onSubmit={onFormSubmit}>
        <Form.Group className="mb-3" controlId="exampleForm.ControlInput1">
          <Form.Label>Dokumentnamn</Form.Label>
          <Form.Control
            size="lg"
            name="docName"
            type="text"
            value={newDocument.docName}
            onChange={handleChange}
          />
        </Form.Group>
        <Form.Group className="mb-3" controlId="exampleForm.ControlTextarea1">
          <Form.Label>Kort beskrivning</Form.Label>
          <Form.Control
            value={newDocument.docDescription}
            onChange={handleChange}
            name="docDescription"
            size="sm"
            as="textarea"
            rows={3}
          />
        </Form.Group>
        <Button variant="outline-primary" type="submit">
          Submit
        </Button>{" "}
        <Link to="/">
          <Button variant="outline-secondary">Tillbaka</Button>
        </Link>
      </Form>
    </Container>
  );
}
