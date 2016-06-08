package com.clilystudio.netbook.ui.post;

import android.app.Activity;

import com.clilystudio.netbook.a_pack.c;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.Review;
import com.clilystudio.netbook.model.ReviewHistory;

import java.io.IOException;

final class aG extends c<String, Review> {
    public aG(BookReviewListFragment paramBookReviewListFragment, Activity paramActivity) {
        super(paramActivity, "正在获取历史书评...");
    }

    private static Review a(String[] paramArrayOfString) {
        try {
            b.a();
            ReviewHistory localReviewHistory = b.b().q(paramArrayOfString[0], paramArrayOfString[1]);
            if ((localReviewHistory != null) && (localReviewHistory.ok)) {
                Review localReview = localReviewHistory.review;
                return localReview;
            }
        } catch (IOException localIOException) {
            localIOException.printStackTrace();
        }
        return null;
    }
}

