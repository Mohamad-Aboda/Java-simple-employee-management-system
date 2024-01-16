package org.task;

public class EmployeeManagementSystem {
    public static void main(String[] args) {
        System.out.println("-------: Welcome to Employee Management System :-------");
        SalaryStrategy managerSalaryStrategy = new ManagerSalaryStrategy();
        Employee manager = new Employee("Ali Manager", 35, "Manager", managerSalaryStrategy);
        manager.setEntryDate("2022-01-01");
        manager.setContractDuration(12);
        manager.setNoticePeriod(30);

        SalaryStrategy developerSalaryStrategy = new DeveloperSalaryStrategy();
        Employee developer = new Employee("Mohamed Developer", 28, "Developer", developerSalaryStrategy);
        developer.setEntryDate("2022-02-01");
        developer.setContractDuration(12);
        developer.setNoticePeriod(30);

        // Creating projects
        Project project1 = new Project("Project A");
        Project project2 = new Project("Project B");

        // Assigning employees to projects
        manager.addProject(project1);
        manager.addProject(project2);

        developer.addProject(project1);

        // Displaying employee information
        System.out.println("Manager's Information:");
        manager.displayInfo();
        System.out.println("\nDeveloper's Information:");
        developer.displayInfo();


    }
}