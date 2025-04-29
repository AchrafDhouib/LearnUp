
import { ReactNode } from "react";
import { Card, CardContent } from "@/components/ui/card";

interface StatsCardProps {
  icon: ReactNode;
  title: string;
  value: number;
}

const StatsCard = ({ icon, title, value }: StatsCardProps) => {
  return (
    <Card>
      <CardContent className="flex items-center pt-6">
        <div className="mr-4 p-2 rounded-full bg-gray-100">
          {icon}
        </div>
        <div>
          <p className="text-sm text-gray-500">{title}</p>
          <p className="text-2xl font-semibold">{value}</p>
        </div>
      </CardContent>
    </Card>
  );
};

export default StatsCard;