package model;

public class Employee {
    private int employeeId;
    private String employeeName;
    private String employeeDateOfBirth;
    private String employeeIdCard;
    private double employeeSalary;
    private String employeePhoneNumber;
    private String employeeEmail;
    private String employeeAddress;
    private int employeePositionId;
    private int employeeEducationDegreeId;
    private int employeeDivisionId;

    public Employee() {
    }

    public Employee(String employeeName, String employeeDateOfBirth, String employeeIdCard,
                    double employeeSalary, String employeePhoneNumber, String employeeEmail,
                    String employeeAddress, int employeePositionId, int employeeEducationDegreeId,
                    int employeeDivisionId) {
        this.employeeName = employeeName;
        this.employeeDateOfBirth = employeeDateOfBirth;
        this.employeeIdCard = employeeIdCard;
        this.employeeSalary = employeeSalary;
        this.employeePhoneNumber = employeePhoneNumber;
        this.employeeEmail = employeeEmail;
        this.employeeAddress = employeeAddress;
        this.employeePositionId = employeePositionId;
        this.employeeEducationDegreeId = employeeEducationDegreeId;
        this.employeeDivisionId = employeeDivisionId;
    }

    public Employee(int employeeId, String employeeName, String employeeDateOfBirth, String employeeIdCard,
                    double employeeSalary, String employeePhoneNumber, String employeeEmail, String employeeAddress,
                    int employeePositionId, int employeeEducationDegreeId, int employeeDivisionId) {
        this.employeeId = employeeId;
        this.employeeName = employeeName;
        this.employeeDateOfBirth = employeeDateOfBirth;
        this.employeeIdCard = employeeIdCard;
        this.employeeSalary = employeeSalary;
        this.employeePhoneNumber = employeePhoneNumber;
        this.employeeEmail = employeeEmail;
        this.employeeAddress = employeeAddress;
        this.employeePositionId = employeePositionId;
        this.employeeEducationDegreeId = employeeEducationDegreeId;
        this.employeeDivisionId = employeeDivisionId;
    }

    public int getEmployeeId() {
        return employeeId;
    }

    public void setEmployeeId(int employeeId) {
        this.employeeId = employeeId;
    }

    public String getEmployeeName() {
        return employeeName;
    }

    public void setEmployeeName(String employeeName) {
        this.employeeName = employeeName;
    }

    public String getEmployeeDateOfBirth() {
        return employeeDateOfBirth;
    }

    public void setEmployeeDateOfBirth(String employeeDateOfBirth) {
        this.employeeDateOfBirth = employeeDateOfBirth;
    }

    public String getEmployeeIdCard() {
        return employeeIdCard;
    }

    public void setEmployeeIdCard(String employeeIdCard) {
        this.employeeIdCard = employeeIdCard;
    }

    public double getEmployeeSalary() {
        return employeeSalary;
    }

    public void setEmployeeSalary(double employeeSalary) {
        this.employeeSalary = employeeSalary;
    }

    public String getEmployeePhoneNumber() {
        return employeePhoneNumber;
    }

    public void setEmployeePhoneNumber(String employeePhoneNumber) {
        this.employeePhoneNumber = employeePhoneNumber;
    }

    public String getEmployeeEmail() {
        return employeeEmail;
    }

    public void setEmployeeEmail(String employeeEmail) {
        this.employeeEmail = employeeEmail;
    }

    public String getEmployeeAddress() {
        return employeeAddress;
    }

    public void setEmployeeAddress(String employeeAddress) {
        this.employeeAddress = employeeAddress;
    }

    public int getEmployeePositionId() {
        return employeePositionId;
    }

    public void setEmployeePositionId(int employeePositionId) {
        this.employeePositionId = employeePositionId;
    }

    public int getEmployeeEducationDegreeId() {
        return employeeEducationDegreeId;
    }

    public void setEmployeeEducationDegreeId(int employeeEducationDegreeId) {
        this.employeeEducationDegreeId = employeeEducationDegreeId;
    }

    public int getEmployeeDivisionId() {
        return employeeDivisionId;
    }

    public void setEmployeeDivisionId(int employeeDivisionId) {
        this.employeeDivisionId = employeeDivisionId;
    }
}
