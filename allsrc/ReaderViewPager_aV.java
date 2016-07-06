    v1 = 0x1;
    v2 = 0x0;
    v8 = p0.mAdapter.getCount();
    p0.mExpectedAdapterCount = v8;
    v0 = p0.mItems.size();
    v3 = p0.mOffscreenPageLimit;
    v3 = v3 << 0x1;
    v3 = v3 + 0x1;
    if (v0 >= v3 || p0.mItems.size() >= v8) {
		v6 = 0;
    } else {
		v6 = 1;
	}
    v4 = 0;
    v5 = p0.mCurItem;
    for (v3 = 0;v3 < p0.mItems.size();v3++) {
		v0 = p0.mItems.get(v3);
		check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/cs;
		v7 = p0.mAdapter.getItemPosition(v0.a);
		if (v7 == -2) {
			p0.mItems.remove(v3);
			v3 = v3 - 1;
			if (v4 == 0) {
				p0.mAdapter.startUpdate(p0);
				v4 = 1;
			}
			p0.mAdapter.destroyItem(p0, v0.b, v0.a);
			if (p0.mCurItem != v0.b) {
				v6 = 1;
			} else {
				v5 = Math.max(0, Math.min(p0.mCurItem, v8 - 1));
				v6 = 1;
			}
		} else if (v7 != -1) {
			if (v0.b != v7) {
				if (v0.b == p0.mCurItem) {
					v5 = v7;
				}
				v0.b = v7;
				v6 = 1;
			}
		}
		v3++;
    }
    if (v4 != 0) {
		p0.mAdapter.finishUpdate(p0);
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems;
    v3 = Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->COMPARATOR;
    Ljava/util/Collections.sort(v0, v3);
    if (v6 != 0) {
		v3 = v2;
		while (v3 < p0.getChildCount()) {
			v0 = p0.getChildAt(v3).getLayoutParams();
			check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/ct;
			v6 = v0.a;
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
