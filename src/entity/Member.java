package entity;
//成员实体类
public class Member {
    public Long id;//成员id
    public  String name;//成员名
    public  Integer age;//成员年龄
    public  String sex;//成员性别
    public  String picture_name;//成员图片名
    public  String information;//成员其余信息
    public  Long course_id;//所属课程id

    public Member() {

    }

    public Member(Long id, String name, Integer age, String sex, String picture_name, String information, Long course_id) {
        this.id=id;
        this.name=name;
        this.age=age;
        this.sex=sex;
        this.picture_name=picture_name;
        this.information=information;
        this.course_id=course_id;
    }
}
