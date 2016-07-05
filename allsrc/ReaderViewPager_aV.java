    v1 = 0x1;
    v2 = 0x0;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter;
    v8 = v0.getCount();
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mExpectedAdapterCount = v8;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems;
    v0 = v0.size();
    v3 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mOffscreenPageLimit;
    v3 = v3 << 0x1;
    v3 = v3 + 0x1;
    if (v0 >= v3 || p0.mItems.size() >= v8) {
		v0 = v2;
    } else {
		v0 = v1;
	}
    v3 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCurItem;
    v4 = v2;
    v5 = v3;
    v6 = v0;
    v3 = v2;
    while (v3 < p0.mItems.size()) {
		v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems;
		v0 = v0.get(v3);
		check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/cs;
		v7 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter;
		v9 = v0.Lcom/ushaqi/zhuishushenqi/reader/cs;->a;
		v7 = v7.getItemPosition(v9);
		if (v7 == -1) {
			v0 = v3;
			v3 = v4;
			v4 = v5;
			v5 = v6;
		} else if (v7 == -2) {
			v6 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems;
			v6.remove(v3);
			v3 = v3 + -0x1;
			if (v4 == 0) {
				v4 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter;
				v4.startUpdate(p0);
				v4 = v1;
			}
			v6 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter;
			v7 = v0.Lcom/ushaqi/zhuishushenqi/reader/cs;->b;
			v9 = v0.Lcom/ushaqi/zhuishushenqi/reader/cs;->a;
			v6.destroyItem(p0, v7, v9);
			v6 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCurItem;
			v0 = v0.Lcom/ushaqi/zhuishushenqi/reader/cs;->b;
			if (v6 != v0) {
				v0 = v3;
				v3 = v4;
				v4 = v5;
				v5 = v1;
			} else {
				v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCurItem;
				v5 = v8 + -0x1;
				v0 = Ljava/lang/Math.min(v0, v5);
				v5 = Ljava/lang/Math.max(v2, v0);
				v0 = v3;
				v3 = v4;
				v4 = v5;
				v5 = v1;
			}
		} else {
			v9 = v0.Lcom/ushaqi/zhuishushenqi/reader/cs;->b;
			if (v9 == v7) {
				v0 = v3;
				v3 = v4;
				v4 = v5;
				v5 = v6;
			} else {
				v6 = v0.Lcom/ushaqi/zhuishushenqi/reader/cs;->b;
				v9 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCurItem;
				if (v6 == v9) {
					v5 = v7;
				}
				v0.Lcom/ushaqi/zhuishushenqi/reader/cs;->b = v7;
				v0 = v3;
				v3 = v4;
				v4 = v5;
				v5 = v1;
			}
		}
		v0 = v0 + 0x1;
		v6 = v5;
		v5 = v4;
		v4 = v3;
		v3 = v0;
    }
    if (v4 != 0) {
		v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter;
		v0.finishUpdate(p0);
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems;
    v3 = Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->COMPARATOR;
    Ljava/util/Collections.sort(v0, v3);
    if (v6 != 0) {
		v4 = p0.getChildCount();
		v3 = v2;
		while (v3 < v4) {
			v0 = p0.getChildAt(v3);
			v0 = v0.getLayoutParams();
			check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/ct;
			v6 = v0.Lcom/ushaqi/zhuishushenqi/reader/ct;->a;
			if (v6 == 0) {
				v6 = 0x0;
				v0.Lcom/ushaqi/zhuishushenqi/reader/ct;->c = v6;
			}
			v0 = v3 + 0x1;
			v3 = v0;
		}
		p0.a(v5, v2, v1);
		p0.requestLayout();
    }
    return;
