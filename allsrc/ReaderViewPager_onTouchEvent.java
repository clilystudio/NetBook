    v7 = -0x1;
    v4 = 0x0;
    v3 = 0x1;
    if (p0.mFakeDragging) {
		return true;
    }
    if (p1.getAction() == 0 && p1.getEdgeFlags() != 0) {
		return false
    }
    v0 = p0.mAdapter;
    if (p0.mAdapter == 0 || p0.mAdapter.getCount() == 0) {
		return false
    }
    if (p0.mVelocityTracker == 0) {
		v0 = invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;
		p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mVelocityTracker = v0;
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mVelocityTracker;
    v0.addMovement(p1);
    v0 = p1.getAction();
    v0 = v0 & 0xff;
    packed-switch v0, :pswitch_data_0
    :cond_5
    :goto_1
    :pswitch_0
    if (v4 != 0) {
		ViewCompat.postInvalidateOnAnimation(p0);
    }
    v0 = v3;
    return v0
    :pswitch_1
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mScroller;
    v0.abortAnimation();
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mPopulatePending = v4;
    p0.b();
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mIsBeingDragged = v3;
    p0.b(v3);
    v0 = p1.getX();
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mInitialMotionX = v0;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mLastMotionX = v0;
    v0 = p1.getY();
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mInitialMotionY = v0;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mLastMotionY = v0;
    v0 = Landroid/support/v4/view/MotionEventCompat.getPointerId(p1, v4);
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mActivePointerId = v0;
    goto :goto_1
    :pswitch_2
    if (!p0.mIsBeingDragged) {
		v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mActivePointerId;
		v0 = Landroid/support/v4/view/MotionEventCompat.findPointerIndex(p1, v0);
		v1 = Landroid/support/v4/view/MotionEventCompat.getX(p1, v0);
		v2 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mLastMotionX;
		v2 = v1 - v2;
		v2 = Ljava/lang/Math.abs(v2);
		v5 = Landroid/support/v4/view/MotionEventCompat.getY(p1, v0);
		v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mLastMotionY;
		v0 = v5 - v0;
		v0 = Ljava/lang/Math.abs(v0);
		v6 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mTouchSlop;
		int-to-float v6, v6
		if (v2 > v6 && v2 > v0) {
			p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mIsBeingDragged = v3;
			v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mInitialMotionX;
			v0 = v1 - v0;
			v1 = 0x0;
			cmpl-float v0, v0, v1
			if (v0 <= 0) {
				v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mInitialMotionX;
				v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mTouchSlop;
				int-to-float v1, v1
				v0 -= v1;
			} else {
				v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mInitialMotionX;
				v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mTouchSlop;
				int-to-float v1, v1
				v0 += v1;
			}
			p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mLastMotionX = v0;
			p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mLastMotionY = v5;
			p0.b(v3);
			p0.b(v3);
		}
    }
    if (p0.mIsBeingDragged) {
		v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mActivePointerId;
		v0 = Landroid/support/v4/view/MotionEventCompat.findPointerIndex(p1, v0);
		v0 = Landroid/support/v4/view/MotionEventCompat.getX(p1, v0);
		v0 = p0.a(v0);
		v4 = v0 | 0x0;
    }
    goto/16 :goto_1
    :pswitch_3
    if (p0.mIsBeingDragged) {
		v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mVelocityTracker;
		v1 = 0x3e8;
		v2 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mMaximumVelocity;
		int-to-float v2, v2
		v0.computeCurrentVelocity(v1, v2);
		v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mActivePointerId;
		v0 = Landroid/support/v4/view/VelocityTrackerCompat.getXVelocity(v0, v1);
		float-to-int v5, v0
		p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mPopulatePending = v3;
		v1 = p0.e();
		v2 = p0.getScrollX();
		v6 = p0.g();
		v0 = v6.Lcom/ushaqi/zhuishushenqi/reader/cs;->b;
		int-to-float v2, v2
		int-to-float v1, v1
		v1 = v2 / v1;
		v2 = v6.Lcom/ushaqi/zhuishushenqi/reader/cs;->e;
		v1 -= v2;
		v2 = v6.Lcom/ushaqi/zhuishushenqi/reader/cs;->d;
		v2 = v1 / v2;
		v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mActivePointerId;
		v1 = Landroid/support/v4/view/MotionEventCompat.findPointerIndex(p1, v1);
		v1 = Landroid/support/v4/view/MotionEventCompat.getX(p1, v1);
		v6 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mInitialMotionX;
		v1 -= v6;
		float-to-int v1, v1
		if (Math.abs(v1) <= p0.mFlingDistance || Math.abs(v5) <= p0.mMinimumVelocity) {
			v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCurItem;
			if (v0 < v1) {
				v1 = 0x3f19999a    # 0.6f;
			} else {
				v1 = 0x3ecccccd    # 0.4f;
			}
			int-to-float v0, v0
			v0 += v2;
			v0 += v1;
			float-to-int v0, v0
			v2 = v0;
		} else {
			if (v5 <= 0) {
				v0 = v0 + 0x1;
			}
			v2 = v0;
		}
		if (p0.mItems.size() > 0) {
			v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems;
			v0 = v0.get(v4);
			check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/cs;
			v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems;
			v4 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems;
			v4 = v4.size();
			v4 = v4 + -0x1;
			v1 = v1.get(v4);
			check-cast v1, Lcom/ushaqi/zhuishushenqi/reader/cs;
			v0 = v0.Lcom/ushaqi/zhuishushenqi/reader/cs;->b;
			v1 = v1.Lcom/ushaqi/zhuishushenqi/reader/cs;->b;
			v1 = Ljava/lang/Math.min(v2, v1);
			v2 = Ljava/lang/Math.max(v0, v1);
		}
		p0.a(v2, v3, v3, v5);
		p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mActivePointerId = v7;
		p0.h();
		v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mLeftEdge;
		v0 = v0.onRelease();
		v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mRightEdge;
		v1 = v1.onRelease();
		v4 = v0 | v1;
    }
    goto/16 :goto_1
    :pswitch_4
    if (p0.mIsBeingDragged) {
		v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCurItem;
		p0.a(v0, v3, v4, v4);
		p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mActivePointerId = v7;
		p0.h();
		v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mLeftEdge;
		v0 = v0.onRelease();
		v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mRightEdge;
		v1 = v1.onRelease();
		v4 = v0 | v1;
    }
    goto/16 :goto_1
    :pswitch_5
    v0 = Landroid/support/v4/view/MotionEventCompat.getActionIndex(p1);
    v1 = Landroid/support/v4/view/MotionEventCompat.getX(p1, v0);
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mLastMotionX = v1;
    v0 = Landroid/support/v4/view/MotionEventCompat.getPointerId(p1, v0);
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mActivePointerId = v0;
    goto/16 :goto_1
    :pswitch_6
    p0.a(p1);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mActivePointerId;
    v0 = Landroid/support/v4/view/MotionEventCompat.findPointerIndex(p1, v0);
    v0 = Landroid/support/v4/view/MotionEventCompat.getX(p1, v0);
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mLastMotionX = v0;
    goto/16 :goto_1
    nop
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch