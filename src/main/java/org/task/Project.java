package org.task;

public class Project {
    private String projectName;
    public Project(String projectName){
        this.projectName = projectName;
    }

    @Override
    public String toString() {
        return projectName;
    }
}
