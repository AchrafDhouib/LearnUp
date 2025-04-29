
import { useState } from "react";
import { useQuery, useMutation, useQueryClient } from "@tanstack/react-query";
import { useToast } from "@/components/ui/use-toast";
import { Card, CardContent } from "@/components/ui/card";
import { Button } from "@/components/ui/button";
import { Search, Plus, Trash2, Edit } from "lucide-react";
import { Input } from "@/components/ui/input";
import {
  Dialog,
  DialogContent,
  DialogDescription,
  DialogFooter,
  DialogHeader,
  DialogTitle,
  DialogTrigger,
} from "@/components/ui/dialog";
import {
  AlertDialog,
  AlertDialogAction,
  AlertDialogCancel,
  AlertDialogContent,
  AlertDialogDescription,
  AlertDialogFooter,
  AlertDialogHeader,
  AlertDialogTitle,
  AlertDialogTrigger,
} from "@/components/ui/alert-dialog";
import DashboardLayout from "@/components/DashboardLayout";
import { getSpecialties, deleteSpecialty } from "@/services/specialtyService";
import { Specialty } from "@/types/specialty";

const SpecialtiesIndex = () => {
  const { toast } = useToast();
  const queryClient = useQueryClient();
  const [searchTerm, setSearchTerm] = useState("");

  // Fetch specialties data
  const { data: specialties = [], isLoading } = useQuery({
    queryKey: ['specialties'],
    queryFn: getSpecialties,
  });

  // Delete specialty mutation
  const deleteMutation = useMutation({
    mutationFn: deleteSpecialty,
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ['specialties'] });
      toast({
        title: "Spécialité supprimée",
        description: "La spécialité a été supprimée avec succès.",
      });
    },
  });

  // Filter specialties based on search term
  const filteredSpecialties = specialties.filter((specialty: Specialty) => 
    specialty.name.toLowerCase().includes(searchTerm.toLowerCase()) || 
    (specialty.description && specialty.description.toLowerCase().includes(searchTerm.toLowerCase())) ||
    (specialty.discipline?.name && specialty.discipline.name.toLowerCase().includes(searchTerm.toLowerCase()))
  );

  return (
    <DashboardLayout userType="admin">
      <div className="space-y-6">
        <div className="flex justify-between items-center">
          <h1 className="text-3xl font-bold">Spécialités</h1>
          
          <Dialog>
            <DialogTrigger asChild>
              <Button>
                <Plus className="mr-2 h-4 w-4" /> Ajouter une spécialité
              </Button>
            </DialogTrigger>
            <DialogContent>
              <DialogHeader>
                <DialogTitle>Ajouter une nouvelle spécialité</DialogTitle>
                <DialogDescription>
                  Créez une nouvelle spécialité pour vos cours.
                </DialogDescription>
              </DialogHeader>
              <div className="grid gap-4 py-4">
                <form action={`/admin/specialties/create`} method="get">
                  <Button type="submit" className="w-full">Créer une nouvelle spécialité</Button>
                </form>
              </div>
            </DialogContent>
          </Dialog>
        </div>
        
        <div className="relative">
          <Search className="absolute left-3 top-1/2 transform -translate-y-1/2 text-gray-400"/>
          <Input
            placeholder="Rechercher des spécialités..."
            value={searchTerm}
            onChange={(e) => setSearchTerm(e.target.value)}
            className="pl-10"
          />
        </div>
        
        <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
          {isLoading ? (
            <p>Chargement des spécialités...</p>
          ) : filteredSpecialties.length > 0 ? (
            filteredSpecialties.map((specialty: Specialty) => (
              <Card key={specialty.id} className="overflow-hidden">
                <div className="h-40 bg-gray-200 flex items-center justify-center">
                  {specialty.image ? (
                    <img 
                      src={specialty.image} 
                      alt={specialty.name} 
                      className="w-full h-full object-cover"
                    />
                  ) : (
                    <span className="text-gray-400">Pas d'image</span>
                  )}
                </div>
                <CardContent className="p-6">
                  <div className="mb-4">
                    <h3 className="font-semibold text-lg">{specialty.name}</h3>
                    <div className="text-primary text-xs mb-1">
                      {specialty.discipline?.name || `Discipline ID: ${specialty.discipline_id}`}
                    </div>
                    <p className="text-gray-500 text-sm line-clamp-2">{specialty.description}</p>
                  </div>
                  
                  <div className="flex justify-between">
                    <div className="text-sm text-gray-500">
                      {specialty.courses?.length || 0} cours
                    </div>
                    <div className="space-x-2 flex">
                      <Button 
                        variant="outline" 
                        size="icon" 
                        onClick={() => window.location.href = `/admin/specialties/edit/${specialty.id}`}
                      >
                        <Edit className="h-4 w-4" />
                      </Button>
                      
                      <AlertDialog>
                        <AlertDialogTrigger asChild>
                          <Button variant="outline" size="icon">
                            <Trash2 className="h-4 w-4" />
                          </Button>
                        </AlertDialogTrigger>
                        <AlertDialogContent>
                          <AlertDialogHeader>
                            <AlertDialogTitle>Êtes-vous sûr?</AlertDialogTitle>
                            <AlertDialogDescription>
                              Cette action ne peut pas être annulée. Cela supprimera définitivement
                              la spécialité "{specialty.name}" et toutes les données associées.
                            </AlertDialogDescription>
                          </AlertDialogHeader>
                          <AlertDialogFooter>
                            <AlertDialogCancel>Annuler</AlertDialogCancel>
                            <AlertDialogAction 
                              onClick={() => deleteMutation.mutate(specialty.id)}
                              className="bg-red-600 hover:bg-red-700"
                            >
                              Supprimer
                            </AlertDialogAction>
                          </AlertDialogFooter>
                        </AlertDialogContent>
                      </AlertDialog>
                    </div>
                  </div>
                </CardContent>
              </Card>
            ))
          ) : (
            <p className="col-span-3 text-center py-10 text-gray-500">
              Aucune spécialité trouvée. Créez-en une nouvelle!
            </p>
          )}
        </div>
      </div>
    </DashboardLayout>
  );
};

export default SpecialtiesIndex;
