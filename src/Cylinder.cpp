# ifndef CYLINDER_CPP
# define CYLINDER_CPP

# include "Cylinder.h"
# include <cmath>
# include <iomanip>

//change for branch "brain0"

using namespace std;

double Cylinder :: SurfaceArea()
{
    return 2*M_PI*radius*height+M_PI*radius*radius*2;
}

double Cylinder :: Volume()
{
    return M_PI*radius*radius*height;
}

double Cylinder :: Circumference(){

    return 2*M_PI*radius;
}

istream & operator>>(istream & in, Cylinder & cldr)
{
    in >> cldr.radius >> cldr.height;
    return in;
}

ostream & operator<<(ostream & out, Cylinder & cldr)
{
    out << fixed<<setprecision(3);
    out << "Circumference: " << cldr.Circumference() << "\n";
    out << "SurfaceArea: " << cldr.SurfaceArea() << "\n";
    out << "Volume: " << cldr.Volume() << "\n";

    return out;
}

# endif
