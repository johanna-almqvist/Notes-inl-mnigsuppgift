import { useEffect, useState } from "react";
import { Button, Container, Spinner } from "react-bootstrap";
import { Link } from "react-router-dom";
import { IGetNewDoc } from "../models/IGetNewDoc";
import { INewDoc } from "../models/INewDoc";
import { getAllDocuments } from "../services/DocumentService";

export function AllDocs() {
  const [allDocuments, setAllDocuments] = useState<IGetNewDoc[]>([]);
  const [loading, setLoading] = useState<boolean>(false);

  useEffect(() => {
    setLoading(true);
    getAllDocuments()
      .then((data) => {
        setAllDocuments(data);
        setLoading(false);
      })
      .catch(console.log);
  }, []);

  return (
    <>
      <h2>Alla Dokument</h2>
      <Container>
        {loading ? (
          <Spinner animation="border" />
        ) : (
          <div>
            {allDocuments.map((document) => {
              return (
                <div>
                  <p>{document.id}</p>
                  <Link to={`/viewdoc/${document.id}`}>
                    <h3>{document.docName}</h3>
                  </Link>
                  <p>{document.docDescription}</p>
                </div>
              );
            })}
          </div>
        )}
      </Container>
      <Link to="/newdoc">
        <Button>Skapa nytt Dokument</Button>
      </Link>
    </>
  );
}
