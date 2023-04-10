class student{
    constructor(name_,age){
        this.name=name_;
        this.age=age;
    }
}
let id=new student("Imman",22);
console.log(id);

class student1 extends student{
    constructor(name_,age,rollno){
        super(name_,age); //Usess the Object key only we just want to insert value
        this.rollno=rollno;
    }
}
let r=new student1(122176033)
console.log(r);