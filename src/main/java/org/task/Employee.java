package org.task;

import java.util.ArrayList;
import java.util.List;

public class Employee extends Person implements ContractDepartment {
    private String entryDate;
    private int contractDuration;
    private int noticePeriod;

    private String position;
    private final SalaryStrategy salaryStrategy;

    private List<Project> projects = new ArrayList<>();

    public Employee(String name, int age, String position, SalaryStrategy salaryStrategy) {
        super(name, age);
        this.position = position;
        this.salaryStrategy = salaryStrategy;
    }

    @Override
    public void setEntryDate(String entryDate) {
        this.entryDate = entryDate;
    }

    @Override
    public void setContractDuration(int contractDuration) {
        this.contractDuration = contractDuration;
    }

    @Override
    public void setNoticePeriod(int noticePeriod) {
        this.noticePeriod = noticePeriod;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public double calculateSalary() {
        return salaryStrategy.calculateSalary();
    }

    public void addProject(Project project){
        projects.add(project);
    }

    public void removeProject(Project project){
        projects.remove((project));
    }

    public void displayInfo(){
        System.out.println("Name: " + getName());
        System.out.println("Age: " + getAge());
        System.out.println("Position: " + position);
        System.out.println("Entry Date: " + entryDate);
        System.out.println("Contract Duration: " + contractDuration + " months");
        System.out.println("Notice Period: " + noticePeriod + " days");
        System.out.println("Salary: LE " + calculateSalary());
        System.out.println("Projects: " + projects.toString());
    }
}
