package com.clilystudio.netbook.db;

import com.activeandroid.Model;

public class PostUsefulRecord extends Model {

    public static final int TYPE_NO = 2;
    public static final int TYPE_YES = 1;
    public String postId;
    public String userId;
    public int type = 0;

    public static void create(String String1, String String2, int int3) {
        PostUsefulRecord PostUsefulRecord4 = new PostUsefulRecord();

        PostUsefulRecord4.userId = String1;
        PostUsefulRecord4.postId = String2;
        PostUsefulRecord4.type = int3;
        PostUsefulRecord4.save();
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static PostUsefulRecord get(String String1, String String2) {
    }
}
