package com.studentregister.variable;

public class Mark extends Student {	
        private Integer subject1;
        private Integer subject2;
        private Integer subject3;
        private Integer subject4;
        private Integer subject5;
        private Integer subject6;
        private Integer total;
    	private Integer average;
    	private GradeConstant grade;
    	   
        public enum GradeConstant{
        	A,B,C,D,E,F;
        }
    	
        public Mark() {
		}

		public Mark(Integer subject1, Integer subject2, Integer subject3, Integer subject4, Integer subject5,
				Integer subject6, Integer total, Integer average, GradeConstant grade) {
			this.subject1 = subject1;
			this.subject2 = subject2;
			this.subject3 = subject3;
			this.subject4 = subject4;
			this.subject5 = subject5;
			this.subject6 = subject6;
			this.total = total;
			this.average = average;
			this.grade = grade;
		}
     
        public Integer getTotal() {
			return total;
		}

		public void setTotal(Integer total) {
			this.total = total;
		}

		public Integer getAverage() {
			return average;
		}

		public void setAverage(Integer average) {
			this.average = average;
		}

		public GradeConstant getGrade() {
			return grade;
		}

		public void setGrade(GradeConstant grade) {
			this.grade = grade;
		}

		public Integer getSubject1() {
			return subject1;
		}

		public void setSubject1(Integer subject1) {
			this.subject1 = subject1;
		}

		public Integer getSubject2() {
			return subject2;
		}

		public void setSubject2(Integer subject2) {
			this.subject2 = subject2;
		}

		public Integer getSubject3() {
			return subject3;
		}

		public void setSubject3(Integer subject3) {
			this.subject3 = subject3;
		}

		public Integer getSubject4() {
			return subject4;
		}

		public void setSubject4(Integer subject4) {
			this.subject4 = subject4;
		}

		public Integer getSubject5() {
			return subject5;
		}

		public void setSubject5(Integer subject5) {
			this.subject5 = subject5;
		}

		public Integer getSubject6() {
			return subject6;
		}

		public void setSubject6(Integer subject6) {
			this.subject6 = subject6;
		}
		
		@Override
		public String toString() {
			return "[subject1=" + subject1 + ", subject2=" + subject2 + ", subject3=" + subject3
					+ ", subject4=" + subject4 + ", subject5=" + subject5 + ", subject6=" + subject6 + ", total="
					+ total + ", average=" + average + ", grade=" + grade + "]";
		}      
}
