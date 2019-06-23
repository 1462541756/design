import dao.MyDao;
import entity.Function;
import entity.Member;
import entity.Message;

public class test {
    public static void main(String[] args) {
      Message articles=  new MyDao().getMessageEntity();
        System.out.println(articles);
    }
}
