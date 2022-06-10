import axios from "axios";
import { IGetNewDoc } from "../models/IGetNewDoc";
import { INewDoc } from "../models/INewDoc";

const baseUrl = "http://localhost:3000";

export async function createDocuments(newDoc: IGetNewDoc): Promise<any> {
  let response = await axios.post(`${baseUrl}/docs`, newDoc);
  return response.data;
}
export async function getAllDocuments(): Promise<IGetNewDoc[]> {
  let response = await axios.get(`${baseUrl}/getAllDocs`);
  return response.data;
}
export async function getDocumentById(id: number): Promise<IGetNewDoc> {
  let response = await axios.get(`${baseUrl}/docs/${id}`);
  return response.data;
}

export async function updateDocument(
  document: IGetNewDoc
): Promise<IGetNewDoc> {
  console.log("updateDocument", document);
  let response = await axios.put(`${baseUrl}/docs/${document.id}`, document);
  return response.data;
}
