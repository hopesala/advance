package com.ht.servlet;

public class TeacherTimeWeek {
   
    private int num;private String [] time;	private int teachertimeid[];
    public void setNum(int num) {
		this.num = num;
	}




    public int getTeachertimeid(int numt) {
		return teachertimeid[numt-1];
	}



	public int getNum() {
		return num;
	}



	
	public TeacherTimeWeek()
    {
    	this.num=0;
    	time=new String[30];
    	teachertimeid=new int [30];
    	for(int i=0;i<30;i++) {
    		time[i]=null;
    		teachertimeid[i]=0;
    	}
    }
	
	
	
	   public String getTime() {
			return time[--num];
		}
	   
	   
	   
		public void setTime(String day,String month,String year,int tti) {
			String timetemp=year+','+month+','+day;
			System.out.println("time:"+timetemp);
			if(num==0) {
				teachertimeid[num]=tti;
				time[num]=timetemp;
				
				num++;
				return;
			}
			for(int i=0;i<num;i++) {
				
				if(timetemp.equals(time[i])) {
					return;
				}
			}
			teachertimeid[num]=tti;
			time[num]=timetemp;
			num++;
			return;
		}

    
}
