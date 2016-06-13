package com.clilystudio.netbook.db;

import com.activeandroid.Model;
import com.activeandroid.annotation.Column;
import com.activeandroid.annotation.Table;
import com.activeandroid.query.Select;

import java.util.List;

@Table(name = "PostAgreeRecord")
public class PostAgreeRecord
        extends Model {
    @Column(name = "account_id")
    public String account_id;
    @Column(name = "post_id")
    public String post_id;

    public static void add(String string, String string2) {
        PostAgreeRecord postAgreeRecord = new PostAgreeRecord();
        postAgreeRecord.account_id = string;
        postAgreeRecord.post_id = string2;
        postAgreeRecord.save();
    }

    public static PostAgreeRecord get(String string, String string2) {
        List list = new Select().from(PostAgreeRecord.class).where("account_id = ? AND post_id = ?", string, string2).execute();
        if (list != null && list.size() > 0) {
            return (PostAgreeRecord) list.get(0);
        }
        return null;
    }
}
