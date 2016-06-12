
package com.clilystudio.netbook.db;

import com.activeandroid.Model;
import com.activeandroid.query.From;
import com.activeandroid.query.Select;
import java.util.List;

public class PostAgreeRecord extends Model {

    public String account_id;
    public String post_id;

    public static void add(String String1, String String2)
    {
        PostAgreeRecord PostAgreeRecord3 = new PostAgreeRecord();

        PostAgreeRecord3.account_id = String1;
        PostAgreeRecord3.post_id = String2;
        PostAgreeRecord3.save();
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static PostAgreeRecord get(String String1, String String2)
    {
    }
}
