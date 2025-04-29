import { Specialty } from './specialty';
import { User } from './user';

export interface Course {
  id: number;
  name: string;
  speciality_id: number;
  creator_id: number;
  description: string;
  image: string;
  created_at: string;
  updated_at: string;
  speciality?: Specialty;
  creator?: User;
  exam?: any;
}