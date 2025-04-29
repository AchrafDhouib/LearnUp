
import { Card, CardContent } from "@/components/ui/card";
import { Button } from "@/components/ui/button";
import { Layers } from "lucide-react";
import { Specialty } from "@/types/specialty";
import { useNavigate } from "react-router-dom";

interface SpecialtyListProps {
  specialties: Specialty[];
}

const SpecialtyList = ({ specialties }: SpecialtyListProps) => {
  const navigate = useNavigate();
  
  return (
    <div className="grid gap-4">
      {specialties.map((specialty) => (
        <div key={specialty.id} className="flex items-center p-4 border rounded-lg">
          <div className="flex-shrink-0 h-12 w-12 rounded bg-gray-100 flex items-center justify-center">
            <Layers className="h-6 w-6 text-amber-500" />
          </div>
          <div className="ml-4 flex-grow">
            <h3 className="font-medium">{specialty.name}</h3>
            <p className="text-gray-500 text-sm">
              {specialty.discipline?.name || `Discipline ID: ${specialty.discipline_id}`}
            </p>
          </div>
          <div className="flex space-x-2">
            <Button 
              variant="outline" 
              size="sm"
              onClick={() => navigate(`/admin/specialties/edit/${specialty.id}`)}
            >
              Modifier
            </Button>
            <Button 
              variant="outline" 
              size="sm"
              onClick={() => navigate(`/admin/specialties/${specialty.id}`)}
            >
              Voir
            </Button>
          </div>
        </div>
      ))}
    </div>
  );
};

export default SpecialtyList;
