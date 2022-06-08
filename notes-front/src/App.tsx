import React from "react";
import logo from "./logo.svg";
import "./App.css";
import { BrowserRouter, Route, Routes } from "react-router-dom";
import { Layout } from "./components/Layout";
import { Start } from "./pages/Start";
import "bootstrap/dist/css/bootstrap.min.css";
import { EditPage } from "./pages/EditPage";
import { AllDocs } from "./pages/AllDocs";
import { NewDoc } from "./pages/NewDoc";
import { ViewDoc } from "./pages/ViewDoc";

function App() {
  return (
    <React.StrictMode>
      <BrowserRouter>
        <Routes>
          <Route path="/" element={<Layout />}>
            <Route index element={<Start />} />
            <Route path="/edit" element={<EditPage />} />
            <Route path="/alldocs" element={<AllDocs />} />
            <Route path="/newdoc" element={<NewDoc />} />
            <Route path="/viewdoc/:documentId" element={<ViewDoc />} />
          </Route>
        </Routes>
      </BrowserRouter>
    </React.StrictMode>
  );
}

export default App;
