package factory;

import dao.MyDao;
import entity.Operator;
import service.MyService;

//工厂类
public class Factory {
    public static Operator operator=null;
    private static Factory factory;

    public static Factory getInstance() {
        if (factory == null) {
            factory = new Factory();
        }
        return factory;
    }

    private MyDao dao ;
    private MyService service;

    private Factory(){
        this.dao = new MyDao();
        this.service = new MyService();
    }

    public MyDao getDao() {
        return this.dao;
    }

    public MyService getService() {
        return this.service;
    }
}

