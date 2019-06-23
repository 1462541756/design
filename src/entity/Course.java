package entity;

import java.util.ArrayList;
import java.util.List;

//课程实体
public class Course {
    public Long course_id;//课程id
    public String course_name;//课程名
    public List<Long> column_id;//栏目id
    public List<String> column_name;//栏目名
    public Column[] column_content;//栏目内容

    public Course() {
        column_id=new ArrayList<>();
        column_name=new ArrayList<>();
    }

    public Article[] getArticle( Long course_id,Long column_id){
        for (Column column: column_content) {
            if (column.course_id.equals(course_id)){
                for (Subcolumn subcolumn: column.subcolumns) {
                    if (subcolumn.column_id.equals(column_id)){
                        return subcolumn.article;
                    }
                }
            }
        }
        return null;
    }

    public Course(Long course_id, String course_name, List<Long> column_id, List<String> column_name,Column[] column_content) {
        this.course_id = course_id;
        this.course_name = course_name;
        this.column_id = column_id;
        this.column_name = column_name;
        this.column_content=column_content;
    }

}
