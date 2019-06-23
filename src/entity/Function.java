package entity;
//功能实体类
public class Function {
    public String name;//功能名
    public  String column_name;//功能所属栏目名
    public  Integer level;//最低拥有权限等级
    public Function(){

    }
    public Function(String name, String column_name,Integer level){
        this.name=name;
        this.column_name=column_name;
        this.level=level;
    }
}
