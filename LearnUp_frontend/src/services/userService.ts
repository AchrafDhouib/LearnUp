
import apiClient from './api';

export const getUsers = async () => {
  const response = await apiClient.get('/users');
  return response.data;
};

export const getUser = async (id: number) => {
  const response = await apiClient.get(`/users/${id}`);
  return response.data;
};

export const activateUser = async (id: number) => {
  const response = await apiClient.patch(`/users/${id}/activate`);
  return response.data;
};

export const deactivateUser = async (id: number) => {
  const response = await apiClient.patch(`/users/${id}/deactivate`);
  return response.data;
};
