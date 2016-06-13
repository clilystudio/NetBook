package com.clilystudio.netbook.db;

import com.activeandroid.Model;
import com.activeandroid.annotation.Column;
import com.activeandroid.annotation.Table;
import com.activeandroid.query.Select;

import java.util.List;

@Table(name = "PostUsefulRecord")
public class PostUsefulRecord
        extends Model {
    public static final int TYPE_NO = 2;
    public static final int TYPE_YES = 1;
    @Column(name = "postId")
    public String postId;
    @Column(name = "type")
    public int type = 0;
    @Column(name = "userId")
    public String userId;

    public static void create(String string, String string2, int n) {
        PostUsefulRecord postUsefulRecord = new PostUsefulRecord();
        postUsefulRecord.userId = string;
        postUsefulRecord.postId = string2;
        postUsefulRecord.type = n;
        postUsefulRecord.save();
    }

    public static PostUsefulRecord get(String string, String string2) {
        List list = new Select().from(PostUsefulRecord.class).where("userId = ? AND postId = ?", string, string2).execute();
        if (list != null && list.size() > 0) {
            return (PostUsefulRecord) list.get(0);
        }
        return null;
    }
}
