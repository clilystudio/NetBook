package com.clilystudio.app.netbook.ui.post;

import android.app.Activity;

import com.clilystudio.app.netbook.a_packA.c;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.PostPublish;

final class F extends c<String, PostPublish> {
    public F(AddReviewContentActivity paramAddReviewContentActivity, Activity paramActivity, int paramInt) {
        super(paramActivity, 2131034430);
    }

    private PostPublish a(String[] paramArrayOfString) {
        try {
            if (!AddReviewContentActivity.g(this.a))
                return b.b().a(paramArrayOfString[0], paramArrayOfString[1], paramArrayOfString[2], paramArrayOfString[3], paramArrayOfString[4], AddReviewContentActivity.h(this.a));
            PostPublish localPostPublish = b.b().c(paramArrayOfString[0], paramArrayOfString[1], paramArrayOfString[2], paramArrayOfString[3], paramArrayOfString[4]);
            return localPostPublish;
        } catch (Exception localException) {
            localException.printStackTrace();
        }
        return null;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.F
 * JD-Core Version:    0.6.2
 */