package com.clilystudio.netbook.ui.post;

import android.app.Activity;

import com.clilystudio.netbook.a_pack.c;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.VoteResult;

final class dA extends c<String, VoteResult> {
    public dA(TweetDetailActivity paramTweetDetailActivity, Activity paramActivity, int paramInt) {
        super(paramActivity, 2131034584);
    }

    private VoteResult a(String[] paramArrayOfString) {
        try {
            VoteResult localVoteResult = b.b().a(paramArrayOfString[0], paramArrayOfString[1], paramArrayOfString[2]);
            return localVoteResult;
        } catch (Exception localException) {
            localException.printStackTrace();
        }
        return null;
    }
}

