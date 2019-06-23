package entity;

import java.util.List;

//栏目实体
public class Column {
    public Long id;
    public String name;
    public Long course_id;
    public Subcolumn[] subcolumns;

    public Column() {
    }

    public Column(Long id, String name, Subcolumn[] subcolumns, Long course_id) {
        this.id = id;
        this.name = name;
        this.subcolumns = subcolumns;
        this.course_id = course_id;
        this.course_id = course_id;
    }
}
