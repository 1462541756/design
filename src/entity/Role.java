package entity;

//角色实体类
public class Role {
    public String name;//角色名字
    public Boolean table;//码表管理设置拥有权
    public Boolean homepage;//主页信息管理设置拥有权
    public Boolean default_function;//默认功能设置设置拥有权
    public Boolean role_management;//角色管理设置拥有权
    public Boolean member;//人员管理设置拥有权
    public Boolean role_assignment;//角色分配设置拥有权
    public Boolean model;//模块管理设置拥有权
    public Boolean level;//权限管理设置拥有权
    public Boolean column;//栏目管理设置拥有权
    public Boolean check;//文章审核设置拥有权
    public Boolean article;//文章管理设置拥有权
    public Boolean message;//留言管理设置拥有权

    public Role() {
    }

    public Role(String name, Boolean table, Boolean homepage,Boolean default_function,
                Boolean role_management, Boolean member, Boolean role_assignment, Boolean model, Boolean level,
                Boolean column, Boolean check, Boolean article, Boolean message) {
        this.name = name;
        this.table = table;
        this.homepage = homepage;
        this.default_function = default_function;
        this.role_management = role_management;
        this.role_assignment = role_assignment;
        this.member = member;
        this.model = model;
        this.level = level;
        this.column = column;
        this.check = check;
        this.article = article;
        this.message = message;
    }
}
