import { useEffect, useState } from "react";
import { Container } from "react-bootstrap";
import { useParams } from "react-router-dom";
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

  return (
    <>
      <Container>
        <div>
          <h3>{document?.docName}</h3>
          <p>{document?.docDescription}</p>
        </div>
      </Container>
    </>
  );
}
