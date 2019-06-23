package entity;
//文章实体类
public class Article {
    public Long id;//文章 id
    public String title;//文章标题
    public String content;//文章内容
    public String date;//创建时间
    public Boolean state;//置顶状态
    public String author;//作者
    public Long subColumn_id;//子栏目id
    public Article(){

    }
    public Article(Long id, String title, String content, String date,Boolean state, String author, Long subColumn_id){
        this.id=id;
        this.title=title;
        this.content=content;
        this.date=date;
        this.state=state;
        this.author=author;
        this.subColumn_id=subColumn_id;
    }
}
