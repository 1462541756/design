package entity;

//管理员实体表
public class Operator {
    public Long id;//管理员id
    public  String name;//管理员姓名
    public  String user;//账户名
    public  String password;//账户密码
    public   Integer level;//账户权限等级
    public  String email;//邮箱
    public  String sex;//性别
    public  String tel;//联系电话
    public   Role role;//所属角色的权限拥有状态
    public  Default defaultFunction;//默认功能显示状态
    public Operator() {
    }

    public Operator(Long id, String name, String user, String password,
                    Integer level, String email, String sex, String tel,Role role,Default defaultFunction){
        this.id=id;
        this.name=name;
        this.user=user;
        this.password=password;
        this.level=level;
        this.email=email;
        this.sex=sex;
        this.tel=tel;
        this.role=role;
        this.defaultFunction=defaultFunction;
    }
}
