package entity;
//子栏目实体
public class Subcolumn {
    public Long id;
    public String name;
    public Long column_id;
    public Article[] article;
    public Subcolumn() {}
    public Subcolumn(Long id,String name,Long column_id,Article[] article) {
        this.id=id;
        this.name=name;
        this.column_id=column_id;
        this.article=article;
    }
}
