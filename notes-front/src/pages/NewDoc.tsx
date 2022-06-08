import { ChangeEvent, useEffect, useState } from "react";
import { Button, Form } from "react-bootstrap";
import { INewDoc } from "../models/INewDoc";
import { createDocuments } from "../services/DocumentService";

export function NewDoc() {
  const [newDocument, setNewDocument] = useState<INewDoc>({
    docName: "",
    docDescription: "",
  });

  function handleChange(e: ChangeEvent<HTMLInputElement>) {
    let name = e.target.name;
    setNewDocument({ ...newDocument, [name]: e.target.value });
  }

  useEffect(() => {
    console.log(newDocument);
  }, [newDocument]);

  function onFormSubmit(event: any) {
    event.preventDefault();
    createDocuments(newDocument)
      .then((value) => {
        console.log(value);
      })
      .catch(console.log);

    console.log(newDocument);
  }
  return (
    <>
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
        <Button variant="primary" type="submit">
          Submit
        </Button>
      </Form>
    </>
  );
}
