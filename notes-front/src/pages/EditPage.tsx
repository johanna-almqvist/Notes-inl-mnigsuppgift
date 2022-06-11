import { Editor } from "@tinymce/tinymce-react";
import React from "react";
import { useRef, useState, useEffect } from "react";
import { Button, Container } from "react-bootstrap";
import { Link, useNavigate, useParams } from "react-router-dom";
import { IGetNewDoc } from "../models/IGetNewDoc";
import { getDocumentById, updateDocument } from "../services/DocumentService";

export function EditPage() {
  const editorRef = useRef<any>(null);
  const uppdateraDokument = () => {
    if (editorRef.current) {
      console.log(editorRef.current.getContent());
      if (document !== undefined) {
        const htmlText = editorRef.current.getContent();
        setDocument({ ...document, htmlText });
        updateDocument({ ...document, htmlText })
          .then(() => {
            navigate("/viewdoc/" + documentId, { replace: true });
          })
          .catch(console.log);
      }
    }
  };
  const [document, setDocument] = useState<IGetNewDoc>();
  let { documentId } = useParams();

  const navigate = useNavigate();

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
    return <div>Laddar dokument...</div>;
  }
  return (
    <Container>
      <div>
        <h3>{document?.docName}</h3>
        <p>{document?.docDescription}</p>
      </div>
      <Editor
        onInit={(evt, editor) => (editorRef.current = editor)}
        initialValue={document.tinymceText}
        init={{
          height: 500,
          menubar: false,
          plugins: [
            "advlist",
            "autolink",
            "lists",
            "link",
            "image",
            "charmap",
            "preview",
            "anchor",
            "searchreplace",
            "visualblocks",
            "code",
            "fullscreen",
            "insertdatetime",
            "media",
            "table",
            "code",
            "help",
            "wordcount",
          ],
          toolbar:
            "undo redo | blocks | " +
            "bold italic forecolor | alignleft aligncenter " +
            "alignright alignjustify | bullist numlist outdent indent | " +
            "removeformat | help",
          content_style:
            "body { font-family:Helvetica,Arial,sans-serif; font-size:14px }",
        }}
      />
      <Button variant="outline-success" onClick={uppdateraDokument}>
        Spara
      </Button>{" "}
      <Link to="/">
        <Button variant="outline-secondary">Visa alla dokument</Button>
      </Link>
    </Container>
  );
}
