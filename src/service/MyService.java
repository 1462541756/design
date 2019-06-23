package service;

import entity.*;
import factory.Factory;

public class MyService {
    public MyService() {
    }

    public Course getCourseEntity(Long course_id) {
        return Factory.getInstance().getDao().getCourseEntity(course_id);
    }

    public Column[] getColumnEntities(Long course_id) {
        return Factory.getInstance().getDao().getColumnEntities(course_id);
    }

    public Subcolumn[] getSubcolumnEntities(Long column_id) {
        return Factory.getInstance().getDao().getSubcolumnEntities(column_id);
    }

    public Article[] getArticleEntities(Long subcolumn_id) {
        return Factory.getInstance().getDao().getArticleEntities(subcolumn_id);
    }

    public Article getArticleEntity(Long article_id) {
        return Factory.getInstance().getDao().getArticleEntity(article_id);
    }

    public Article[] getArticleEntities(int start, int count) {
        return Factory.getInstance().getDao().getArticleEntities(start, count);
    }

    public Role getRoleEntity(Integer role_level) {
        return Factory.getInstance().getDao().getRoleEntity(role_level);
    }

    public Default getDefaultEntity(Long operator_id) {
        return Factory.getInstance().getDao().getDefaultEntity(operator_id);
    }

    public Operator getOperatorEntity(String user, String password) {
        return Factory.getInstance().getDao().getOperatorEntity(user, password);
    }

    public Function[] getFunctionEntities() {
        return Factory.getInstance().getDao().getFunctionEntities();
    }

    public Member getMemberEntity(Long member_id) {
        return Factory.getInstance().getDao().getMemberEntity(member_id);
    }

    public Member[] getMemberEntities(Long course_id) {
        return Factory.getInstance().getDao().getMemberEntities(course_id);
    }

    public Message getMessageEntity() {
        return Factory.getInstance().getDao().getMessageEntity();
    }

    public Message[] getMessageEntiies() {
        return Factory.getInstance().getDao().getMessageEntities();
    }
}
