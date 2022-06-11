import { useEffect, useState } from "react";
import { Button, Col, Container, Row, Spinner } from "react-bootstrap";
import { Link } from "react-router-dom";
import { IGetNewDoc } from "../models/IGetNewDoc";
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
    <Container className="pt-2">
      <Row>
        <Col>
          <h2>Alla Dokument</h2>
        </Col>
        <Col>
          <Link to="/newdoc">
            <Button variant="outline-success" size="lg">
              Skapa nytt Dokument
            </Button>
          </Link>
        </Col>
      </Row>

      <Container>
        {loading ? (
          <Spinner animation="border" />
        ) : (
          <div>
            {allDocuments.map((document) => {
              return (
                <div>
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
    </Container>
  );
}
