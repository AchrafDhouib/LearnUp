
import { Toaster } from "@/components/ui/toaster";
import { Toaster as Sonner } from "@/components/ui/sonner";
import { TooltipProvider } from "@/components/ui/tooltip";
import { QueryClient, QueryClientProvider } from "@tanstack/react-query";
import { BrowserRouter, Routes, Route } from "react-router-dom";
import Index from "./pages/Index";
import Login from "./pages/Login";
import Register from "./pages/Register";
import StudentDashboard from "./pages/student/Dashboard";
import TeacherDashboard from "./pages/teacher/Dashboard";
import CourseView from "./pages/CourseView";
import QuizPage from "./pages/QuizPage";
import QuizResults from "./pages/QuizResults";
import CertificatePage from "./pages/CertificatePage";
import NotFound from "./pages/NotFound";
import Courses from "./pages/Courses";
import About from "./pages/About";
import Contact from "./pages/Contact";

// Pages étudiants
import StudentCourses from "./pages/student/Courses";
import StudentQuizzes from "./pages/student/Quizzes";
import StudentCertificates from "./pages/student/Certificates";
import StudentProfile from "./pages/student/Profile";
import StudentSettings from "./pages/student/Settings";

// Pages enseignants
import TeacherCourses from "./pages/teacher/Courses";
import TeacherQuizzes from "./pages/teacher/Quizzes";
import TeacherStudents from "./pages/teacher/Students";
import TeacherSettings from "./pages/teacher/Settings";
import CreateCourse from "./pages/teacher/CreateCourse";

// Pages légales
import TermsOfService from "./pages/legal/TermsOfService";
import PrivacyPolicy from "./pages/legal/PrivacyPolicy";
import CookiePolicy from "./pages/legal/CookiePolicy";

const queryClient = new QueryClient();

const App = () => (
  <QueryClientProvider client={queryClient}>
    <TooltipProvider>
      <Toaster />
      <Sonner />
      <BrowserRouter>
        <Routes>
          <Route path="/" element={<Index />} />
          <Route path="/login" element={<Login />} />
          <Route path="/register" element={<Register />} />
          <Route path="/courses" element={<Courses />} />
          <Route path="/about" element={<About />} />
          <Route path="/contact" element={<Contact />} />
          
          {/* Routes étudiant */}
          <Route path="/student/dashboard" element={<StudentDashboard />} />
          <Route path="/student/courses" element={<StudentCourses />} />
          <Route path="/student/quizzes" element={<StudentQuizzes />} />
          <Route path="/student/certificates" element={<StudentCertificates />} />
          <Route path="/student/profile" element={<StudentProfile />} />
          <Route path="/student/settings" element={<StudentSettings />} />
          
          {/* Routes enseignant */}
          <Route path="/teacher/dashboard" element={<TeacherDashboard />} />
          <Route path="/teacher/courses" element={<TeacherCourses />} />
          <Route path="/teacher/quizzes" element={<TeacherQuizzes />} />
          <Route path="/teacher/students" element={<TeacherStudents />} />
          <Route path="/teacher/settings" element={<TeacherSettings />} />
          <Route path="/teacher/create-course" element={<CreateCourse />} />
          
          <Route path="/course/:id" element={<CourseView />} />
          <Route path="/quiz/:id" element={<QuizPage />} />
          <Route path="/quiz/:id/results" element={<QuizResults />} />
          <Route path="/certificate/:id" element={<CertificatePage />} />
          
          {/* Pages légales */}
          <Route path="/terms-of-service" element={<TermsOfService />} />
          <Route path="/privacy-policy" element={<PrivacyPolicy />} />
          <Route path="/cookie-policy" element={<CookiePolicy />} />
          
          <Route path="*" element={<NotFound />} />
        </Routes>
      </BrowserRouter>
    </TooltipProvider>
  </QueryClientProvider>
);

export default App;
