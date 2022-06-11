import { useEffect, useState } from "react";
import { Button, Container } from "react-bootstrap";
import { Link, useParams } from "react-router-dom";
import { IGetNewDoc } from "../models/IGetNewDoc";
import { getDocumentById } from "../services/DocumentService";

export function ViewDoc() {
  const [document, setDocument] = useState<IGetNewDoc>();
  let { documentId } = useParams();

  useEffect(() => {
    if (documentId !== undefined) {
      getDocumentById(+documentId)
        .then((data) => {
          console.log(data);
          setDocument(data);
        })
        .catch(console.log);
    }
  }, [documentId]);
  if (document === undefined) {
    return <div>LOADDINAR...</div>;
  }
  return (
    <Container>
      <Container>
        <h3>{document?.docName}</h3>
        <p>{document?.docDescription}</p>
        <div
          dangerouslySetInnerHTML={{ __html: document.tinymceText || "" }}
        ></div>
      </Container>
      <Link to="/">
        <Button variant="outline-primary">Tillbaka</Button>
      </Link>{" "}
      <Link to="edit">
        <Button variant="outline-warning">Redigera</Button>
      </Link>
    </Container>
  );
}
