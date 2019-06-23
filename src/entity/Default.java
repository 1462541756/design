package entity;

//默认功能设置
public class Default {
    public Boolean table;//码表管理显示状态
    public Boolean homepage;//主页信息管理显示状态
    public Boolean default_function;//默认功能设置显示状态
    public Boolean role_management;//角色管理显示状态
    public Boolean member;//人员管理显示状态
    public Boolean role_assignment;//角色分配显示状态
    public Boolean model;//模块管理显示状态
    public Boolean level;//权限管理显示状态
    public Boolean column;//栏目管理显示状态
    public Boolean check;//文章审核显示状态
    public Boolean article;//文章管理显示状态
    public Boolean message;//留言管理显示状态

    public Default() {
    }

    public Default(Boolean table, Boolean homepage, Boolean default_function,
                   Boolean role_management, Boolean member, Boolean role_assignment, Boolean model, Boolean level,
                   Boolean column, Boolean check,Boolean article, Boolean message) {
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
