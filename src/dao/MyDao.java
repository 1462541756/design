package dao;

import connection.MyDataBase;
import entity.*;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class MyDao {
    private MyDataBase db;

    public MyDao() {
        this.db = new MyDataBase();
    }

    public Course getCourseEntity(Long course_id) {

        try {
            Course course = new Course();
            getCourseContent(course, course_id);
            return course;
        } catch (SQLException e) {
            System.out.println("获取课程实体失败");
            return null;
        }
    }

    public Column[] getColumnEntities(Long course_id) {
        String sql = "select `id`,`name`,`course_id` from `column` where `course_id`=?";
        PreparedStatement ps = db.getPreparedStatement(sql);
        try {
            ps.setLong(1, course_id);
            ResultSet rs = db.myExecuteQuery(ps);
            return toColumnEntities(rs);
        } catch (SQLException e) {
            System.out.println("获取栏目实体失败");
            return null;
        }
    }

    public Subcolumn[] getSubcolumnEntities(Long column_id) {
        String sql = "select `id`,`name`,`column_id` from `subcolumn` where `column_id`=?";
        PreparedStatement ps = db.getPreparedStatement(sql);
        try {
            ps.setLong(1, column_id);
            ResultSet rs = db.myExecuteQuery(ps);
            return toSubcolumnEntities(rs);
        } catch (SQLException e) {
            System.out.println("获取子栏目实体失败");
            return null;
        }
    }

    public Article[] getArticleEntities(Long subcolumn_id) {
        String sql = "select id,title,content,date,state,author,subColumn_id from article where subcolumn_id=?";
        PreparedStatement ps = db.getPreparedStatement(sql);
        try {
            ps.setLong(1, subcolumn_id);
            ResultSet rs = db.myExecuteQuery(ps);
            return toArticleEntities(rs);
        } catch (SQLException e) {
            System.out.println("获取文章数组失败");
            return null;
        }
    }

    public Article getArticleEntity(Long article_id) {
        String sql = "select id,title,content,date,state,author,subColumn_id from article where id=?";
        PreparedStatement ps = db.getPreparedStatement(sql);
        try {
            ps.setLong(1, article_id);
            ResultSet rs = db.myExecuteQuery(ps);
            return toArticleEntity(rs);
        } catch (SQLException e) {
            System.out.println("获取文章实体失败");
            return null;
        }
    }

    public Article[] getArticleEntities(int start, int count) {
        String sql = "select id,title,content,date,state,author,subColumn_id from article limit ? ,? ";
        PreparedStatement ps = db.getPreparedStatement(sql);
        try {
            ps.setInt(1, start);
            ps.setInt(2, count);
            ResultSet rs = db.myExecuteQuery(ps);
            return toArticleEntities(rs);
        } catch (SQLException e) {
            System.out.println("获取文章数组失败");
            return null;
        }
    }

    public Role getRoleEntity(Integer role_level) {
        String sql = "select `name`,`table`,`homepage`,`default`,`role_management`,`member`,`role_assignment`," +
                "`model`,`level`,`column`,`check`,`article`,`message` from role where `role_level`=?";
        PreparedStatement ps = db.getPreparedStatement(sql);
        try {
            ps.setInt(1, role_level);
            ResultSet rs = db.myExecuteQuery(ps);
            return toRoleEntity(rs);
        } catch (SQLException e) {
            System.out.println("获取角色实体失败");
            return null;
        }

    }

    public Default getDefaultEntity(Long operator_id) {
        String sql = "select `table`,`homepage`,`default`,`role_management`,`member`,`role_assignment`," +
                "`model`,`level`,`column`,`check`,`article`,`message` from `default` where `operator_id`=?";
        PreparedStatement ps = db.getPreparedStatement(sql);
        try {
            ps.setLong(1, operator_id);
            ResultSet rs = db.myExecuteQuery(ps);
            return toDefaultEntity(rs);
        } catch (SQLException e) {
            System.out.println("获取默认功能实体失败");
            return null;
        }
    }

    public Operator getOperatorEntity(String user, String password) {
        String sql = "select `id`,`name`,`user`,`password`,`level`,`email`,`sex`,`tel` from `operator` where `user`=? and `password`=?";
        PreparedStatement ps = db.getPreparedStatement(sql);
        try {
            ps.setString(1, user);
            ps.setString(2, password);
            ResultSet rs = db.myExecuteQuery(ps);
            return toOperatortEntities(rs);
        } catch (SQLException e) {
            System.out.println("获取管理员用户实体失败");
            return null;
        }
    }

    public Function[] getFunctionEntities() {
        String sql = "select name,`column_name`,`level` from `function`";
        PreparedStatement ps = db.getPreparedStatement(sql);
        try {
            ResultSet rs = db.myExecuteQuery(ps);
            return toFunctionEntity(rs);
        } catch (SQLException e) {
            System.out.println("获取功能实体数组失败");
            return null;
        }
    }

    public Member getMemberEntity(Long member_id) {
        String sql = "select id,`name`,`age`,`sex`,`picture_name`,`information`,`course_id` from `member` where id=?";
        PreparedStatement ps = db.getPreparedStatement(sql);
        try {
            ps.setLong(1, member_id);
            ResultSet rs = db.myExecuteQuery(ps);
            return toMemberEntity(rs);
        } catch (SQLException e) {
            System.out.println("获取成员实体数组失败");
            return null;
        }
    }

    public Member[] getMemberEntities(Long course_id) {
        String sql = "select id,`name`,`age`,`sex`,`picture_name`,`information`,`course_id` from `member` where `course_id`=?";
        PreparedStatement ps = db.getPreparedStatement(sql);
        try {
            ps.setLong(1, course_id);
            ResultSet rs = db.myExecuteQuery(ps);
            return toMemberEntities(rs, course_id);
        } catch (SQLException e) {
            System.out.println("获取成员实体数组失败");
            return null;
        }
    }

    public Message getMessageEntity() {
        String sql = "select id,`questioner`,`question`,`state`,`respondent`,`answer` from `message` where `state`!=0";
        PreparedStatement ps = db.getPreparedStatement(sql);
        try {
            ResultSet rs = db.myExecuteQuery(ps);
            return toMessageEntity(rs);
        } catch (SQLException e) {
            System.out.println("获取留言实体数组失败");
            return null;
        }
    }

    public Message[] getMessageEntities() {
        String sql = "select id,`questioner`,`question`,`state`,`respondent`,`answer` from `message` where `state`!=0";
        PreparedStatement ps = db.getPreparedStatement(sql);
        try {
            ResultSet rs = db.myExecuteQuery(ps);
            return toMessageEntities(rs);
        } catch (SQLException e) {
            System.out.println("获取留言实体数组失败");
            return null;
        }
    }





    private void getCourseContent(Course course, Long course_id) throws SQLException {
        String sql = "select id,name from `course` where id=?";
        PreparedStatement ps = db.getPreparedStatement(sql);
        ps.setLong(1, course_id);
        ResultSet rs = db.myExecuteQuery(ps);
        if (rs.next()) {
            course.course_id = rs.getLong("id");
            course.course_name = rs.getString("name");
        }

        sql = "select id,name from `column` where course_id=?";
        ps = db.getPreparedStatement(sql);
        ps.setLong(1, course_id);
        rs = db.myExecuteQuery(ps);
        int i = 0;
        while (rs.next()) {
            course.column_id.add(i, rs.getLong("id"));
            course.column_name.add(i, rs.getString("name"));
            i++;
        }
        course.column_content=getColumnEntities(course.course_id);

    }

    private Subcolumn[] toSubcolumnEntities(ResultSet rs) throws SQLException {
        rs.last();
        Subcolumn[] subcolumns = new Subcolumn[rs.getRow()];
        rs.beforeFirst();
        int i = 0;
        while (rs.next()) {
            subcolumns[i] = new Subcolumn();
            subcolumns[i].id = rs.getLong("id");
            subcolumns[i].name = rs.getString("name");
            subcolumns[i].column_id = rs.getLong("column_id");
            subcolumns[i].article = getArticleEntities(subcolumns[i].id);
            i++;
        }
        return subcolumns;
    }

    private Column[] toColumnEntities(ResultSet rs) throws SQLException {
        rs.last();
        if (rs.getRow()==0){
            return null;
        }
        Column[] columns = new Column[rs.getRow()];
        rs.beforeFirst();
        int i = 0;
        while (rs.next()) {
            columns[i] = new Column();
            columns[i].id = rs.getLong("id");
            columns[i].name = rs.getString("name");
            columns[i].course_id = rs.getLong("course_id");
            columns[i].subcolumns = getSubcolumnEntities(columns[i].id);
            i++;
        }
        return columns;
    }

    private Message[] toMessageEntities(ResultSet rs) throws SQLException {
//        int number = getMessageNumber();
        rs.last();
        if (rs.getRow() == 0) {
            return null;
        }
        Message[] message = new Message[rs.getRow()];
        rs.beforeFirst();
        int i = 0;
        while (rs.next()) {
            message[i] = new Message();
            message[i].id = rs.getLong("id");
            message[i].questioner = rs.getString("questioner");
            message[i].question = rs.getString("question");
            message[i].state = rs.getBoolean("state");
            message[i].respondent = rs.getString("respondent");
            message[i].answer = rs.getString("answer");
            i++;
        }
        return message;
    }

    private Message toMessageEntity(ResultSet rs) throws SQLException {
        Message message = null;
        while (rs.next()) {
            message = new Message();
            message.id = rs.getLong("id");
            message.questioner = rs.getString("questioner");
            message.question = rs.getString("question");
            message.state = rs.getBoolean("state");
            message.respondent = rs.getString("respondent");
            message.answer = rs.getString("answer");
            break;
        }
        return message;
    }

    private Member toMemberEntity(ResultSet rs) throws SQLException {
        Member member = null;
        while (rs.next()) {
            member = new Member();
            member.id = rs.getLong("id");
            member.name = rs.getString("name");
            member.age = rs.getInt("age");
            member.sex = rs.getString("sex");
            member.picture_name = rs.getString("picture_name");
            member.information = rs.getString("author");
            member.course_id = rs.getLong("subColumn_id");
            break;
        }
        return member;
    }

    private Member[] toMemberEntities(ResultSet rs, Long course_id) throws SQLException {
//        int number = getMemberNumber(course_id);
        rs.last();
        if (rs.getRow() == 0) {
            return null;
        }
        Member[] members = new Member[rs.getRow()];
        rs.beforeFirst();
        int i = 0;
        while (rs.next()) {
            members[i] = new Member();
            members[i].id = rs.getLong("id");
            members[i].name = rs.getString("name");
            members[i].age = rs.getInt("age");
            members[i].sex = rs.getString("sex");
            members[i].picture_name = rs.getString("picture_name");
            members[i].information = rs.getString("information");
            members[i].course_id = rs.getLong("course_id");
            i++;
        }
        return members;
    }

    private Function[] toFunctionEntity(ResultSet rs) throws SQLException {
//        int number = getFunctionNumber();
        rs.last();
        if (rs.getRow() == 0) {
            return null;
        }
        Function[] functions = new Function[rs.getRow()];
        rs.beforeFirst();
        int i = 0;
        while (rs.next()) {
            functions[i] = new Function();
            functions[i].name = rs.getString("name");
            functions[i].column_name = rs.getString("column_name");
            functions[i].level = rs.getInt("level");
            i++;
        }
        return functions;
    }

    private Operator toOperatortEntities(ResultSet rs) throws SQLException {
        Operator operator = null;
        while (rs.next()) {
            operator = new Operator();
            operator.id = rs.getLong("id");
            operator.name = rs.getString("name");
            operator.user = rs.getString("user");
            operator.password = rs.getString("password");
            operator.level = rs.getInt("level");
            operator.email = rs.getString("email");
            operator.sex = rs.getString("sex");
            operator.tel = rs.getString("tel");
            operator.role = getRoleEntity(operator.level);
            operator.defaultFunction = getDefaultEntity(operator.id);
            break;
        }
        return operator;
    }

    private Default toDefaultEntity(ResultSet rs) throws SQLException {
        Default default_function = null;
        while (rs.next()) {
            default_function = new Default();
            default_function.table = rs.getBoolean("table");
            default_function.homepage = rs.getBoolean("homepage");
            default_function.default_function = rs.getBoolean("default");
            default_function.role_management = rs.getBoolean("role_management");
            default_function.member = rs.getBoolean("member");
            default_function.role_assignment = rs.getBoolean("role_assignment");
            default_function.model = rs.getBoolean("model");
            default_function.level = rs.getBoolean("level");
            default_function.column = rs.getBoolean("column");
            default_function.check = rs.getBoolean("check");
            default_function.article = rs.getBoolean("article");
            default_function.message = rs.getBoolean("message");
            break;
        }
        return default_function;
    }

    private Role toRoleEntity(ResultSet rs) throws SQLException {
        Role role = null;
        while (rs.next()) {
            role = new Role();
            role.name = rs.getString("name");
            role.table = rs.getBoolean("table");
            role.homepage = rs.getBoolean("homepage");
            role.default_function = rs.getBoolean("default");
            role.role_management = rs.getBoolean("role_management");
            role.member = rs.getBoolean("member");
            role.role_assignment = rs.getBoolean("role_assignment");
            role.model = rs.getBoolean("model");
            role.level = rs.getBoolean("level");
            role.column = rs.getBoolean("column");
            role.check = rs.getBoolean("check");
            role.article = rs.getBoolean("article");
            role.message = rs.getBoolean("message");
            break;
        }
        return role;
    }

    private Article toArticleEntity(ResultSet rs) throws SQLException {
        Article article = null;
        while (rs.next()) {
            article = new Article();
            article.id = rs.getLong("id");
            article.title = rs.getString("title");
            article.content = rs.getString("content");
            article.date = rs.getString("date");
            article.state = rs.getBoolean("state");
            article.author = rs.getString("author");
            article.subColumn_id = rs.getLong("subColumn_id");
            break;
        }
        return article;
    }

    private Article[] toArticleEntities(ResultSet rs) throws SQLException {
        rs.last();
        if (rs.getRow() == 0) {
            return null;
        }
        Article[] article = new Article[rs.getRow()];
        rs.beforeFirst();
        int i = 0;
        while (rs.next()) {
            article[i] = new Article();
            article[i].id = rs.getLong("id");
            article[i].title = rs.getString("title");
            article[i].content = rs.getString("content");
            article[i].date = rs.getString("date");
            article[i].state = rs.getBoolean("state");
            article[i].author = rs.getString("author");
            article[i].subColumn_id = rs.getLong("subColumn_id");
            i++;
        }
        return article;
    }
}
