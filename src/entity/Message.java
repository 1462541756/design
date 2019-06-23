package entity;

//问题与回复实体类
public class Message {
    public  Long id;//问题id
    public  String questioner;//提问者
    public  String question;//问题内容
    public  Boolean state;//回复状态
    public String respondent;//解答者
    public String answer;//回答内容

    public Message() {
    }

    public Message(Long id,String questioner, String question, Boolean state, String respondent, String answer) {
        this.id=id;
        this.questioner=questioner;
        this.question=question;
        this.state=state;
        this.respondent=respondent;
        this.answer=answer;
    }
}
