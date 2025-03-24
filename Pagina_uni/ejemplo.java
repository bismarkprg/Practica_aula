import java.util.ArrayList;
import java.util.List;

// Clase base Empleado
abstract class Empleado {
    protected String nombre;
    
    public Empleado(String nombre) {
        this.nombre = nombre;
    }
    
    public abstract double calcularSalario();
    
    public void mostrarInfo() {
        System.out.println("Nombre: " + nombre);
        System.out.println("Salario: $" + calcularSalario());
    }
}

// Clase derivada EmpleadoTiempoCompleto
class EmpleadoTiempoCompleto extends Empleado {
    private double salarioFijo;
    
    public EmpleadoTiempoCompleto(String nombre, double salarioFijo) {
        super(nombre);
        this.salarioFijo = salarioFijo;
    }
    
    @Override
    public double calcularSalario() {
        return salarioFijo;
    }
}

// Clase derivada EmpleadoPorHora
class EmpleadoPorHora extends Empleado {
    private double tarifaPorHora;
    private int horasTrabajadas;
    
    public EmpleadoPorHora(String nombre, double tarifaPorHora, int horasTrabajadas) {
        super(nombre);
        this.tarifaPorHora = tarifaPorHora;
        this.horasTrabajadas = horasTrabajadas;
    }
    
    @Override
    public double calcularSalario() {
        return tarifaPorHora * horasTrabajadas;
    }
}

// Clase genérica GestorEmpleados
class GestorEmpleados<T extends Empleado> {
    private List<T> empleados;
    
    public GestorEmpleados() {
        empleados = new ArrayList<>();
    }
    
    public void agregarEmpleado(T empleado) {
        empleados.add(empleado);
    }
    
    public void mostrarEmpleados() {
        for (T empleado : empleados) {
            empleado.mostrarInfo();
            System.out.println("--------------------");
        }
    }
}

// Clase principal con el método main
public class Main {
    public static void main(String[] args) {
        // Crear instancias de empleados
        EmpleadoTiempoCompleto emp1 = new EmpleadoTiempoCompleto("Carlos", 3000);
        EmpleadoPorHora emp2 = new EmpleadoPorHora("Ana", 20, 120);
        
        // Crear gestor de empleados y agregar empleados
        GestorEmpleados<Empleado> gestor = new GestorEmpleados<>();
        gestor.agregarEmpleado(emp1);
        gestor.agregarEmpleado(emp2);
        
        // Mostrar la información de los empleados
        gestor.mostrarEmpleados();
    }
}
