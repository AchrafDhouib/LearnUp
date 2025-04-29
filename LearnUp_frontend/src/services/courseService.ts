import apiClient from './api';
import { Course } from '@/types/course';

export const getCourses = async () => {
  const response = await apiClient.get('/courses');
  return response.data;
};

export const getCourse = async (id: number) => {
  const response = await apiClient.get(`/courses/${id}`);
  return response.data;
};

export const createCourse = async (data: Partial<Course>) => {
  const response = await apiClient.post('/courses', data);
  return response.data;
};

export const updateCourse = async (id: number, data: Partial<Course>) => {
  const response = await apiClient.put(`/courses/${id}`, data);
  return response.data;
};

export const deleteCourse = async (id: number) => {
  const response = await apiClient.delete(`/courses/${id}`);
  return response.data;
};

export const getCoursesByDiscipline = async (disciplineId: number) => {
  const response = await apiClient.get(`/courses/discipline/${disciplineId}`);
  return response.data;
};

export const getCoursesBySpecialty = async (specialtyId: number) => {
  const response = await apiClient.get(`/courses/speciality/${specialtyId}`);
  return response.data;
};
