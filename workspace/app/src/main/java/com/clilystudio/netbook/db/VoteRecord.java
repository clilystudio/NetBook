package com.clilystudio.netbook.db;

import com.activeandroid.Model;

import java.util.List;

public class VoteRecord extends Model {

    public String account_id;
    public String post_id;
    public int vote_item_index = -1;

    public static void create(String String1, String String2, int int3) {
        VoteRecord VoteRecord4 = new VoteRecord();

        VoteRecord4.account_id = String1;
        VoteRecord4.post_id = String2;
        VoteRecord4.vote_item_index = int3;
        VoteRecord4.save();
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static List getVoteRecords(String String1, String String2) {
    }
}
