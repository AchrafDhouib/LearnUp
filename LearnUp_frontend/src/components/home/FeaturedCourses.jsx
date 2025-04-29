
import { Button } from "@/components/ui/button";
import CourseCard from "@/components/CourseCard";
import { Link } from "react-router-dom";
import { useState } from "react";
import { courses } from "@/data/mockData";

const FeaturedCourses = () => {
  const [featuredCourses] = useState(courses.slice(0, 3));

  return (
    <section className="py-20 px-4 bg-gray-50">
      <div className="max-w-7xl mx-auto">
        <div className="flex flex-col md:flex-row justify-between items-center mb-16">
          <h2 className="text-3xl font-bold relative mb-8 md:mb-0">
            <span className="relative z-10">Cours populaires</span>
            <span className="absolute bottom-0 left-0 w-24 h-2 bg-primary rounded-full"></span>
          </h2>
          <Link to="/courses">
            <Button variant="outline" className="text-primary border-2 border-primary hover:text-primary-dark hover:border-primary-dark font-semibold">
              Voir tous les cours
            </Button>
          </Link>
        </div>
        <div className="grid md:grid-cols-2 lg:grid-cols-3 gap-8">
          {featuredCourses.map((course) => (
            <CourseCard key={course.id} {...course} />
          ))}
        </div>
        <div className="text-center mt-16 mb-10">
          <Link to="/register">
            <Button size="lg" className="bg-primary hover:bg-primary-dark shadow-lg px-8 py-5 font-semibold border-2 border-primary-dark">
              Rejoindre la communauté
            </Button>
          </Link>
        </div>
      </div>
    </section>
  );
};

export default FeaturedCourses;