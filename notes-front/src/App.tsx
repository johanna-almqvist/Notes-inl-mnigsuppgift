import React, { useEffect, useState } from "react";
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
  const [isLoggedIn, setIsLoggedIn] = useState<boolean>(false);
  useEffect(() => {
    setIsLoggedIn(JSON.parse(localStorage.getItem("isLoggedIn") || "false"));
  }, []);
  function setIsLoggedInWithLocalStorage(value: boolean) {
    setIsLoggedIn(value);
    localStorage.setItem("isLoggedIn", JSON.stringify(value));
  }
  return (
    <React.StrictMode>
      <BrowserRouter>
        <Routes>
          <Route
            path="/"
            element={
              <Layout
                isLoggedIn={isLoggedIn}
                setIsLoggedIn={setIsLoggedInWithLocalStorage}
              />
            }
          >
            {isLoggedIn ? (
              <>
                <Route path="/edit" element={<EditPage />} />
                <Route path="/" element={<AllDocs />} />
                <Route path="/newdoc" element={<NewDoc />} />
                <Route path="/viewdoc/:documentId" element={<ViewDoc />} />
                <Route
                  path="/viewdoc/:documentId/edit"
                  element={<EditPage />}
                />
              </>
            ) : (
              <Route index element={<Start setIsLoggedIn={setIsLoggedIn} />} />
            )}
          </Route>
        </Routes>
      </BrowserRouter>
    </React.StrictMode>
  );
}

export default App;
